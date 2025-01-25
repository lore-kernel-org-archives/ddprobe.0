Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 432D145C18
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737827754; cv=none; b=PrkPYaIRQhaAiDfJZLdGpFsV1THIlGp6ItPedywDS3nzXRNKU7lmylEfwZlijYrhYajhoWo6KB1yGAd8gjo2j/uzlRC5dzjRk8o+xJvPqU/N0hGa0riIGwt5PEWoBgWSRqAcghx5ZHYDm52VwEZVzRhpuWkT6CmPM3yon/07vnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737827754; c=relaxed/simple;
	bh=3V1TM6D/cG/nrym2DIm8YhauSnJc+xEVtk2UA468CgY=;
	h=To:Subject:From:Message-Id:Date; b=dE+ngqkdvH2AqkivJUu6e4H3MIYNFlZILYQ36wgchWb1Igzgg9neec+OJqHUlZoiPEpo04ZB7JXLEP56tgi2fx+3pv67obbe2h3rbhYiN2o0FZXLm5TVgV+f8nVe+PoYAWlNkAjj1u5+C2M6W49Z9GEdKFkLwakaI4t78HvQRQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i51kCeT7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i51kCeT7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9265C4CED6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737827753;
	bh=3V1TM6D/cG/nrym2DIm8YhauSnJc+xEVtk2UA468CgY=;
	h=To:Subject:From:Date:From;
	b=i51kCeT7V4Yn95XtB8/bBxDB2PwgR9mXF9aIzJUw2UYbRO/f7LNqYNn9bPvb/9eXj
	 NJQoPBlyttZcOmlmorV0CqwMvIlulF8hH7yuyCb6bGlnuSSxvjk4sGFCCJuJxLtdqE
	 A1fQY6Wg99Dd9WdLFpfnZ5Oh0t12G5txCtQHPeb5e0Gyi8CE1HNNstAkLj7axquDpD
	 TYkwr9eF2uXwtU+yGom1naOKACC/p0kMPzgSUmHLZs+JaipewwS7PdFo5YWTMajlbU
	 ura8bECnARnb84EePohmnu416akflHEHIe1ZL6AolQsUih2Ocy5BDp1W2MJKeQgHdX
	 TiZmu52hfeeOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92338C0218C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173782775358.22694.2253815968211921211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9d24493c2517d1aee85b3b046d341f7d91fa3449dbaa6305573e6bac5c5f1a5
Date: Sat, 25 Jan 2025 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737827753
