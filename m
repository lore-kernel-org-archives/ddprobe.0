Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A43B1EF09B
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753905594; cv=none; b=I7ax5eHxN674YpPWMFmUZtM9Z1OJpm+03vUMW/3nKuyDQlV+HWQJUtAxusuONCc3eb1XGMgPHY1rsBUpDJN5difIsXZPH0PWN0W7xlvmFGpKmKSeaskevCeNdHsvcemWDseZ23jfAzG8jwtjKilUuw8clvsMcPu+GYe/Feqdb5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753905594; c=relaxed/simple;
	bh=jWqXnQgef2RMvMwpPDYQus1K6UfHybYYHnPzgELursU=;
	h=To:Subject:From:Message-Id:Date; b=gLF5Yjk4YerOB5kZ70NDw5Z+GsqO9g0ck+Pa5XEoc6nhrrYEVWl3+f0VLtc/elXsKe1TYZdlC09ILbNFSWwdNsoxoluTFu9KaGn442OkEvK5zaSVwal9uopLogh1FPhb2XN0fmWj2qDFcaYMHfiKh9RooTSDefDFnyWbQCzwID0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PlB9hCL/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PlB9hCL/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5159C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753905593;
	bh=jWqXnQgef2RMvMwpPDYQus1K6UfHybYYHnPzgELursU=;
	h=To:Subject:From:Date:From;
	b=PlB9hCL/0HXPwqLAeJW7ggtbKHbclAQ65b17p9wO2iaQ2E1ki6l1Bxiq26XUUV1xW
	 P8HlGc5jZcpH+J05H2jFewUFM3Hy6Bog5HkVIw2awX/Kj6SOO3LQF3ljAvdv5/RRNF
	 bgwsoWvbm6f/aw28Z6h6BSHwmzqd2xWjlk8OOTw+t+WZjmW8tqU6jae+Ibu3vaPUpX
	 D33jYm8xBXfC+h2HRXL0iRGdDh6K9FTis/jY1NdOX68LP9uFGHXjMMptSBjSBh2/cX
	 3PiGXcZ4EdWzqNsbJ/2JQVyxuaRaQjy47ayp2LkH1o/mwAVnQR8wVFmxjVVFv7ZlQ/
	 /P7v/DP9Xp0yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92537C87FCB
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175390559359.16128.3154511333818634588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a52a7b41d98f35868483b45bddf3da2d677160312d420f43cbc5b8709ba7909
Date: Wed, 30 Jul 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753905593
