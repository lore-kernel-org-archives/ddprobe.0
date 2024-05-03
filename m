Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52FFD2C69D
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 20:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714769543; cv=none; b=gSRafRuZ2VGMZECJvjaEe76DKXXSEV+eYm7xpNrmDPIdZr+lCALiImDjlYaa+T4pmTSEdL7joolktnF6k5h6JwnEP7AGM/nbQdcrnM6nP4tvoY7xjow280Ysm1J9cQm6pYUCVwlgAI7zr9Fp6/aettlPfRor9AbTf5XUbLJGtXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714769543; c=relaxed/simple;
	bh=1kEGUNNA9rAJQYICGiuAp+p92C93wAFGRcP6B82KwJ4=;
	h=To:Subject:From:Message-Id:Date; b=JsUglfAQa4EhqPW4OhYpei6nnca/cOwY8w2Hn5IG2os5HMQ8LuTYBaNLssEQyeESfoXBSo2zSG1VywmOqVrfqKhyORWV0E3dzXHoGedcL7+HAz53BehNsPSizL8XOzXuxbo+ySK40oOTulPx7VERioo8AlKTQmIrfbqLOFyV5nk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=em9B81Np; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="em9B81Np"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEF25C116B1
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 20:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714769542;
	bh=1kEGUNNA9rAJQYICGiuAp+p92C93wAFGRcP6B82KwJ4=;
	h=To:Subject:From:Date:From;
	b=em9B81Np1gr9mTdVTYtjT52L2zCdnIfGQCL27KUVLZdm9f51u7aAfPlKrrZtzrz5g
	 huvHFHh57N/VoilxmnoN13EaIDc48AI/yR2QSjh0I/6K0UzOzzrG/LM2StuqO4vYK1
	 QabvHqQw9+oTeAS7QPvmUYnGQzRSWj7y/rDpR1i+w8L+LKOYhe5SnFqazpI7n/Hwz/
	 v1mZ1Hw2mlAAFXB6EKa7xHD6tMewHwqeYay0GoF9HIG8GURAtSnvdTKoQ54rAQBedB
	 baWB3oVl4nVnNok9jlcUMYnoG2hgh9CK17ZERDSBVq5Y/FRhA79Blj2TKQTbktaKkL
	 zJVgKbSE0IhXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD393C4345F
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 20:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171476954276.12611.8741291036566930536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7532e1c9edd9c213bd482d3f8ff395f411fde37211c793f84a7c748d031524fd
Date: Fri, 03 May 2024 20:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714769542
