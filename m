Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55C611A2630
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750720196; cv=none; b=QTTc/fXxtTCpL3NTogZImQo16LYgARrDY3sbMSIUdB5uAJRO4DLC6R3CXE2MhUxxdTDSuvmJqivDP8ZAY63c0Iy5o+laisWgcjWEvnFRhh77UAM4/u4xLBdOMhy9jaOjhpzrJiqNoy86Lxt7C6yPVfG8Z/iIUMcyvf0yfmHyYy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750720196; c=relaxed/simple;
	bh=BaB1tc47/DCb/1rXST2CQhz39XnNzqpWpboovvFeaV0=;
	h=To:Subject:From:Message-Id:Date; b=WZSNP+UXp0P3GMTsSklIeCfLyihVZI2Enit9mTLQSoTxReKWyrs7Nlf8iVOtIJWJHHSxQAlMvwWvznxtnP77lyfiRUD68QCBYbD35TBpFLAnjbl1ynk4UZvdvciVlbtS/MtDSYaqdvteKbk/F7Kh+jO/2MOF9UYTtaTqGLMNOt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aru6EOqX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aru6EOqX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E96C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750720193;
	bh=BaB1tc47/DCb/1rXST2CQhz39XnNzqpWpboovvFeaV0=;
	h=To:Subject:From:Date:From;
	b=aru6EOqXi/bYeqxUP3DZJ7YP7NPaA+ip+Z/tLWJbuciZf3WwOD+8Jz7Hi+yPjyPVx
	 i6EEQmSaOdq14g2bevsRLA5raQ44auPDivkAwlw4BYDA8gsPFYevIVa3U+g6a/3lb4
	 zs643QIsIWNrTsS0v6ltIuqHYRj9kqbTewi8HbQNmxGxWYJr0h5vKRrSdyoM0+x0JJ
	 CJxfa7LpSB3Nes6GYmnbz/EEokdodIsK64JYocVxagudA9At2T0LKVDB4ddIYoRxad
	 r/RzwTBuxeubVKL2lNf8k1DqjqZKzdsMhkqR7K/x5VaAqm3XGAxdR2FAbiVpg4oh2b
	 UTqIdPsl3OWKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94311C77B7C
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175072019357.12684.6055166066181558498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 549afa6076e8b8d9eafe3e60230d9d5b8d995eabdd2e028d7cfea680b9357e54
Date: Mon, 23 Jun 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750720193
