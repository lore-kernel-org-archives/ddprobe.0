Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 207807482
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750514994; cv=none; b=bDPNT7kqGseNvpM/Vd7/CwtpFULwk3LYxQP82uZpVG8Q/qBq572MzB1zzIGO4VTMo82FERxMGznlGnF3fSvUDfb2+S41x0RA3Dyj/9q+pxru7tKB89KiurarOUCMinqO2YopHwXlTrKWSPEcrkXbeA9WmhrzuIdWn4doRms4GPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750514994; c=relaxed/simple;
	bh=FsiWXYCYwNkten+eDOWct1r4I9q+xFlqfVgOgLTuVx8=;
	h=To:Subject:From:Message-Id:Date; b=VinocAFYOW/WQqW8Ft9jRVzBdNtD8On354oU3Gsh8DRj0JS6M9f5QkyP2/pyGJIN2Gr1RdECFiI9j576bs1qfOuZHk2JMal655CZfgV2q6CY5HQo8gQ4tWgFMvDttCcbE0mFKi3jNDic7zFwSnQKkpqPo1ANF1O3KpU248jxim0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pHApKwC5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pHApKwC5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A36EFC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750514993;
	bh=FsiWXYCYwNkten+eDOWct1r4I9q+xFlqfVgOgLTuVx8=;
	h=To:Subject:From:Date:From;
	b=pHApKwC5NiV8S1ijCZni96O1ZTqxLHlws7JcAnKxgRmG801i8gm0aUVf7jBr2FCdM
	 zhzY7aY8oSXo+N4aCBLeLH8tYNVBpnbba8AjHStVeHfxJ6aGW/tsR+j2TwtdXvGWLT
	 3uHmZsjC6mpjEwdPAIHP7K/ybPG1TAL1q6MuAE7r8PxGi+We6bli33h2qTIs/uMoVB
	 aMyAefNqWQ5YPllMdlqsHN6iKEODRG0vK2PpNd1XbeZWWk9dbdoF/C8N1ckuSMZm9n
	 jpGJA5qlhC/q6AQsRWrJWSgkpG+jH2Ba/72kju6qropAEf3kVbUuQKxmVpCMizYAiz
	 NW6gggsyRbHkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D1DC71157
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175051499357.26480.15923445684667949675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0db1c9c45e6e7f2ec65cf5d350fc2c9129aa017e4d7a9e01ab57f141e3acaab
Date: Sat, 21 Jun 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750514993
