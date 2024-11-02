Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AA50A930
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730506554; cv=none; b=R0XT9RNF7Xh4WT58UXhF9xj1F9FjhrWMXHFD/EIssyejYVZP+ccPgorL4XkcEdIFqz7KpfZfoI1TJuI52EuJtMlQdIC8rdl2ESwS4TKA252DzypLIx1CMluCdQWz15cB1/ra8s18GAOWW4r4gz1K8MylG2GeBqWVGuUBw2uAAts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730506554; c=relaxed/simple;
	bh=sjW4HGePBgvSr0OF8I2KQlHc7JNE7vAljrxDjashZZ0=;
	h=To:Subject:From:Message-Id:Date; b=EpgpqN4D4WvnI/va2UcAE0oUERAuA1BUQGBLhQr6gb5rx77KF9UaMh0a+NZhVXp9HVDwZB003O6x5A0EChtazaVT6C1gG41vLtgEz1Xf5N3LkyhUdRvJ5RdforQ66c6a3LVNe6EFq0oZ60vEyYHrlQmRmLgIsiVA+MJ0SjhXKCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ekyd9BZL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ekyd9BZL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B52A9C4CECD
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730506553;
	bh=sjW4HGePBgvSr0OF8I2KQlHc7JNE7vAljrxDjashZZ0=;
	h=To:Subject:From:Date:From;
	b=ekyd9BZLhEH8RBj6kjZuYIM7rjpSmgkODJCFA1kGOEPmVZcBFPT2ifTDzlZ2+rOM1
	 2cRdJglTuwGkjiXLmFiTFGT8h1X1ueI1d1dOmI/6qYlb2KXlzFig+MPvHNzxrtNDhN
	 JVq0oaTAbFPfIecE0BIMVlYbSLdmRm9TaBF0hguD1VlQ40cKvrxfr2KO5H1PGL61lF
	 heToWUEjBa8cDCPRkSN1UTLdkYlZDVKSCQMGXykG2vt44c3hN1nDAP7yGNm7lfRWta
	 FI18Uqmf4L3hlRWkelQiaIct/V9mjSF+VpbQW94YTMCACK3ZFAtKQkH34ypYvDtbGg
	 9dqwLCnbUPJyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 995A3E6F096
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173050655360.6482.4734218423485608076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9cae38a382a64a137c60bb332a212ffdca616c0388f9d9441c49e4d73e4f859
Date: Sat, 02 Nov 2024 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730506553
