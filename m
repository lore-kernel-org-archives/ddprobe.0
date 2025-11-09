Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B68B2E401
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762690194; cv=none; b=N5gaugMEt1NNvIrYTeuYzBE9m2wlU/+IYwvtgAEsj6+LUk1bDNfhUKdxPE8DlHVAYgLW9V1Rfql3Cc0mlRV8EW6O1ga4XM4i+Qt1KrWCyYOgswCkf5pP94wdT86ly7WPJ9pjoUSxZi67Rq95Z7TPxpiwKDd8B3JjNJ6cTBSDlNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762690194; c=relaxed/simple;
	bh=aMtq2V6JcMWa71a7pKSVC+k70a9XO5PCY7kk/4lofhY=;
	h=To:Subject:From:Message-Id:Date; b=beyCBkJB8okN0uDbCdbgG8yMelihZFADAcDO5NYqeIhGraAULPVGFkcgw7ovg4W9wPRF89Fp6gleGnG7dysOlORSKrc129cDwN00349PrLjqfH9HASHifbM6KiZuN4opHX37EglO+ncBrMocq4pOc0W/jVGXGYGSFjhoC2wUhe0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bczg8Xta; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bczg8Xta"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99122C4CEF8
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762690193;
	bh=aMtq2V6JcMWa71a7pKSVC+k70a9XO5PCY7kk/4lofhY=;
	h=To:Subject:From:Date:From;
	b=Bczg8XtaP39GzObAUCFBJ0lB/yN3DmNuQN/MX6JeUw+bkrfgJn6KNHDPBITUyDyud
	 IOITzRjRX3AxuoCZRu3ARd4r0XnCUiaNGh0SjktJOnvs6Ytw7XCeP1Q+NfQY7HTtad
	 HpAiaMhA2zeKosqWRECZG1j9soPp32zezxkm0hoP8JcA+x2FZDoHStRNCGFfT977+o
	 0LrYh8ay5zXnIiHkVLlkjCj1iTAfo9MEuCkrEPKYXdKRDoYbpbnHWkQoF4Zkosts38
	 o7/fgs1fhF/ob0wcpscWzvtl/EaufobAJI3hYr+/pNn205qiBOttIqAiuSv/FMed+p
	 t2tnbP9VffseQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEE7CCFA13
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176269019357.10260.8444934778605652222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca00de4e6f82ac8a72cb3fa5e979927280ba6c8dc52acf54b3530d834abcdfc3
Date: Sun, 09 Nov 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762690193
