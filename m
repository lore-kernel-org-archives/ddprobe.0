Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 596381C860C
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 18:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741373934; cv=none; b=WGPsuCiWrUQdwVGZ9idEinvPIeAU+7QKNi5j20xY3W7odWSdFDRhIE8L9X2NbeuGzUHAbVXGzHY2MSFNHGVWF5c2ykEihkc/k5RUF8QUR+QvQ+ZTlnhum5CX2ltpTG9jN8H7v/fziy54meXXOnlMSYeXDgZaC+mF7Zzx4nDQmkk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741373934; c=relaxed/simple;
	bh=MO6tOcpu9Tp2UwhHNrBGt4geUeXEuYTPybVk6plW/oU=;
	h=To:Subject:From:Message-Id:Date; b=AigfomHjD7r03y+v0yClFPIhmxPDGLhMYhLfsoKDrCma3BSRD5FzZpJ14enGhe0VNcZyc12RNpT1fPo3kzI55vwpyyBHp+99FfDVyFxpzrA7j6zpMYQ0pkaA+zrNuSAALO2fqFkFVzdpdd9jE+dkhQ76Jct4MNXGuS71oQ90cKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I73O93yc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I73O93yc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC290C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 18:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741373933;
	bh=MO6tOcpu9Tp2UwhHNrBGt4geUeXEuYTPybVk6plW/oU=;
	h=To:Subject:From:Date:From;
	b=I73O93ychJJP6feI0HqpmJYwfU55raWaj5/kVQQMwveswfiB6rQZOWqbjB8VATO5S
	 PTrM64TDmFSXLZr9Za3V+9CrlwvC31Uu089OIxYLWBBBSf8AIMDz9xGKgiPRBz49mo
	 62pzGg1BGHYojkQowY2NxS5qcWnlIyvznytw0fOGbXyTaQjSAXoXWZY7H7utjS+s4A
	 ux3/3pOfavFYQ+XA+55Y4ylXsK+eu9MCoFnMiNGkgcyacP+j8iBGHpdiOBwce0vj/y
	 FGnbqXdvLWrklj1YFZ5nqXlUcbunA9d9oV24SHZPsYgOxVRoW05T9sYwFCyyZKsfHd
	 a1V7m8KG1l7Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F0AC19F32
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 18:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174137393368.31509.434662738338284081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d633a6c7ed25e50250cffe8f8b26b2c1245d45f3ebfd153a7a0350e8a429206c
Date: Fri, 07 Mar 2025 18:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741373933
