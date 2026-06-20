Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4258314B950
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 02:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781921194; cv=none; b=X3v+6kbOJYrhFBcdQDVrSP3yqoQdobaGEQR5oMCc3LnEKTPSAeSHjh/lU4Gfwu4H23I59F1tJr23a/+1B2tLYahX+2y00w+miXvAe3e/Nlr7P1VcInp0fwSs1v9Im0kmz3fK/+KvD81wArZWuP8jO0JAg/+pPI32nJ+/RdrSIPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781921194; c=relaxed/simple;
	bh=iViRqDORG6bsV78EkCGUjg7DpUiylgkMLggnhxyH0tA=;
	h=To:Subject:From:Message-Id:Date; b=lBUOOPKzVAhou7p5UqDoPFksamTEZsOJ6XJrmFbDqQ4WSao4YVWgP1MDY7PHXvHe34p8eUXz/zNBp8JGJdJa4ZvN3yzcJaaPmmYPG4gQepUBxvCjdVbYSSJFSdZ8NP6mNfv9sIwpe9YvYwL3FswJH4CLhDlBgeDPytigVfufa8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sNiayJTv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sNiayJTv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8628C2BCB4
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 02:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781921193;
	bh=iViRqDORG6bsV78EkCGUjg7DpUiylgkMLggnhxyH0tA=;
	h=To:Subject:From:Date:From;
	b=sNiayJTv8JLzmbT2muMUxTNDO27ZknOGUWiLzhzhnoXJdMFZZyNCPb1ht3y7U9MUu
	 UWM5kaHaCRA59c7+kADOsYQxm2oXOf9JRDSZFuAtaKhDD/cyqF+7DriAv9Gik/47x4
	 O2DGLKhcVVHGbzlSzce8axj56pDJHItd9xbdF0A+HehQCSrTKahPD/0uRcR+nofTRk
	 Z/xnRuiPolYib4RucXRFgPjmenajCETbwX5S2eLgp0xYfvnSP+PktDsklhkpZAwUUM
	 Vj+sFqt/qTz/13Gdhs9l9cpXD4ru+t5trjaUNhbbV5MkKWtWEK7aGMG3NrY/CLzVKH
	 /LTJMr6oRrGnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B16C4CD98F8
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 02:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178192119369.24852.7266064956537748291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a02e15c3e0c139ad1165e2ac2692e412025fcac7b1d3e5646af43fdf61818484
Date: Sat, 20 Jun 2026 02:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781921193
