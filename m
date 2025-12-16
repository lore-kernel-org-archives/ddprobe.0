Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2EFC34CFA6
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 08:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765872833; cv=none; b=edyLFhjQx6Fsymv0MCxdXLHHJC2Bg9fL2js+7l4zT0DbWZm7PZrZfLGx+kS+p8Xs4f54OI+ybAY/Yp4cFbPXz65hjaDqOC7amZNoA+nLuqBrrf+h7LqsSX4+RbGXS5EX2+Mjhn1KMk8tRK0cmqesh46uYXgTJB+J3pPMYvmasOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765872833; c=relaxed/simple;
	bh=gZucIvQl6UegoWlE2HPSPjwnqyOb/L1vKY5XE5Q8LPg=;
	h=To:Subject:From:Message-Id:Date; b=bCI69egJ6pfIWvEJ1VKk3Cy0D9o5828AqIpb8ikTnJZkWQeMOYwfaRftp4ajGr7N1w0ql9JEqgXBlXA8GtMcZDBeSeaYp/96KoIBv7skRDARMQa4f54rd0feW0Vxrs9C2gA1SLXkb999Dv/b1DTji6gkXrEkg0nThn0SpiMOKRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lmc2Q9Uu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lmc2Q9Uu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48B1C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 08:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765872833;
	bh=gZucIvQl6UegoWlE2HPSPjwnqyOb/L1vKY5XE5Q8LPg=;
	h=To:Subject:From:Date:From;
	b=Lmc2Q9UuymcAECFnJSaIWAkAMCZ1YHHHdu+3LEnquT6mrkY48fVqx1OfZxHzjBFdy
	 v9cDIlKFb9JAF3/UrI5cjtvG6ds37EFLAu02cz4rJhfNGxqeHtjNt3H/4nIg8L5dUL
	 aB3fxpozUruHHi4tsS5sqlpTRqAVyklgT0vbCnXYaMXiILValzTZukRgHocL5mQ+0q
	 JATrAy7h7NbY6DfGd62vE7MowDA+Ix7c66mn7e3Ge+fLVt2gJRqXTdif//v1LLkTzw
	 x2Qm1PE94eWO+eAj4L28DUp4nSJ1Sfp7p2U2Sbt4f5MuyDXyaqqi0iMMNc2NOtTkoa
	 B0T+OIh55PJZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 938CAD5C0D6
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 08:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176587283359.30951.1360052926098228727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96d0e453a4d1084d31053b598aee68c187ca6deb15c5f8b6c717d8b0eb1e9369
Date: Tue, 16 Dec 2025 08:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765872833
