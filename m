Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F55319DF51
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 15:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717686443; cv=none; b=NhqcWP26wbmbeEc3xN/2pBOEJsQBP8S9PtqyX/UWmplbWgAJhM5K4ieuB4/gjVYXAiJR8nO5x9uDj7qy1uDJ/ekARXzPGL8oc0ZGIoDso2M+B+ScUazIK5CwTJ03Air9u+XE4ujo3XksG6Y8S5xCVbdBVXtdiW/qwyIaaHu+h1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717686443; c=relaxed/simple;
	bh=qo7V9sxaDP+yRwIcKLaQfZnz/gi4aVcdjL1txumyUOQ=;
	h=To:Subject:From:Message-Id:Date; b=ATn37Li3XfknHMW3en0ysIJseQLvrxylDKVUfQsGndZf+hJ69DYjUN8I+2ia/PvWiw6IjtvMRtmrh9AmFAQqQoKwowWygyRrjGkHeTTFVLAN+AWUF04bOBKe04GUJepKrcGYJiUslmMDE0EkKD6Skp8iKLv+KnNmkiBeU/RwCT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lAI5ED3t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lAI5ED3t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2B84C2BD10
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 15:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717686442;
	bh=qo7V9sxaDP+yRwIcKLaQfZnz/gi4aVcdjL1txumyUOQ=;
	h=To:Subject:From:Date:From;
	b=lAI5ED3tf9WM1L7NS9aaUMivyn8OxADOElBerG2d2H5JQR/L91VjptGaMOIGSJnxh
	 /maa82M5WTfK9ev9shl88skjyn0F1ooeKpPg2Lun0KdJsDlGtN/G8WeriQS/SKd0X2
	 imbccdCGyomqMUeyWATGQxVLHFdOXl0Wu4bS1QCF0URdYeHuZWVfrHa1YGkT8Qvt+F
	 SpYkN0Xh2Z/ccWpiFYeOUp6GEPqm+g1yrm9ahfNVAjSkd7wSulvSez1Ty+LJO7DaLn
	 cmtvuxHGetpSSfYullYQR81DJF7/ajOkzj1FHnCL/j1inGM0QtUlQlqdnJ5vDKIN2H
	 +eTEqXcnIRaQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1701C25B75
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 15:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171768644284.28716.3597479771126334269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f9686834106d184099455834dab5c0a027d9fe80fd9766febd4ea6ded241296
Date: Thu, 06 Jun 2024 15:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717686442
