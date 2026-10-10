Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D9C127FB37
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 08:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791619834; cv=none; b=o2LFREedDpFro5+feqt69eUouRJ/+vPcV6kMc+fT479sHEVaPacVX+GWZWw44CDNZ1ey0/vyTL0BRKdq6FzPM5fMEo2HWyPDt4s5wIAmai+zY6Af0LJqgNRDAP3J1PcySrx58bD85f8l0JJiXvf31xqEksL1YCZa26nCMk2rhVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791619834; c=relaxed/simple;
	bh=5LsPbbL7r3LxlSfp6A2errgir0eP4EEbeTPVP0thrF0=;
	h=To:Subject:From:Message-Id:Date; b=IFfBAmJJQVUb5qdNSjWSiQ7hNC4r2F1xApoy0oprebwwPeCwXt/h8aT586u75EjwS4DIkxCP7AOtlmH6ZifyoricdNI358PvI5xopdvYhkynSJcMiBxFoM9DRa8BlZFbF9ZJEfRPxHMueP62A78EDrVvzocz06QhkdRduM4fBsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DXvo1BBs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DXvo1BBs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD754C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791619833;
	bh=5LsPbbL7r3LxlSfp6A2errgir0eP4EEbeTPVP0thrF0=;
	h=To:Subject:From:Date:From;
	b=DXvo1BBsAHbQjvUMzOkjQBIH3kua4ze4ygZGdm/XQufU3QWApNVZdIL8tAoJd0+B1
	 RG5hdOmvt4ES6gBp91P9DkgOrRtHENizup0UcN3Eh9O+pIt9voBsMgxcbyxWeeOFVM
	 XQx2fhocjbp7gVC7DKBaGV92K4jwcUTHGnQWubwj43tLxmIcvoDVV4t3uNoU3zZ6a0
	 sVh9s4jt373nV6TJO0bLpW31lWlpJlkKWUbenATvfgru9s8G1jiqgcQUZ1XeNwThD8
	 Iaic0WmnrXO+ehbsb/yWnye0P2jU2u1SXLBYHakGjCg0q+VPXjLcc28LQ0qb8j6Otq
	 w2fDtu+72R5hQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9818CA6017
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179161983368.22791.5191893995322005632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d93d5c6cbd256e56dc32679ba28f58354c351ee30ed461a212ae831eb9a452ca
Date: Sat, 10 Oct 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791619833
