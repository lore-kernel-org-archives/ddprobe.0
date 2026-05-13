Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A39030FF31
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 01:00:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778634036; cv=none; b=fjHrMSbUEn8I14qurwnn/TEsiV129GCBI39JN6l66YujtCLzy6LsGRWLt+N4dIgi20a42gytHpY2l5yVzqc56UaXptiaVQ3VaDoQPj+0HLvNcNhfB8xRe1p3tll6Olq+08jQYrCTP3+AWiJ4t8kpzrm9tTW2dX9/x4JqYaiGfZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778634036; c=relaxed/simple;
	bh=4owghrLp60CMG4vNGacT3UoT5GE7FdkMSvr207nQcFs=;
	h=To:Subject:From:Message-Id:Date; b=tVxqQEM2+x7ZuJA1t1dcDtkyxnQPFv/zw7W46VjtfvibeKeJklhNpmyrACrRnFQjYAsZ99sDXVaB1LxXYAPH0Avz4cZ/UaMYu1/yUGbdp9d0M51eDk7MeW8RSm9xAAl+1941e2O7WNaDGeo9UrsTamPeR/WTx9ryHb3eRthS8Bw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rKiKy7iu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rKiKy7iu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA262C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778634033;
	bh=4owghrLp60CMG4vNGacT3UoT5GE7FdkMSvr207nQcFs=;
	h=To:Subject:From:Date:From;
	b=rKiKy7iu0Sd3VY6lcTmF/FUZTqrBxW2BX11zwSCUrmAkZBZgCEAkCwBCLcjHU+0XD
	 80Y1kOV9vG5Z20hLCSq4tQ4cfbl34ILl00DsphTX3SKcSYviBqi+HxaDZ8RsCJ8bTl
	 QdeI4i7I/7vixo90TR9e+l2gKLfs5zaD7Hiduegbl1Nu9xp9KlHEAsQm+wAM4agnc8
	 b9GSigZe5vleAbmZtJfoPWpvDhwJpNCa0uanMfhQynkYUxmRZX0RG5FqhMv20SywuI
	 t6JsU8XQMPMRn7HKqiG38WbD+wehyF8eJm0GfwDgNvEWNBZ7Wqibg+PPIsLLtWIZOV
	 PNiLSWONGQmpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B13A5CD343F
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177863403369.10498.5830973326733291900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f1ead5ef7028178fd898f772741937de417b3d2115b745e1f13ae40a2c4cb2f
Date: Wed, 13 May 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778634033
