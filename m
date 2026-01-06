Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1811B330320
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 10:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767695034; cv=none; b=Iika6tUCQ1X9K/Qv1j34q+LXqmddqBJKLaUFb+5rUlzRln7zw4Cu+KTfuCS3VvNr+VPrOFB+PoLM/fWk2jzJOrJPMJ23JjtQfSe9+YBlGJADd582phF0hhqG9FtqQbEc7I/7mDPcV4cWBsqqkOoZx/UquWXsf5pxgrPiIRo3ngk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767695034; c=relaxed/simple;
	bh=ax21OitH8D85h4lXRBdb9FprSe0nbxvM9MiiZCna1nE=;
	h=To:Subject:From:Message-Id:Date; b=kGDElRqI7ypjqNLT3avApHjWozdiePn11cRLzA5Yk248R/grSjSwRfPf3axXMC2nxys/zTBRPKa1tHwycu2a7RUCAly+qRcpSXzzldwQHVZ/yGHJSwdrTneEl0OTUfJ21Nv768HUAaPCBg9GRQ00eNq9oGSvjAyWoaQSmlXlDJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AvQ8QQzg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AvQ8QQzg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BEFCC116C6
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 10:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767695033;
	bh=ax21OitH8D85h4lXRBdb9FprSe0nbxvM9MiiZCna1nE=;
	h=To:Subject:From:Date:From;
	b=AvQ8QQzg39ezRw2p1yDFypWazSh/HcoSiS+hHqVDVMDPes0Kb9lB8XHQL1LPk2Ou5
	 pR9503tbRTuVMgliLdzjhVknvX9jMgH11agw/+MpKj6ePkChkiJXcBxRlBSckBK2wQ
	 5BpX61zlYfIlyBOqyuQ+EvSxTRHFe0NCe9ry1Msf5fgyop27b07xw5MHmN79R9//LB
	 y3i9zTeCK33jZo6ESUeNS3DoU3yWvKAhDinaCMTNxSyGxFgnIefkufT0OZyOI2I+qg
	 bINaEmxJu0YmnaMd5XCzqUq58EaFzjeSdk/+tL1S86UuaI4VkBS7Vvis3MtWOzaC0w
	 G0kFdJI0xgf8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC77C47BDF
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 10:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176769503357.26040.7784060307317284469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18bc2ac635f4a27d53dba1014755b7b9a4bb50f3071be6547f0d6343a8e9b810
Date: Tue, 06 Jan 2026 10:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767695033
