Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7616D2F56
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 04:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720843763; cv=none; b=LEKn+TRPnO+OvaRXigWF8jnnZyFdwFX6ia5bjLE4Ymn/16bFFVH0/crXwHFeanUBiuSK/zpCzgniBk7Rm6RXfyiD01jGq+3vcyKXZzLAJHe02eSaO4MTpeoiBNz79MtNtlAuFtwq0UE1rkMlXkwtslOybnFoLcrA27uTTyG7uMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720843763; c=relaxed/simple;
	bh=Kuo7v+Ackv6aTdlZ6p8VbyTY/JWdYD7H5spxrrPRBBc=;
	h=To:Subject:From:Message-Id:Date; b=qFUcytusDOXEtDsT5OpTTxOMjeK9cK/eyb4oQ8IqePllIjQFe5OphK2Bl8y9wPbJDbpfKsAqHe5R9ty36kbfw4iqaPrhJIODcA/XG+polKtDw9dfIaKy2JVKbV068kVue1ZYSGckN3PDCIv0wMySrLUYRoIAmr5bppejD2R+pyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TURMF+UO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TURMF+UO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED1FEC32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 04:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720843763;
	bh=Kuo7v+Ackv6aTdlZ6p8VbyTY/JWdYD7H5spxrrPRBBc=;
	h=To:Subject:From:Date:From;
	b=TURMF+UOMJD9fHCZW/VpxMlkQiLxt6Ct3ZZbzlFiA5OpTwOMPPmUXMMhbdAERSj3u
	 R1e5FNMDFoccPWgRyxXOO6hXzizP/H/VI6V5Qjbe7iG9JwcLEMWx/mtJTt59n2OF8e
	 Ac1ufXzeMCUQ7dOFsbKs8KftXHUPJ7IefV4X9zVHXn5YW1LOtv8aIlFMYi2BI1srVi
	 TkFSIBHs09Otpv//Z57WbCDRQCxdq3hhU8r0boJHiTutb1CD4icSYPvupWpydrNh6y
	 gwOBN+/LF12dTuBKPSLnl3moWu8AUh1bUpoy5pfv4+IJElhzrlnXN4lvdLOkSXz4me
	 7zkPsoOI1ptPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD4ABC3DA42
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 04:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172084376279.30095.937779020770623912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a67489ad9e1a211fb3e357687d5fe4b52916a03df298696a8c6f7e45251343f2
Date: Sat, 13 Jul 2024 04:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720843762
