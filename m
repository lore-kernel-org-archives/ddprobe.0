Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A416231C90
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 04:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728102354; cv=none; b=VbRq7nAduEtuafhU7tO9jEbHy71jZasgcZ5wugjkNoXVdBZ54X8BBGLysLhGxhqq1LvzUlxuHPJ/g3AUOgyJpUFxTOCO+nQQ9AoLfbpA/4MVZZw4JH0dHCRLU9RDXQ4JPynKQMnwsS7U0tN+GGKsGsACO73v0RbMbpAamjb0sTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728102354; c=relaxed/simple;
	bh=YG5L3AgYQ3JzlzdSYt4v27XwkNiKs3LUDpc4YZmNh+Y=;
	h=To:Subject:From:Message-Id:Date; b=DY3LOsMzyP8bMNa+yZRoSaYlbHNOsbkigxnLCkIPE6Md9cBphSGg6c4aH3LkVwVByyX87vitPlibnPFfRBm86TsPauQpi7LhTkeifBiV62jVKTOaFcdt2fladrZPfMzkneKvH3KTWx8ahJUfVkyLOdnh4w7VauJt6i2zkd57C8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JD5nMn5c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JD5nMn5c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0777C4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728102353;
	bh=YG5L3AgYQ3JzlzdSYt4v27XwkNiKs3LUDpc4YZmNh+Y=;
	h=To:Subject:From:Date:From;
	b=JD5nMn5copGYgnnHwRuECGLIjE0A0IRtdlKV/VHsPxNlnsv4lw7vqckp2Txx83XTZ
	 PFMmXne91K5Q/pv0nSwA/n+IY9QTn0smjk/7q8JBgfweLEQmB/f+gSlhMtYWajPCwv
	 PD2FOtD+vBMhfXptcCK8Hny2IsOCAFV35rdC4cKf4nPn7HGymU8/ps0SxcTU1bWG4o
	 /a52SGX49vqlVc4TXDb6rpUkuS2ChOOKiCjLL+8NisgBopegQLXQgo+Xw60olyHKTM
	 Pp6JKLEbvWiasA0hAkl/ck05JkAmNrAnlIAWOGG835ShokLjHIvKL8Xt1+gi0tlRJi
	 6QxE2dXXkn+gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF7DCF886F
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172810235365.5878.660106758730513467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7a6292b09110c1598ad2d8c054660488e2f511c6768f3a7ba98e7ad5d27ab1e
Date: Sat, 05 Oct 2024 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728102353
