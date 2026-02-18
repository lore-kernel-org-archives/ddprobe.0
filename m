Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24FE71E7C2E
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 00:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771376094; cv=none; b=YUXaWcvJ7XO/O2oiO6roQkBgCpOJbGjR/0XvhwQFRLUGGiSLtjlFP8Cy/Xr72vsyW+SJ54kRLVsorrgcdbe8ZNLlzIakDxE1ssnsEwu5rFjpJX4ZgepcemZSPtH/ekdyptVQ7ZlSk9lpUBn//filWRlPihYl5xh4Jz4LK7XLweI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771376094; c=relaxed/simple;
	bh=XD+a7FTirGtFCoNB927wX6U00yOHYqvZ4gG0dse2G7E=;
	h=To:Subject:From:Message-Id:Date; b=iH2759fYyb3kbumco/VbbqV078uShDwjgAp5XIOb4khSbQ6kNQA/c2uwK3WIIDAeOlN+ut8E4GGz68EXTOqcGWfANTit9iVk4dPcVuf1a7qZXQJweXQ9ToYfExx7ITbnwu1Z4M5Pa2R4WyWiLx1usL0d04OnOedjWHfSHehx1L8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qnfYf4fO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qnfYf4fO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C37DDC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 00:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771376093;
	bh=XD+a7FTirGtFCoNB927wX6U00yOHYqvZ4gG0dse2G7E=;
	h=To:Subject:From:Date:From;
	b=qnfYf4fONkyApkNfERy8XCa4kaWieKXuoJBy1HqAExL8wtCtqkSU3LDVTt99gmHET
	 MZ4OfvKzrJByurnX0Zi7NvqSDQU1jzI902tbmq8lP8ppPJZgMQijdS1EJKMHr7TYMl
	 SLFBSh/1X11bV8gIkhYxrz+RtKBZs/xO6WS7f3OJV3b6uHkNjufycvoE3Ql81QBeD+
	 lXD/hThaA5ya35lQgsT/3H1CSEbRsIMSVYSP1vDmBRNu7WR7KkBt1SUCqCTI0L074W
	 ythUGEP03/z50x3P1EEhuiK8a7vp4neauqVw0rSgRUsRmyHKkTaiypdVHT0SO0ekPM
	 DzUjkvkY8Ta1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A899EE9A03B
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 00:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177137609362.19739.8396494284200820387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7e4bfcd7c65377c805a2480e9227f9335922f6db802a8b251e977c0d2227943
Date: Wed, 18 Feb 2026 00:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771376093
