Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B8201F8691
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 09:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765099974; cv=none; b=Ptt+WQRoQQux6RVrONG3npTlIHFQKPiI4HWQ8PFb1QMqJB/hf/Gj+PmRaJXCJMn4xEC3Mt7kL/7IaC/g/HVWmwIBgGuW8c7KuIEkktodFr6cGByOdMubnsIKaauGijlwr8JPkahih05ejxXI4+7B5tcC2/N4OLTfrzLntOkKPWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765099974; c=relaxed/simple;
	bh=R4qZZkbOmnQmJICBOzsnagcCEPBWd1Bkhq0MmNPQpyM=;
	h=To:Subject:From:Message-Id:Date; b=NdrxS0t+OeIrb1ePmZvjKwO7Z5zbHpIDabnmQSl+hRkNSzjHf5aGLpruCBt0sjxLKW492gApZeLOmV3tvG3SFLx0wjl2a4B06xGfaBcOUbN6R94AlMz5gTm4iD6NIeM/URor8Bauseq/a/dkiK73bl7zZbL7TFVr/9dt70QaPy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q5dWFCgx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q5dWFCgx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADB7CC4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 09:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765099973;
	bh=R4qZZkbOmnQmJICBOzsnagcCEPBWd1Bkhq0MmNPQpyM=;
	h=To:Subject:From:Date:From;
	b=Q5dWFCgxTXVOMK3uz5ltnIEkOFF/oy5WtQo+RulZTBiMNiJf6Ipd+Xe8vj00FI5eD
	 +zVQaqi8D+PNKR17As10DNzwMNhjbKwjZpxoQQdEcLnGPV3KOVgEj4BFmAENZr2r1m
	 fWubnC+3dZ9S0j1sLy0ZRGjQZzCMIozxmEcM1oeUegzh7g0xKbOXHES8hzK1MMuV6Z
	 GPevbB4i85XNS4vYfWgrG3c5suEqZ2oHhYFA6RO6OWRErNScwBmJowQW8Sz10U+XqV
	 qmTpMDwYPC0fnMejLZuJVFRTGQL2DJYaHckntYzT6sGGCakm/NVr4duf/xTfEGD6Ot
	 h4rD9DEysbL4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9620DD1CDC6
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 09:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176509997359.27759.13956673223421493003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb27143ee26a2e94219948eee4d6565790cb2996ad886882552666eccbfdaead
Date: Sun, 07 Dec 2025 09:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765099973
