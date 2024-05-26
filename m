Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F56C8821
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 22:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716763463; cv=none; b=pS4TDNhwRfrz4c0F2zH3hm6O4LcAttcMWrCWO53TOQg9sCl63cE4xUSMQ7mbhyFSNjlnkBLZf15+XS7+pZ3MBDcxnG9o+qPQVaMAtomPLL7kB+/CqXI460IrIVvN1jhd2M0xvEJAVxrsqlD3+PaY6SoZs7A8ThPfDHwuow8eW2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716763463; c=relaxed/simple;
	bh=jX+niPVZoGvX6B41pKEcCq11OvrtxjsydG3UtmdFUvQ=;
	h=To:Subject:From:Message-Id:Date; b=FtaVY4RZ1MlP6W5oo5jO6+AsjcnG5LeeAIW2Pz0MOLaONmY/mjuy26//jztyiYdDcLtxa5fVqLACE5nmkRfrRIkqzVZrln2eHWR79YZX2cSd2kp11IRalDI/8XH28j/qvHMaufjS4kr4LbggWvIu2kHnfgPdD/EAVYubGlYTUMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pMuFM7c2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pMuFM7c2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DED50C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 22:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716763462;
	bh=jX+niPVZoGvX6B41pKEcCq11OvrtxjsydG3UtmdFUvQ=;
	h=To:Subject:From:Date:From;
	b=pMuFM7c2E2izMRIUsYChZxJxBHRoWqLVvn12fQQ7D6hg6bvkeOf8pmmMbwLcYOT8Q
	 jvL36cTCELTD9vqtVDa6sd+4mHPW4Iwe/oe5sjC5nnOtlTptTga6DuRz83xaBO5v/3
	 Le5253VQKWQ+nprRvYovkA6DlX9Pwg+KOlYCPIPZkgXPY8DYpv3xuC6foK9Sq2h4Ch
	 fz2j+GgGAxIjTq+Wc1tKdj5WgNrxmTv1x5Gp9DWyRG8DCjaXoyBzuRa6jQOqmHCNIO
	 d9QfOI2HhXTWHe6db4M2TFFIykNX9XBG331YDT5+9d7XHzcvhouUNXydgpcvrfg/Oh
	 h17WqGAlAw5SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5979C25B75
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 22:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171676346278.20793.5270761099588265919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22df9223864e3f634b5e3d8715036c5548f2d04ff64ad7b566872cf6404d1b87
Date: Sun, 26 May 2024 22:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716763462
