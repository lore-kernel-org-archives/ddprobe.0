Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D029269D18
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 04:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791262234; cv=none; b=ckj9UrH80qmIcIkHxJtRPcK1JQ5X30YqCfXyWDVeUFfqX4MmAJz93ul31h5KNKmIWiIxVUrrhnSBx5sS/eFEpJiKFZxa5AH5uRPlY6dYfj6YVkZytxFO6+kHfmPpobP6LAVmd3pTP5Wk6ZEvQgi/ld5jMwvPJ7TQtLiGE5l6pA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791262234; c=relaxed/simple;
	bh=QW2KJJn93U03qknasdQHSSa5zvI8GnYNA2cR4G0ZmgY=;
	h=To:Subject:From:Message-Id:Date; b=I1daG2Z7SNTjMl9i81WLdYbLkIBcATcL/37KOWjuClrz1y3zLXnjZP6y0D6exPnhprzFIZDIvOFuTiLRBx/0gNSA17stws7Qn773b/RkUmYb6FCLAJmQRdt8VNabyNhiiXFLivRFaqp4bIQhDQ3EhVjhQyb7t+2F8jufEP3jFbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EEwL2fFR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EEwL2fFR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBEC8C4AF0B
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791262233;
	bh=QW2KJJn93U03qknasdQHSSa5zvI8GnYNA2cR4G0ZmgY=;
	h=To:Subject:From:Date:From;
	b=EEwL2fFRVoL+ZfhG8aEED0PySy9rwWPKyQxVUMgYJ9AWEwnjabkfc+8zG4D0SJJ+z
	 29BX+T1/3uqXyNIiwfmK4dOBiSMmifZQnyvl0vkhdbP8ijlJow74n2v3DHxICMBJk9
	 Cqq722aIuMnmA1qRB6UgKRzGM+IymnNlBH5/36kP7FqvPqhYmtJchGz5PO6y6En5pr
	 wUj96qDxCj90cyt+i3IrBBhuqrj41e/X9cpM66zDpWJIDDO6Jj6R6uDBhXN0siE4Ws
	 rkktu/GbZFPUMLRDS8GRdFaLaA+hmalqzz+ONCEydM6Nck1I9atdZueWh5Dnuk3Wwu
	 OfmKRGYMPgoXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACECCA5FFE
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179126223369.17152.1094594312325721806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecd887c7af2d21f82a24980c72bc0c10c81e349781254bb6b60a1b2b82239122
Date: Tue, 06 Oct 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791262233
