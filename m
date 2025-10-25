Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DEA31FC3
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761374394; cv=none; b=oROtv3X9yRG5uK9WAiLexUtZyMQG9mfJ+MFJWx0zOoqzVWPJ8h7AZ3heXCLDpj7UVCrSN3Xe3/uUlaX8ouf0/H/ixCn+7kmKe+jRXVBEK1owBbfm28qP2dE7VH4rTsaw5arfKQNCYc8C1tS0jw463SpzXA31+h2QFpGw5T3DC6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761374394; c=relaxed/simple;
	bh=ktOFfgJS5lO577h6viWLKCuLZ+w/xvLAQVhwLI98CYY=;
	h=To:Subject:From:Message-Id:Date; b=PHo4juB/RhnRYlIuCj6umd82Elz8kDJziwD2ryPUEyo4jD04d81ZAKmlq3vOz9S9dI/N7DSTQALlvRBUnyxtPf5qt8L1LaqDVONHCSimMY0IBu2hmICVTiVD2OPfg4B+WoccsduGsmdHK4OGaMd4lWHcG+0e768hET3tGfkB7+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bqIH47Bo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bqIH47Bo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC676C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761374393;
	bh=ktOFfgJS5lO577h6viWLKCuLZ+w/xvLAQVhwLI98CYY=;
	h=To:Subject:From:Date:From;
	b=bqIH47BoMn11CegQWADZtLOMS1BmAe7/LGT2VtLWMEouzrJBRIPzEaDnLai2PreAT
	 EYDqXlXoBkzkMqjD6HmV34fDgsAnX1VGAw/EWGgQ9VvroVg+i3ty6oddOGx+ydqAvl
	 V+FHoELeA5wuvaErC9mO8d6uukcif1CH+RQ7gPPeVjZxp4IE0nrUNkp4dw9hKMCXRK
	 LMpyKQehnNkePI1+moSP52NV6Gj12rFsvB92NJaoUefKxyav7R/YBnlpjpsAriUwx7
	 N5egGr2qOtQVwEwPAKQHd46p5FBs/mr1I0BXUFC3qwxlxMhLlRmBYXGyoh9GnnyNCX
	 E8YNrvrr7vyyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6AC8CCD1BF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176137439360.3529.16013387620636969297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a31c2cc83a4fc3498d997a6161792ff306fa2564895ea0552d57f47be81624b9
Date: Sat, 25 Oct 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761374393
