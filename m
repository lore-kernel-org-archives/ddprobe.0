Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60F6D35AC11
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 14:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791039034; cv=none; b=mXqzF6GeIhzS5966LrFzeburfrmTOpyxAWF4+fvoE3rdPv2jFeCzpW5lnFMM1EVKEbU8uj3SLiOUUWvWp8g4f5jbnNoKLRbt+695g8A+JtSjgeyZsQVW/Wn8PAu+ZM1b1IIRsNWgNnnvZDdweX7cNMWenI1B6kK/N1NIQUIX7E4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791039034; c=relaxed/simple;
	bh=9g0f2pFKU2oONgRF2cw0QhEeT+4GleWI7U5DDTy37Gc=;
	h=To:Subject:From:Message-Id:Date; b=SLKI/n+NwRz0H/ZCYV8KHY/ytuI5tOM7mEQ9r196tXv1+YaZowGOK/e8caJ3SY5U+I1vwDNNF/SJMG3DFVvv3ACAaRHfIEo2fNxF9FdhsbrrLIFSYPRZgcfvc+QmnIvTLlFutRw+im3OcQinGbm1ZSF58HdKYk0VCesaBPuxG9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ae/uh5av; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ae/uh5av"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D42B5C2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791039033;
	bh=9g0f2pFKU2oONgRF2cw0QhEeT+4GleWI7U5DDTy37Gc=;
	h=To:Subject:From:Date:From;
	b=Ae/uh5avxVBcQuuRs2p0ad2rOfClEVLLW8HxPBMR0cuSxIdzab1tzvavlNZsryLS8
	 ZKmGBnkA/zMlSO0r7j04qpJwS9AzotVvrfzfZl9UBf4ebCELbxa5167SmD7s8BAKvw
	 lk/wDtBn0X60L5Txm4eV4zfvhvBcPVOQgdXpTfMYqU42gCk3OEQbRF+NBoiiTKRANh
	 CkGV6DTDWKYN0DUTYR+n0cIJxamA8zGWhpK4nCq2B/4oCcK+vvq0BrNrMCLKg0dftR
	 Uu03vXcGUnGfimTp1Q70+tAUeHTBUCGHW/Zo0ce6uZdbPFJKn/Tp3GDIVOBs3qtAr8
	 RtRUCJa9O59fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADA9ECA5FDD
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179103903369.28091.8897756764925429421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d9288c700c3e4a2ef74aa0cf8fa232e39aa4b9e2775e886dec77d78468dae27
Date: Sat, 03 Oct 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791039033
