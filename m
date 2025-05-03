Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C9A2CA52
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746249594; cv=none; b=ascPj9VhKdbuq+ufor01aG8XGyAm1ddTGvIc4l8g4utISE1IDeCENI8613M+nCfmSEtwpGQ1DRyrCwwgr3YSWU1xCBCGRnX97e4CuanSOuTkJecVAcYDhelhfQDm7JR8wEBiGXCuwkwleaGQfQJvczgAJE9CZ4OK4oW3GoV5obw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746249594; c=relaxed/simple;
	bh=8Q4//MBSLJYGNmqNzrVj3Bz+FJ/wvY4CUn+DQYj8VUM=;
	h=To:Subject:From:Message-Id:Date; b=fFy1TCF4pWjSafPQFq68+hECmI6Y6cG7ijJoNm7sK76mQhGk9fsHAP2xiX/EZRsGYDf8BvdS0yrPeElmz8eJ59sTTcBPnGIwmfhCwmnXiqB3PjvVxqmgIv0DCMJXbh+97Qtr37TRVjvqT6AHWzb/R45MmQfex8lVk9nKBa7ZK4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gJ8eAvnV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gJ8eAvnV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F37C4CEEB
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746249593;
	bh=8Q4//MBSLJYGNmqNzrVj3Bz+FJ/wvY4CUn+DQYj8VUM=;
	h=To:Subject:From:Date:From;
	b=gJ8eAvnVERUlOXNUmgBdAQqzV0k67P6vURaLWEGXOs/hAfrkWyq23c2XLk3KAi7oH
	 hniTWOB7HjhPt9dH8KwToDh4/v4eYs8BYBXTPAzouTMHc1pyVO7AVtWRextaNlyFFF
	 jvoW2nDg9IFZjr/QKZOXYXh0aFGSZ9Av53qNbAPqhN86z7C8/VPKlct+ifN1oSsN2V
	 RdzN5+PHb0dSNav8sVrMgYmSRLYBJPhGfZBIjH1k4zPghFnSTo3nzLu4L32YObHncf
	 +SZzaFB8+xN/Canr1hXgXpjrKs0suV6eHVEyYoZhuxc/rSUg/gk3EwdK/gwJ/O+9y8
	 UTtoTAEXkGmIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92180C369D9
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174624959357.27514.17673075360491510775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bffdbfa4cf137afeb559f518a0558fe80e44f74976eda5ae6bc80d59f18628d
Date: Sat, 03 May 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746249593
