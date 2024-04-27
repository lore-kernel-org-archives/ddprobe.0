Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A06733C8
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 02:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714185143; cv=none; b=p9Hn/Vmv/gvrOUwSPnxHM9Ww2jqDAwJyOpZ0GoiqiMSeW2VqnAyr0oDCJtzwkEvnVDs+TzKQTMuym9GY9Hpl5+dw98hv2SjHD2dslhHxyT7Zb3vH95jwOmM6pCZJh9xze2wZPFxsFccS11zl7C3a00t+DGLsv1Xi2sHr82S7OEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714185143; c=relaxed/simple;
	bh=FNMJNVfioAzYKf8kCCZT2WTWVtTR9kuRLVIRbsMgKhE=;
	h=To:Subject:From:Message-Id:Date; b=uvYJU+tbPeHNYg5Ha63bgC4x+PY4UPUwEhizCy8bP54OnIOcbrWy0NLF86y3Bk68vEbNFFMoXTmZMpIIVLRy6DqEqm9HNGwomgSzgqWC1a2+J+bKZvTOj3RFyLhD8IGFCbyQZrd3PqFPVngNOp7XugcPcIrfTALMZdZk6QVF/+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xvjxqvme; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xvjxqvme"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF29FC113CD
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 02:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714185142;
	bh=FNMJNVfioAzYKf8kCCZT2WTWVtTR9kuRLVIRbsMgKhE=;
	h=To:Subject:From:Date:From;
	b=Xvjxqvme56dIWxdWt1NDHVwA8ZC36YYV2IMPVGTsz6k9kU9y3ZxhiPE7WbrvaFife
	 NTN7QHa2ehMj3YdvT2bVgv89QN5fRD6V0Gu+VQleXd4a4vDBNEaGxDOrQbUoCysvrh
	 yaQ7K0VuPEyZoShw2wS+5ksCPuS/RNihdU7GPFOiUqts6ja2SKzdNK1Vt187oyoUYs
	 Hst8hHDnX7Mc0ki9n71Cqfnx1PeizO1DbTGyoSAgnKkinkdRUglS18s1VRAt8XU5Ex
	 WDjzNwL30ZljL4TW5Qm8BAWdwTRPs3DdV3l5vBNg9Vd1qC7T1Yapqq/lgdLEGj1m6O
	 thU8lYCWQh4zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C86BFC04FFE
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 02:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171418514277.27217.1775502225936647455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d89da23e62721b21a8f3bc70e40f72c64b047d23855fe7ae6322f90b7da59a3
Date: Sat, 27 Apr 2024 02:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714185142
