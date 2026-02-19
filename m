Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C3A2307AF4
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 20:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771531494; cv=none; b=IS7DwN6hm4DSfVbXR3yTFfLFz8Xiowt+nfkOnm7fALwg9MfIa1OHJduA6sOquV3RkXeGsQ+IsxYjmoY3eTswcGjAE5nTPKllIppRpFLDZ7Je/FoC8v2B6r1fNFTN4FNxX7aJ5Bfjof2o2naYfTruCDGfpVXsiiPHXan2V+OILes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771531494; c=relaxed/simple;
	bh=O/S/DX6Gs9RjxLQMTx4K+Jqyd3i5GTLBVLG/nP0ESQc=;
	h=To:Subject:From:Message-Id:Date; b=aFh7vB7TAkRo3D8ZmtX5SX3nnE8hj/wudLxn5KvWcOPmP+ky2NyYI+Nrz9waZ46mhn1aErV0Kyqxd50yP9GeMMe3+ZYlcMGiPmHLMtLLdpmMWjJxR8GjRnddxjYiajxHJxffPFnb6/7U1qhnaY+ZHLATND5AQX4Vea8J63OTcy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZFoF/ioU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZFoF/ioU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0C95C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 20:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771531493;
	bh=O/S/DX6Gs9RjxLQMTx4K+Jqyd3i5GTLBVLG/nP0ESQc=;
	h=To:Subject:From:Date:From;
	b=ZFoF/ioUmrmKgWURXEjlBc941Eys9iAhyEjnP9xuYBJIHCZupJF7LkaCUED0M3Nwo
	 5tC66q9IsR+U9G1c+BCZw1q/ZbgPMGhbzbnPAeaX6KAoYIUY636RrW8Q2IX0hDk35d
	 eGDWa7vZ+YyaexpBxQ2neLA5FmPed4Dr9CX9mkCdzfdEDmm3X79zVUVAbk6yf7QImu
	 QyejCTc2eFweF1NFMv4Baenliuay7A+a/56K3u5f7zkb8urHlHFTl+KSGCex2CZauM
	 3CuaAkEQdLXY9wG0J+TvLHdG1l8U8y/mH9XJNKSmLqOlRCvGmK39JxmxM2Ga7NhVV1
	 R715HjzGmdFRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6C9EE9A05F
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 20:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177153149358.25364.4836239257131400812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e157855e5b3fa08ea58cfd3bfff30318db72dfc7f9a8ff252c1b975adf5a0c3
Date: Thu, 19 Feb 2026 20:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771531493
