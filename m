Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A20A34D3B1
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762220994; cv=none; b=ehjvH0Gx6Qt/nWHbJq9ikb5EQr5uzTvy7/DOIoFZ8Sa9cMps19jP+A7X7UF8Ju/HCDRmf60k+wCVvgkw4i88TKKib8pMhT6sdaqzKy743dPRqZRYfuWz4VXo4MAB4BSAdLsUkwLy/+C1SUwFSxbvQPXKVO1YyW3l586MIRBYH+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762220994; c=relaxed/simple;
	bh=0HlIH7aeEVr1f/CoVrKGOdzZ0YNNkhhyaFaLQoqle0A=;
	h=To:Subject:From:Message-Id:Date; b=PhSKwXZ8t5gglUp5tajZLkahemhuEL+PKDtH3862K84n/m+oyO4sJMjemglApyRM48Hl1P4aztVjlwW6sPvoDilhcZ1Qir5g2BE2V8T6BAvoGTbuX1CficvgPpfWA86sv35kyeeE0An9BDOeAHvC+H8T2YvY31aw2hmK6FBuCfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b1/5gdvY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b1/5gdvY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F6BC4CEE7
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762220993;
	bh=0HlIH7aeEVr1f/CoVrKGOdzZ0YNNkhhyaFaLQoqle0A=;
	h=To:Subject:From:Date:From;
	b=b1/5gdvY1f40DzpqXGj4BGuHDNQpLAc2xoKCQI6+k2LgU89wfirp7DEOokGg8ALEB
	 ZM1TwH5hnXmXRorNWa8mrWyUZjxMHl2hXl/mEwtvzBp7rvEkWHtI8bNF1r9o78VISC
	 1J7dXJ3NTQtHevZya+QaEUk/Mp/GVbg27Ujp0Q44J7Tfd/aSueUDFjHYElOtSTyGaF
	 e0BHjVezO2c6sMIC245B9nTgg8C82WjbcbBU4+IKE6vM7NwolOC7WG5tSaHMHZtvtk
	 nRD693TUmI+K4iXRdeHGKS2xu8wPk/zfZ/dLJgbSWzqxEGN9Qkdbh20ggai0Qh/D6x
	 43C8lGs/bNOGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94728CCF9F8
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176222099358.1682.6760303720875646831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64b035e56bb72bf3f1daa7b456a534772478de5b36d9aa190f8665bae146e38d
Date: Tue, 04 Nov 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762220993
