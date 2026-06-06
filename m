Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B20326ED3C
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 20:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780776274; cv=none; b=Uzd2wTUIRwujKXPd5/q1CTtGUuVN7IyDDZdrKTfl+/JBjt1Z0KVWCtUnxqwLdo7CSVqrTLlwnX6USrqN8IfSlA4ddyoghd4SVWljNqyiufd317ZCwOVuxqpwGUUBtacnpxTVlLi3+pPnSBQIUc0klLVuD4dDuvDB8+EyS0KYw3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780776274; c=relaxed/simple;
	bh=PeWwmlyAYm/cUUpsc8zNDbljLNjtZH7IsjqO5kdRwb8=;
	h=To:Subject:From:Message-Id:Date; b=dhS7z6l1/v+Os6bZRULvCSoqidEqUqijyos5/s63USsZdoK1oOC42UYCM2kN48FXVD5Ge4qS7Acv3vp7ADNCGZsqOFVNmqnOEh5trw7k/YnUrJTjMnNQFFbHfhIqV3aqm61c/EUKPEOfO6uCcIO54jBtELLreQzeq8cTAYS01Eo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vRKPdB1K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vRKPdB1K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C708BC2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 20:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780776273;
	bh=PeWwmlyAYm/cUUpsc8zNDbljLNjtZH7IsjqO5kdRwb8=;
	h=To:Subject:From:Date:From;
	b=vRKPdB1KalbOQwX7bK2J57K3JO1FgjZbU3Xe9RVhhyNNYZAGd/4cv+VBv2vzav9a7
	 wEjrhxVylEEfbfM6tZg8i8dWPbC2QsH/JyNwP6SKa2RwK2KxkOhlLBpLPjqgEB3MsJ
	 e9tNOOIikJTa3qSNP587tPDMI5lPXl/mrdbmBDaKaLCxb/UpFN8tfWkJelsdpMLsdT
	 sxx9U6KZ37qzBZQUpFONeH/VeDQo106nO/ZbCLc7LX4DRKp+23ltsGUXCZuworORZl
	 iV+grlGgwUhTprgZST+Edqlftsn67J5UH4Vf39UA9unSAwuByPjOz0pPhLGRsi5C6e
	 qeR/8kro76qdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB11CD8C85
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 20:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178077627368.13815.4160273384587952582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbdc6e84abfa796f6e971a996d6bc69d5c69d1678f6a8e5ef47e231e20300fe2
Date: Sat, 06 Jun 2026 20:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780776273
