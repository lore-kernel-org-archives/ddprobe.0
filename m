Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 501B712FF70
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727855154; cv=none; b=XGcj67+beUIgUB5iPnB4XqLQJ9Z1GOzv9Mndysgu94IhQNstCvGAyJ2y7aj5ARnhKeUIcExls5b/d7Y8u0zMp3YyB4m0ogptIwwVnqBEAyej4iR7l56qO/43wRAsBcyi9lJVVpdEMWkON5KGC+F/BahcKnYU7PwX6xEsKSEMr8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727855154; c=relaxed/simple;
	bh=i0m/7fjfIQiHz5OSG3fjLvTqKRodCQ/k3lb860+ekts=;
	h=To:Subject:From:Message-Id:Date; b=lMS/4dmSjhHx+0Umsu/PzHammJP9HfA997tgKKE/PPoGZ2zd8zEY8KaOM91Bkwi2soHWPNMMVQAaS4QF8hqiPHcp2vK2n91KnfTLzUxYaA14op1y9fDtSI2VRRhzZTcw/DwNWiSFUVGkJLMsb0Jd5A26NI5CSRUNA+JgoQ00xzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i0NTpDIe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i0NTpDIe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B625DC4CED0
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727855153;
	bh=i0m/7fjfIQiHz5OSG3fjLvTqKRodCQ/k3lb860+ekts=;
	h=To:Subject:From:Date:From;
	b=i0NTpDIesOOB9HZmXXrq8EtU8zRJeD7eCuWmWJwQ6OQkmQK/tFK8LKCwQwfbzd0Y8
	 rYxl2DuT+ArecM5SDsJ/EKypdlSEpLx2RWcvKloyC9Ivuj5uV4ZsWATMhgN34zdQGe
	 5GaXG0NvM/f8PTwDJChkzCqSwHzeUlx9rvCRzG4GOZdjVEDRjeMbXVBH2ac6sUNfN4
	 htYaEa3xBDysTCEInSl+TMGaAzUatd8VrIu6UYKZGFmnt/fIYOd8hzX/g37o4PGSDL
	 Y8WB1VzMahXodR2R709NruItrJQi0LnMldTODDbbSsj3Iy+1m5QwqAC2R1yq6Ug2Pz
	 kxbaqSkmc0taw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96572CF319D
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172785515360.12733.10692246631962635372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0c0a19a90a7bb57afca88191c5ad1fa4370dc3466527ab68c5b4283e802f043
Date: Wed, 02 Oct 2024 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727855153
