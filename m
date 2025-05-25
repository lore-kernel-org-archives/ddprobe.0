Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 323B51BC4E
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748217594; cv=none; b=MJiIYVx8pN81JUIwxezXbE3S5uoNqoc9pViUg4rvCTVcnfTHZ1NVXxpi9+tM17Raup0mQHboOsHPZShaDv5QY8xnkVx3+kjqJuNeXBt7qRK/kbmwcuJd2q5BROMw1+qxbm4SAQteZF7T0SolAnqV+58qXupNzUy+jaiSliWiw+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748217594; c=relaxed/simple;
	bh=tSjh2i59Ut2OgmoLX9672SqJ7dYUozxBbbTlTwNEmJA=;
	h=To:Subject:From:Message-Id:Date; b=clg3xV0mP9RKy+sRsmEaP68chUcoU+hdsqNhbBtM79TBe+3ZLnuo+4bt2HTt/psy9bix6YtumdAPwTxL/13VZJw9StBLuLMM9QNvgwNGeOBuxQnVWDi6LsfO6R7YiTeLkU83WaTqlsJZVTBdIE0m8Pd/PxHj8QyXA/bZHk0YMw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vm0NMgv7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vm0NMgv7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A120BC4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748217593;
	bh=tSjh2i59Ut2OgmoLX9672SqJ7dYUozxBbbTlTwNEmJA=;
	h=To:Subject:From:Date:From;
	b=Vm0NMgv7RZhzZiHMdnYGdvSP/UB+fqBnZvIv5VMZPDLt27S4c29d0JVAtMoI09Dii
	 NUG+/Edac0WJ153VCyBpzSlQCam8Rv64OICcrT+tnrWpisD6QzejL61jm9S+eg+6TH
	 EBrM2zoNnYdur1L0IUCrU9PkCwLIKwbKJUoIRzPrE80xiiXyYkv836GT/XToubeoUC
	 Utl+Up9Fg/rfwKAlpuMOeVGB9UcPqCeLve/g8js3eUpMDVp+zl4tJ0sXbkoyv0aRPM
	 5hdqTXFgnhBMvhGXiKI4ljpAfqO484j+vchyGn4lGsM2wky4mLzCUTBpRcxuyExdEg
	 LCazI4wSEOkiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E013C5AD49
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174821759357.24323.1439688184421722883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae037cb4b8f0cf7af0805b97506f6886048a19b765afb827e7ecd4d97962c8b0
Date: Sun, 25 May 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748217593
