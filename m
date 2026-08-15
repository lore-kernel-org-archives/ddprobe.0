Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2072E31F9A5
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 17:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786813834; cv=none; b=I/ryxWYg+E+VAWwSFvhiPPhXxZAvE7PMi+LjKZuOssFQMVN9hcsUbtBjJZheBtEkjiKxpf3j9n1wjvn8zkfGNBcpGmsKdmXCk1DqmPlBHuPzfvSBQrhOxvf4Be/VuXV65SmAyTOAi6Dl33lMboj+uCWHPMF1Vz9vDN1VaKDPoLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786813834; c=relaxed/simple;
	bh=DCoA1j6fB7tj5+wvqlp6MKy1zQxXOYVR8nX9RL26NkI=;
	h=To:Subject:From:Message-Id:Date; b=oOOUldFCePrWHLjMjH8zmWF+390ul9pT/SsjKHh7Th7c762dTlIHg25E3VRAg4SAhrEDWFJ/7TJei/ZWQbMg7S43eAnPEFv6WrLLhzKIcobI6g08vK8MZ5VXEhFpGHW0H9Wd11maCFONGsrOlVdCs04EUjAtJ9/K6JGK3MPSr1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gw295YeE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gw295YeE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEC5EC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786813833;
	bh=DCoA1j6fB7tj5+wvqlp6MKy1zQxXOYVR8nX9RL26NkI=;
	h=To:Subject:From:Date:From;
	b=Gw295YeEINvhJQI8LZfi8qEdep/wD0ZlfAm451PNJbqtHrC5QQOhNQnwxPhZ3Rj5H
	 izWBwIylkuCRi5ECBvjBTGSqJoBgmNWy+7HgCqK27Be3Yl+VHk6qmoyyTrPM7weiTL
	 dsa+KxvlAK5UEOp6pQq0hSKJg2xSmQpsfht9WdJjmtDhmtjqSSz5MMj3EUsY+Q16gY
	 88FHpYVekbXeSLWd7rbfUMF9/lEtECf/7BWz1kprc651giAB3OfMkAXj+/2+yjacy2
	 s6Gdq+bsLu9gLBDBo2iaPlSo9gJ57htmsyNQ8uHHyHwiF5LB3idIupTPOmnje7Dtu2
	 hksCecvdy9Pog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB93EC5CFDB
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178681383369.11335.2094321175443107463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10b6fbad34c7718cb01e626327ed9e20358e96e14961feb47966c3a9f452f403
Date: Sat, 15 Aug 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786813833
