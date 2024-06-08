Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 423D217BAF
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 10:17:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717841843; cv=none; b=txfhX7SmdI8Hpfz3U6GDO218w631i+xd+RXKju88xvUmo5w3Mkk6nSGlEP6L21MnCmUZ7BGboZAUuabHX+9BiWCTFCBzPvtYEqwEBUnhU2BDKMKHijHqNrvUYZFbOi8QqsWlOHWeLuZxE7R5cQV0Ph6sPzKFK+KiVDaU4hF0YL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717841843; c=relaxed/simple;
	bh=Ku50+OdDbdFd1ZrNjf3S/GqJpVWNkriMUxwbBnDxD34=;
	h=To:Subject:From:Message-Id:Date; b=ext4Zaxk/XtAscXwzCQhxUVuNKSEWFB7aEhF8h+CsFD9OfgUD+BNFj1xa2J67wtU4cEZ4AiONitReLKv1GJ9LIxe2ZmNVL5Av+TOXOa3mhvyCoGxVUT5UdDNlHfYllt4VOXUTdEI6jjH7dJacyko/nMTNUlm2l6MtthG/pZKHMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ULaUgbKR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ULaUgbKR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2E1AC2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 10:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717841842;
	bh=Ku50+OdDbdFd1ZrNjf3S/GqJpVWNkriMUxwbBnDxD34=;
	h=To:Subject:From:Date:From;
	b=ULaUgbKREKo2kd7p/AEL+UlD6UA9PrrS4cXtc129OmETxON/Lzror61hkqG09QfpW
	 Tkxtywvs5GDGGvtHx2uhBnvlS+dhUMAj0hwMYoFn4DmRGsgPlhZyOmUiQPUvRWuIBf
	 sa5Z3KKzyQomI+tEAW/IO8D+lguYENrRInm+dD/jQbHQziaxsl0azLl40lyBEJSQ/i
	 Q6oBVekgITzexi4bVtYmpFRPfrvVTcdRf7Nq7nPiVlZIbqBs6eSh+7A4WqcDOG1oXG
	 Z4S/bz4GhJTSBToBgUO7smx3XnkwSa7RK4jzUzM72WgEmXuRYiWJpj1hIyZF4cUlDB
	 oC2M8jxUMm8kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC6D3C25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 10:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171784184276.8392.1358803249375407510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77ae1d62b49670a5b8c521d3cb75fb7f9023e972a979e4d634146e8894417566
Date: Sat, 08 Jun 2024 10:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717841842
