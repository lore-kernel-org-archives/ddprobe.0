Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20B34375F88
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 23:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791588634; cv=none; b=EzfAyZLhjb/W9tcYTUitmwr8u/3VUlSWbU+d5fLb5SoCg2K27HkwryF+Vq5G+kHri7EOsZtp2nR+nZk/fpIfR41ZxLVNW+sXOEu/lM462rFLTUI2tCSyK6DOhQfP1gjF02sGUJZvbDEJ0iJQU/O6QPICvpjn9+qMkTpknc3vGFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791588634; c=relaxed/simple;
	bh=eWGMHD9zrGeFJx02NrloJFvnMRuaSsHcx9u5/6gubhA=;
	h=To:Subject:From:Message-Id:Date; b=g7THOuc6GKAFWJDro7mEOECtwCbZGNZ09jz6QeAotD/FLEFM04J3AuPFSiNJB0j73fB16dWlCKV6EzndTlo6sYUXu7NGq1X5Y80lRK0l+hF9XtWfxe6ko+af0vV1ancYOI8Q3pNnyLc+VlMmuxn+BzSooffLrC0EGNT7OCh6aUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GPIbXGK3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GPIbXGK3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF7A8C2BCFA
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791588633;
	bh=eWGMHD9zrGeFJx02NrloJFvnMRuaSsHcx9u5/6gubhA=;
	h=To:Subject:From:Date:From;
	b=GPIbXGK3Xjj+U9zAV2BX5RDxzF6QwDRVaUzFbNC27xCVnyY1p9Jq7qD8WeIOKu/zD
	 roQ1k2tcthINKd1f6rFW7WxTF5N+LE71/82sqZpj/RO2t9gSsZ5fAmVW4TWqYsaim3
	 PaVWfDh5jsTE919wQF5IAOxuzfG7P5FfurMBzVuaAR7Rtj9mDpAkphb+DbKt3lkDL8
	 Y++XIZlVQ/Mb8kWH0xzMzbCee+9Sy0CdwSrbzOI6EikL/lsBPMwnzCiim75Hnoy09u
	 C5poSXt8yaX1tijmbKn2wy+Qre4PRS7jGmaSVEUj6P2ertuHwY/mZHFL7WFa+QHPIC
	 GC1UaQ8nAc6rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A91B8CA601E
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179158863368.2679.1861408723482002140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6febe37fba504fad0b7a3f009639a856b2862c0b35dd7c9c87253cd2c790d992
Date: Fri, 09 Oct 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791588633
