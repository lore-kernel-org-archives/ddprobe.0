Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20F217263B
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 00:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768437234; cv=none; b=mMoGGcOMiNIM20PTMXfHGn6jFNjkpEMpIScSunYyolophlZyiSeR0kpFiHSNpdfoCoTt4zWxzOCKEPqA3lQi6xkNwUi4hky2Q6NEquUOIH5kG2PURF9SsQyaBOK2489HcSHP/AH590OqdNztndhXx78N7/1DCtWAHon8hFDFBy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768437234; c=relaxed/simple;
	bh=pJpzzvE01uDey5OJShAI+xcUzC0mva+ZhZ4bmgIUWOs=;
	h=To:Subject:From:Message-Id:Date; b=YLr96QZPjAqiEzutbuDQsnyImlQqLKEoAxuFHAeVc7TZzSFbrhjjrofK+Mf4GujircEWrEaLX7h9398ffzzaJY7MHXBfyHsBTiIC9D2Ll3qxZBxfp5JEumIaqxcNOpdwdHiXVtpGGVWeH1XeDkl8UY09PyzZ5NcxjdSj+/0UV9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n6b2G/vU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n6b2G/vU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8456C16AAE
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 00:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768437233;
	bh=pJpzzvE01uDey5OJShAI+xcUzC0mva+ZhZ4bmgIUWOs=;
	h=To:Subject:From:Date:From;
	b=n6b2G/vU0E6hGa3jXkMyZL2cJWS73CSKai0YblphlnirA5PJLX6gPPsIEca0Amu4D
	 KN/2cGUEe6ULTp3c5Rbf4PIsQqtN5YW7oo/WWi5rG4XacAtscPO/AM/s2Ekrotbskh
	 Qav11vlPzv63lFmDyMZUW+HN1jWKAHphLFPbD1rV6Ez0OeuVJW78K6m8WuPL6BGRQq
	 IAk8L8uR/0Y173VPtI3WdtZbeGQEuSq8iXIeMfUplGCCSGf21awEKcaChIVyYImODM
	 r62gG1xebGhARx3EtwTxaSemns0XO9o8kDg+4zvrwIV9Al05vzIfV7CyD9ge8RjoJh
	 Ti6JT1dmFrHew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911A5D3CC88
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 00:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176843723358.17233.6410332059986626590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: daa97bb0bc619d7ab9302745f46347767f5f8012102909b16b924385873d1575
Date: Thu, 15 Jan 2026 00:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768437233
