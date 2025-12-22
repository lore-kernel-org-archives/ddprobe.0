Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 484842264C7
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 02:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766369034; cv=none; b=crka0UaF/DShc3S06F8g8MIRJ7/BTSlwpPAmpTiJP+GFXsGABQJNKft3TESC0qewEcZT21YszhfIurAQ8AfBZ2ws9J45ksNGcolYiiTsEVm/I52FY26sROJZWFpgbvQY0McGH8w8CzCFj8XH1RdzDkA0CzQKuNI5b+OpCOxBbLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766369034; c=relaxed/simple;
	bh=wRO3vBixCdYfhdHg7/EueZn36/Nr5+kVtZNZWcQfWvk=;
	h=To:Subject:From:Message-Id:Date; b=PSnnyQlxWFzwdKlihLqG5WwNdFEzTjJcKX2g16MMlABQVObyMTU+/X8oI62BoF/KiSb3b7eyQ7IcqVVWOuTmIjAfsiJjolug+bRnZ5deNfPs+8nYuV9GLFb6HL0GcsEDEJ/L48gG4ol5Nj1HDrLTeO6F4AqQ06hnoj7BPEXJU4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SVEFXOYU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SVEFXOYU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5594C116B1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 02:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766369033;
	bh=wRO3vBixCdYfhdHg7/EueZn36/Nr5+kVtZNZWcQfWvk=;
	h=To:Subject:From:Date:From;
	b=SVEFXOYUGvQZzLNstFWLQtpdDpAZ58BKmcP6eS9aXbP/GSB3cAgO0tZN/dPxDEsOX
	 uBuEvvcDx/puNCAH9RWW9oJLrPIjKU+CpHlprC2R/njQnK0BuW9vjEPWyjLy+fIQFV
	 76FxJ6Ul0irEkLeDtWDFm41HHpNVS4VrylqdAjuyb0xu4KkUlwasiMO1jF/xS96dfJ
	 YtMttekeIcacb1Mc5kCrKsorBuqDwAtzckEFlieG6d58W8YGsffPa4vw9vbDf2KH6N
	 z3Q+KurHr4dQUAyzrFAdVvkIHWCbTh3pE3ewcnBhxOhzgVHskgk9ba05/no+bo4krf
	 WnV90xKVxpSNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4BD5D68BD5
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 02:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176636903361.22163.3015276696371819212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b294227b40b3cea61a4d590692383901d596290c22c6adc278c2cb1eae14869
Date: Mon, 22 Dec 2025 02:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766369033
