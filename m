Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5188224502D
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749649794; cv=none; b=M5q5SG+RksKVAj2d2c+eRptT29nGzX6XJKWKbEj4o3ke+csP8nLFmVPXhGvsKNoD9T6uW276fRkvX1ARYvA+JrRycd8RJLnXOL/gXYFV+CpY/EeT4fjxJ6uedMECLTt+F1T1tY3YPnUCWK4cybW7K2B2sL3iHOgy1v/j6Tbh8ww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749649794; c=relaxed/simple;
	bh=FIRf7hV27Z4tD06ixx4IXYmGvl0mf1UAUdfnrXB3kgE=;
	h=To:Subject:From:Message-Id:Date; b=bb/G+tC74RjyrFVpbIPXtRBzyTm2mU6X25fv32TgC0D0C4b3+OFUiTwwHaWSF8n4SyxOWWpgiyh2raLRiARVX2xQqry7fSemtw9bAOCyCBtldnVJdrcynWi9OuLgyfD4A6IgLvVqvLzoLqmArUvA2kr4bzkpxgjWA1GaytExrjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ju7lmAFu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ju7lmAFu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E13C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749649793;
	bh=FIRf7hV27Z4tD06ixx4IXYmGvl0mf1UAUdfnrXB3kgE=;
	h=To:Subject:From:Date:From;
	b=Ju7lmAFusJWvoZJFlQFKstMEohOIO3vY81Of/+2ZUjITcokR6KJ2WVR/ntciJBTKF
	 TDmlW+4TvD65XYwiWGDAw4RDER2i+f/NmbdfYbTlnHRCh6W4M6PNnAjDecHcYD3B8d
	 spLJLQ/SmUy5EDdx4xKPdT3Vkf8Pl4RFuUZdadqYGLgi8k1l/iVsX8Uf8F+PmSfCbw
	 zrL2qdEYxXNHpsPhx+DAiP0euhlhziLEL/rNk0HwvWz+q+jO62TTvBrpco2bA0+pHs
	 MsjK3ej2enT/MtU2t41ORznEaILLov7ebo8RdYXXfsHPvzJo/GA6QUOARCKWqjBwr4
	 ULcBcXx0GyXJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D23C677C4
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174964979358.29247.13277772680319256315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b45b5ff297cc973a0e1ae7a1a50ed8f8a689f441ac2f9d5f32e37eb5ded16ab
Date: Wed, 11 Jun 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749649793
