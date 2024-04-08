Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E75901CD21
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 14:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712586497; cv=none; b=ONbvyW9dKVtHuYmv2kib6BI5fM8xuBrgAiqqYlycVyVenm2+qKwR1V9PPi1Nort24MK9bwcHKL5K+UpXgUadSbS/u6nqNKt2gPdM3lTkO2IdToR4iikRvrFc75+X2otqfllD2YrqIY7v9hmO2aJjmuDYheaEceZnVo+ywMEbwbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712586497; c=relaxed/simple;
	bh=BYDtA80bEGVjbY/KSOJ40oq4R3pS8vv8PshauK/i2UU=;
	h=To:Subject:From:Message-Id:Date; b=clehF5tkouVlus7gRZjOtsBqhXSO6kWhCvxMszK5R0axFlicG/ibGLpAqeVS2oCBJE0YZTcrNtwRm4hRAmRJQKjQq47gM4HL+aVpzSzFY1CUYelKOHyG5UZ5JzK90DI2vJuNg30wp0qZXwt5KVi7UcBLJ3Ux7Ws/wUt3I34tWpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZE7ptjA3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZE7ptjA3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7826FC433F1
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 14:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712586496;
	bh=BYDtA80bEGVjbY/KSOJ40oq4R3pS8vv8PshauK/i2UU=;
	h=To:Subject:From:Date:From;
	b=ZE7ptjA3xwdFZTGiquLi4w2Pae/0NoJSLHwP3QBJ5dJHSzx6CLakZfpgn+zE8pK/X
	 LP2uSmJKZ3tNGvCTat1Ka2J1g8bcug5yd6oIUfIOX6sLxZUSYh7KPaqDD2qpX4KVU2
	 KtmLtOy1xsPRNuRa4DCB4PJSeiYodI0WvoOTex22H2YALtPHY84MqZ9tZFcj5curz4
	 j73TGLlfTGVU7I6rR5vONxJvNFe2kBfWq6i/k39Rf34Bw/KnRtssFlj6l4tBynrdRW
	 Z125XDtsEHrA8v9Wq54e7apbZB/lwYNSlX2aaW9s3RipVu/DIetxcB/ERkmPaYsUHI
	 iCsZcfTAoDv7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66973C67861
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 14:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171258649641.18371.6095032659875782028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: baafcb18a6082de81e00ce0b97a02d2acfebd7efbbf9d535574a7989f49ab7ff
Date: Mon, 08 Apr 2024 14:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712586496
