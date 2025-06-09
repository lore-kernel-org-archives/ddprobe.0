Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E3E71AA782
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749470395; cv=none; b=NFqoqZdb3KLK0x7/p30FTRWwIwaQgCpCtKZlimGmMEwAf8eqbr6zuy0duADfIOAtJI2WlG1hzHzMdGX20xOoDSYkAnZf14hy+zFgXUWGelX1wlaEbjqib9bU6Z8DGkHB1KhpJaGH/1mN1y4GPTxHW2eqy2gsQnwYiIXuSI8E6mA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749470395; c=relaxed/simple;
	bh=YGyPTrDMAjrYEplVLQjsCC71yRAxPpX4amxdT12kx0U=;
	h=To:Subject:From:Message-Id:Date; b=Y3+OMzlhuSyHFzeWsFe0QKH3M1C26hPE5lib06QLLQ1T/knKaP5WI4CY8F6OwHFwtYT4B3NA07Hs3sako3/xSpDL9AI1H9shtSZEV0HEvp61s90AmZ1c0h5jGTQZrggmP0G7WI1L0oPlTYYgxFtDKj6eZZqabgmLWJadcbVExTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N8tRUiI9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N8tRUiI9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B27C4CEED
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749470393;
	bh=YGyPTrDMAjrYEplVLQjsCC71yRAxPpX4amxdT12kx0U=;
	h=To:Subject:From:Date:From;
	b=N8tRUiI95azLuTtmocdPlr3nUBPzvl1h21VTSjJppvNthGTmadbZxImgs+gTLkU/Q
	 c4QazpAW1lfH9BJ1c7Z0g+84lmhNpClj/unrQLtiB8JJsDkzIpxgVP0p+nD3kq/dFw
	 FUVFUrFMJ2SUmbYJPCtslt9xzo29JvTu2bSfg5gPnJ0O0Yc7GfoA6ldhdQQmQEADi2
	 +c4DhYK4eV1GqpJb2gbNlanLIo0A2v0uXzyUjM05Zc8Pk7l2PKrmgzN4nIwJn9Y9Vy
	 mHh5V8ZzT94iDbFlwtHZV3G0qcnp3btq9CejeHzp+bjHuLNGcDr3CLARcQ9b8ALLST
	 Gb5aH+7N+btAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2C2C61CE8
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174947039357.26209.12793447151703909231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07e26b4ac9d5a11af6d33b947490c6876eef8e861aefa8ab562995a0d59733d7
Date: Mon, 09 Jun 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749470393
