Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 455152D8393
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762981194; cv=none; b=lt8YRsSJRM2WsdwGBPYdcwWQB7ca5TOdOiI6lbeOwdKL2/aZ/td2FbBlr1hk3idqPrH1dm47MQb2qa9xZK7uE40m/ihf28Fgf+ZSAcq2ZNlqHPBmx5XYpPQRQpWh5xI+knWSu2wDM5v34w+JDeeBC/1Gh++nIJfE52V85bpR1t0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762981194; c=relaxed/simple;
	bh=i6988HeijHUBRyrpiZTRxoQLP8Mgyig9SM2KO7HMabg=;
	h=To:Subject:From:Message-Id:Date; b=eT1g4oYUhtADz9NPsP3h9EQF+zn3jx8EQDTg4HImVANo41GVUZq+S+OWnWfBBNbEqm1k5XHpR3lMZP5IPpNYoa3vYenmervgetCiMoyyMPfi16QZkpnRFM+MQI57eT/T3TNn/YYpj6tR3yrcKEYStE9InCOuO9xb0UMZnRQr6ZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mzkkUxni; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mzkkUxni"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBB39C2BCB2
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762981193;
	bh=i6988HeijHUBRyrpiZTRxoQLP8Mgyig9SM2KO7HMabg=;
	h=To:Subject:From:Date:From;
	b=mzkkUxniBXalpeHVH5CcUkVSSjTUeSzLn1iRJbM84GAaODrmiU5xKEmkynNCDhp1G
	 iXxvgNPt2A5JZ3eFi8UKckL+WpvTDoZ5/hoJwyJC5F3w7h7ro4hIzS74wS+Iu+Il+5
	 1kKszKHheHvATlttioPLMnoxt2azbScTUrtwdhFYOkbQBgH3/KghySn5Y2hiXJfM80
	 WiMv1J7AvSjV1InM8NyUDFWA1z75VATZIHB1vDuWSNUqyj6aCGNsAXA87/ZA3zaDnd
	 uz4/x2Ac+A98VMqz52Sd9WRukXF+sv0Y9x1CxJMzwVP2jiL7ezEGmH17v50al1ORxV
	 yEPtPVUCFZFbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97235CD4847
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176298119358.15038.9045853978493164242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52f7de83ef3815723a47f04ecd80a597f0a1fcb89ce4d93e10b2a89c9435a517
Date: Wed, 12 Nov 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762981193
