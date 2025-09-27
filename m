Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 377DD146A66
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758975595; cv=none; b=rHpHPmH/C6ZWofo7zMgH4z/swk4Dr/EwcI34FzEcRp4DOSFvdyTqqcGNqKnyWdn9MyLY1H9z3Tw95cjJEMATAH1SHQz7v2Zrzfb/+OVqwurX/qWy/c1KmhdTSGdy0DG8z0ZJoR6W5EqrmVj+gjUhhhmAbmm8sm0jQc0AXMY8EaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758975595; c=relaxed/simple;
	bh=KWV25rvHuZZaK+M+0XIzHGVDk06uZSEpqRFsswhX2i4=;
	h=To:Subject:From:Message-Id:Date; b=ItIOHffzBqmWKtjgFycy5fozdg4jj7bWiLUW/pzJPzwJItTrnrOvbL1hgBllSYhjbMQjCyfYuZWaA0owLAwYvIi5prrtpYk0MPmSpmjBtOrFclz+6tW4HCjd+WC5Emtnwze4givLtPdWdgMdGN9ApLpUmmdmaq64/Yjdb9iOx20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tBdt7FHC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tBdt7FHC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA512C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758975593;
	bh=KWV25rvHuZZaK+M+0XIzHGVDk06uZSEpqRFsswhX2i4=;
	h=To:Subject:From:Date:From;
	b=tBdt7FHCqO2+CFmoyyzf7hkC2UlCviL+jPfTKS9yo0SWf0eeQwgOvHwWV/6FYeTTy
	 HyzTX9Z7hEEGSWQfXXbZ3cCFOfWY/JHoBekuBwDF1NoLu07yr0S6mmFRV2VaoBQ3U/
	 0wvZgem8PU2UIcDqn217GfRq7n94+xUvm7zIlKsEkmCJZsGXLvG0lBEqcilM6BhQCH
	 41gYLqwZaDEiaAqnP56ptuppW2wK4iVaaRJPEy90HRAnU1cPW8gncfHvTeunrDyAHN
	 FDmwFcjCKfTA/pg0fCsI+8o7H5lutsH5qtfk9RcxJT8fHz/nNvSE08xSGErqtZ6NYA
	 GsWRqyLKwjiwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99C4ACAC5B0
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175897559359.2810.733032383541312450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b70bcafc4fcd0e2cf70faedcc1eeb162c77e6f2502eba6c65b7dcbfc37fd184
Date: Sat, 27 Sep 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758975593
