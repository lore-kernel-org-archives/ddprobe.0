Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 533075B206
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 23:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791761434; cv=none; b=PPdP+5yxTxAXGdDg+rMWR8jDLAmAMdF/MAYUIDDKt/TTo1MmoCIRj4KUwLM0WVV2MRSu6/bVkzFnPzHX1KD5mzhr/N/Jdkm0+My59WMEdM/UcvmnkDdrvnWkhyFco+rhkH78qrh51KtW1aq7FCGIxWR9VhThgFzqUTaLSECJ3io=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791761434; c=relaxed/simple;
	bh=G9hXVT6qk+2r+JOcUTHBC25mUKSYJ8tfwZCX4A6FjAg=;
	h=To:Subject:From:Message-Id:Date; b=UwqZZtWPKuQuV4c/rwRc+sYwUtIn1dMyS0QctUuSIyC32xOaTizmCjPdVfiU25mtpyNuZsuAtMiZQ0pn5ALe++Qbz1ZS09wdm0bSkk7yevSmUBVW2rooHSJcaT/AG+HUA5H7kYKikPRLW9syQ1yV0nVk5SgDNCyciCKksG45MJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z2Z1byrl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z2Z1byrl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D383BC2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791761433;
	bh=G9hXVT6qk+2r+JOcUTHBC25mUKSYJ8tfwZCX4A6FjAg=;
	h=To:Subject:From:Date:From;
	b=Z2Z1byrlLKNP3/JTOavDLevlUr3yRQpSIr5HuZk7J/yA/1HCFc7yF2E0O5dNzSgb1
	 QJ75+gOH8N2v+/IMNxPCAf2hq/PcjWU+Tji5CHyWoGlgISg4RoxEoHZP1D+g6P7WLr
	 iwk6KrQ1VoioLWULwduaTcH8qXKaswuad4Yy9kny2LmuViN2TZFqZif7dlw8DQuJRt
	 ArRttE7ACPX9mIeRsi1RcsuLZzjhWgLXiFhfzy8XlstVOWvuApfS4WaIOTIKxIvSgj
	 GUsG8Mh7Boh0UZPm0ytyBwoLzTevemsnt2KX1eVjpweiJDlgTsADHK5rrFAnypLgbN
	 Dpb1JlJ760yag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD74CA9ECF
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179176143368.1774.120303870111062933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f636e24b786a59a0ef8a88e877e585e0eb62365c4ff1cd8c35d570ad93b46eee
Date: Sun, 11 Oct 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791761433
