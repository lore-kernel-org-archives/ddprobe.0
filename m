Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6727E1DDFE
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 06:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790490634; cv=none; b=XC/xK+g5N2QL08i4F1Ub4YdaVgdpcbNVn8uTcAyZV9sPAcjxIQjA27ogLBvMs3VI/Bg6H3t4JgyPqWb/aaXYNV9otU9bdudrpSwvBGM7qwd5H5wYHym+HroepVpyCPwa5VNvhn63xumKsjdrQJN3VTdX7QveSriK0lQNy/GhN0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790490634; c=relaxed/simple;
	bh=LLjnlOPUCHDXrW/IY5Lzye76msckxBDE2QOp8EnSjrM=;
	h=To:Subject:From:Message-Id:Date; b=UdtmcVig3FnWrafNM9MuiAFN4Q4XStoNa2W36GqnJLnblP/pm4OweGD2OwF5Bkn4YF2e5ubbmNEGVIa+Czmz4c+nLeUAWWVUwaNXIoepG6T6jul7EqvooYy9uTpPesDNS4O0nx4hwh//WpKM1rXDtBv1DR134pf48WuBxytOXyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P/vSxPN9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P/vSxPN9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8A1CC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790490633;
	bh=LLjnlOPUCHDXrW/IY5Lzye76msckxBDE2QOp8EnSjrM=;
	h=To:Subject:From:Date:From;
	b=P/vSxPN9MgkvzrMWcJF3jRgAEM2MQTxaqYvFd2IMWn2Iu5LasKV36gOasQuc1sfxb
	 J1RwevTVy5UYcExtAiAN0ClDlL4YCJDpF8zVzFcvNxWJdhJeB4M4fNdIjIgHChrJAU
	 N1URffakk6RnMwcI8+9+UPetEanFg18teKLNC0dHfIyXGx5PaNMv/33RLNv7QXumJc
	 YzCCRAiwuNWC7eDCyPXlgz5ugwqC+B0rQFIFB7EIjMDRA/f0AehrpwuDfG0vleqqfn
	 U3X5DHXtGRk/SBC/AdMLW6z6AKYX1gEQCakLzkIzO02riRmM303s1D565+MwCbbqdE
	 7k9vmbUc/Y6ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADCC5C98324
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179049063368.32235.16477889922262296844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cac1f9c509e822ab820461eb017193cbb8e70d844ce008835c0af92baea57a7c
Date: Sun, 27 Sep 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790490633
