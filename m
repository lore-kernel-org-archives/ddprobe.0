Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30DFF282F2C
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 22:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783464514; cv=none; b=o5oTByZTATRKhLlklX3KBdXpTUbKFIahnWyQRep4NoQFN1Hcsi4CQ7Wrj4CJlj7ZPJ/w8SLGAKq0Q9171gkgFRYKX9y8NcIb1F6VS1AHB/91lpZjQIhiNM7k+E8WlftHCHRZ3S+6xMyIwYwFQ+1QH7o+BZNpba9Mas1rkatKtVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783464514; c=relaxed/simple;
	bh=/WTAjwTN2XjnXGM+vjUYMxrj8WhTkwxUE/2v6OsbQCA=;
	h=To:Subject:From:Message-Id:Date; b=LwBPoKBROenO47RE1zJJ8YV4ubRq/c+TT7iZYQADx9ACtwCr3F0BOd0ieKyMC539VPMc1AYWmns1x+HDuRR3DjZc7fdtR1ly5fF8gCHyVcWkoep61tB3PCTACivqL2Sd6oGZ/upt3RKLuxFKyiomJArRUzDgtSwoBHdrJ0vwjoo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D4mLfqAK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D4mLfqAK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9F3EC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 22:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783464513;
	bh=/WTAjwTN2XjnXGM+vjUYMxrj8WhTkwxUE/2v6OsbQCA=;
	h=To:Subject:From:Date:From;
	b=D4mLfqAKokhA7/Dmd2T7qvmfQWm2fnm6MZj5ZDxvhOveb6hCaJWpk/PHGi9Cre2jc
	 0VycoCh//XojfQWCJ78/MUZcu2uo7q9pG1eWlMV/Tji/bdpeM+NgNtfZBiESHya7fp
	 ocmkrRJH0RcymfwmCJAt9T4fjb8Ip7nIq8ROsVkbnhQiF+pPhHjWyNBodF9WK5jTmO
	 BKIvTAH9djqeewkWm8aiS/xtAjqA+eVO3KWG2QMInXQs8jSVyp7gs22JA8A1MXIQ7J
	 s6Y42686RP/S4RnND9a01wKtdI3+EKy9yY9UxZ0qb0STtyuVRz8diCganlKhrr53q0
	 ffXaRIdyUQ0FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A840EC43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 22:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178346451368.24024.246240748580483864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82c56187062a1e2dd7ada776d8ac5d065b7c97709f2fa96100729dd9177b270a
Date: Tue, 07 Jul 2026 22:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783464513
