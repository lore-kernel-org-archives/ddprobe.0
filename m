Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C56A23EAA0
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 16:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780245274; cv=none; b=AeCXMNk/iQ4+TLt9NlzKaQmwYNKHTHekUOJkY/PIxBb7B+9mPm7k4D48l+Bs9v1sx74DYg+GXFbNVXvC3dKW2YOnqhfZWKi8fENV3ITmTyhv++ljLHKLfbMQrmA7ruDYBDWMr42PTHqAHuhdjc5JIQ2X/2SfF9ApV86nDBsn7jc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780245274; c=relaxed/simple;
	bh=UfG7epZlYQ91sBBSgdtxl7MP6m/fHAPdSZ4PnT9XNrs=;
	h=To:Subject:From:Message-Id:Date; b=jUI9BUG39S6M4lItHZxCB4kajQgAkDcdiisNNlhVq1Isypjtca210Vou3Lp/it+40XCQrEBX0rcUOnNT3FES3B/Y3fs7vNbzY4F9PQY4TDCX/vThjT1RyjXlEITzdvLJrrXt2YE6BU1gnSu5+oxzXMNC8laFUf4bhIN9/pALLvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FmWTji25; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FmWTji25"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1C1DC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 16:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780245273;
	bh=UfG7epZlYQ91sBBSgdtxl7MP6m/fHAPdSZ4PnT9XNrs=;
	h=To:Subject:From:Date:From;
	b=FmWTji25OeMgeDToeoJBPsSTPdm2PJieUHvdO8jVbSCGSnKmJG/MJgJFFDKZPoOuJ
	 hR2w+vfhvoymHGxWCzVVq+9P9A53dN/2Tuk3MpWMKtAv3dJ7VeXzPMkNGia/d/Q7aM
	 2BJF4iQO4RaXBFqiiWz5DY8WwCPCoNqygu73J4RqzEatj14pZL34FXGVGzPxdf/0LG
	 PGkcKCTq1TZVdWUklBMq3s4PQ/zicZKjE+QIP9qhERkqFgpNJuW4XvNkKB2+yzlXgB
	 7YMQhGu2VMu3joiUYIV45wfIaMOhyP9ErI/S17swDJ+6yu8JHEMF1aqscydzPqmAYm
	 VV10LWtGHBDbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA826CD6E52
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 16:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178024527368.32670.9114306920566008941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 757ffff969f75844b8ea4fd69208f6515e19666d08d6aba0a9d288f717e70ed4
Date: Sun, 31 May 2026 16:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780245273
