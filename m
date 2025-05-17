Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 423351E008B
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747504195; cv=none; b=XJdNqmIQCJbwn1ekG6QqMF74GiHwGDh9GJ/zGhr96AVGh1YEzOHrU7vY+Y8E6qeISCB0WGq3jeWAwcUnOCoUgjKjzcgbJsAuwsyl/evTc0txqW/2931wMfleoBXY8FvA2qENcebjlbSTPqHazE7lmSusn4Pbhi0CAAQn6/t6R/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747504195; c=relaxed/simple;
	bh=YyhnuB3uh2SA4uQYlfIASk3ZA/z5Po7P24QemqLZICU=;
	h=To:Subject:From:Message-Id:Date; b=rd11erFk8al2Y0y/XLW/BdqgV+5DoCTG42CnoVtlgoChgrrUQvZrpIC0pqQ/8fXFkGOYOjz0N7y0R0m+WrosYERyKxgHNHWWNpQQ5pOTgqx5yPOv2AJPGAV+nf6tMnZ5CyorBoRtgzUFrM91lsyR9WVmY1LNftcLt6MH4DWbqLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MTwD2kjL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MTwD2kjL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAD89C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747504193;
	bh=YyhnuB3uh2SA4uQYlfIASk3ZA/z5Po7P24QemqLZICU=;
	h=To:Subject:From:Date:From;
	b=MTwD2kjLKI7jGKrgSo1HLP4pfbcONwZ/VF0YzbuQE1/vAVYNREmqLJP5g36U4yU4d
	 hSgMfdk9cD/Lh5058wZXEI8WmEENqZ0ytJxSlv4LRZOOOtgjAqf7iNkY4Av36gSgAa
	 hK69HvcZ0FOXVit0I8Op4ml/QqiCXziTvnBXA12FnY4vDSdkIhFb/dGeC/iEI4a/Vz
	 xOkGM8ckpmbX18qZVRkvyFavmKfJW62Gjkxvb6DihGNGXMAAv1OUrDBhKIeAd8PUgS
	 m1kUWhyNLjZ0vQhPjpzK4OHP/e4LiSxcBf5Uit1Ewu3a9SKmWWoVO4I6lXbpot2wL9
	 Uqvzza4mnevrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9426BC2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174750419357.4366.12724186416815655499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75a333be8e94d7e5facf72b7ac2075f60d5c77bde051da360dc25858d88922c9
Date: Sat, 17 May 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747504193
