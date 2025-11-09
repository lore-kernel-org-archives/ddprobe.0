Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34EDE134AB
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762655994; cv=none; b=SjEj7G4ezO6pOh9bEarJIA7bcOt/X4Pxl09phgqudAmfHQ7vphRgkbdwBeDbqrCVQbiauug+lFEjHkSRNCyNp8GIwmr+1xwxKLrRVl0Hdup29JQXc7bPoXoI4hSSnYCxl2AGt9i3oHTUA9d1QbuE1p/0bLvXZ86OwtF8c2lTtTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762655994; c=relaxed/simple;
	bh=tVHzmLv0Fg76Eh/GhaXVlhS6MDVZa1FR2SB3irIKVSU=;
	h=To:Subject:From:Message-Id:Date; b=gDwMEgZDRoIr8oanGWNRTfdVZ6ATGOgDNAKbtjZjwGVtu3OCh3HIktkq6u9y8hwjIACh/ogBmI3lzs0uRXmkcqFaeAerP0RspyGITn6GX6CIAjaEWnpylz8Tb6VelXTUH2FcCzJIHvx2/v1zTw/ZLQp5lqOiDlQa5RlMq1SQYr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cd6/0akH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cd6/0akH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A911CC4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762655993;
	bh=tVHzmLv0Fg76Eh/GhaXVlhS6MDVZa1FR2SB3irIKVSU=;
	h=To:Subject:From:Date:From;
	b=cd6/0akHYInpn9nhzD1A+zy63aBgyog5yZ9z5G+twOQN7MlagGGPu3cTP3ty9mKd4
	 hH8TSUXNHKLyibl4cYZoyya43pw7gY7dVr/APjoaS6cHh4zjr8Pm317HDVyuydC+Sa
	 JF97PP13cPQxViF3AEghJGSwrEtQmMvx1Wd/bE79ybT39kMLd68FLMAQKSrhK7ufj1
	 U3bIdIuv2+5e3MswpWBlr66N7sRnYykCJLYq/iQ4n010MWg6h1yuR4BXoRHgLAyk/p
	 9BLIzes5V6OxLurXImmWOKVLVM72DqxYr6dwbSSo9edHeSCXBn2g2tzGjd8x2CvcxG
	 Y/ln+TB0KPkRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A14BCCFA13
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176265599358.29551.11322782698982030875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3325af622ab335c9624bbb6e8f0422436e4a605dadb9580fcec3ab5480b3186
Date: Sun, 09 Nov 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762655993
