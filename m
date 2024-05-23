Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 703A21E531
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 14:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716473003; cv=none; b=cHd5umemVRjdKA+wTaO1+XrfveJEWjRsmFGsGCGUAKtodSrJszdIBrgW08oS/xg8p8BU25SyEBC+jCgQQPG1G+D/SsOaTYdgEPFmmAREWBypxtYZsYiFRDOGjSM2w9ASUWfqBFelvNa5x+ljhsFipeRWiTRmjNWv7ZlK1yvZ9f8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716473003; c=relaxed/simple;
	bh=+7HKbhtDReAYU+OrNJPVlHbZvDwD4nr6G2QfNW0AYgA=;
	h=To:Subject:From:Message-Id:Date; b=CMuQx/mOsT/llGG0WUtBaG7z+rKIdqyNqD/rdKnU2HNXwmkr8nki/XOXuR61Nd+hRKPHXRNkxlCM5BD+YKpOv0VoYdJ4n4Rq1sWLSrTfceMIanPHirl5X83k+26caFNhUH2Vo6rkNR11pPY8VGPteF0raSUaek6JZm26ukY1QyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JnbM84iB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JnbM84iB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB8EBC32781
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 14:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716473002;
	bh=+7HKbhtDReAYU+OrNJPVlHbZvDwD4nr6G2QfNW0AYgA=;
	h=To:Subject:From:Date:From;
	b=JnbM84iBQKlyGpcEO3ZTKTV/a+hnjwZ9jAhCzsdYc+ve5SplPQJLKF6DllpkLURgd
	 AhdteO6fubpWTxdRQJSJdspHBwzMk6cDOsMYzkRIzHK19+GQkN36MIu90k9wxicIEL
	 Pb7YWXURM2l/8p0QEYJJSTr4Ywgdvh7iEMCq0GhcTSOX2NZjZchKXToBPOR/pODWj1
	 XbE7i792GN8prbnOXPk49pF6kXnG56kukpy6+oxHhLOIjpO5pV94Y2xF/MIwoSKhQG
	 evrvKvn+a+yV/y7HCIrTf0Z01xI/BBRTFklEPrQGQoa2/f/NYj2uhczHpAMMSiEk1S
	 VM8PEy78tKC0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA1E2C25B79
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 14:03:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171647300281.6543.4080075480653152519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d4c840c1d962b307d3adf1e98942990b4ab796159793ee2eba741a36e117d17
Date: Thu, 23 May 2024 14:03:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716473002
