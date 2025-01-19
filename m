Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4283E74BE1
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737284754; cv=none; b=kfUCYYUunWZwxZdQdylKndr1WWCX08hCRjoQPw7zwes6FY9A35d7KCwthstq+hIcRAOX5r+vVvkaVTAe/0yzsF/ku1eZkn4kLKGSg5uOp2BFdhMwS5EqQ88pQOE/Ulrkn6bMkbMEIUJeP005J5l0L4aN22IxPQIyxgFyXg1spu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737284754; c=relaxed/simple;
	bh=Bb6sPKoZiHuqfe8P8I6Jk6P6oZo+DERjLSxz2f8CExU=;
	h=To:Subject:From:Message-Id:Date; b=lKc6T0XIi+3Bl422xOujeFAUA7laMqsRh8i55HpfiSm1H5Pog9DF2TERn8I/F3Wkygze6jDOvWmLG3tciUctomeJbiQe4Qmbm48wJK297MQLCOMalUNqjSWgriUjg3pZ3Jd3EYNlIeBZekaCk7eS9IPvPl/Wc36/Z3LqwBudu6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jpnpmwf5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jpnpmwf5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA9BEC4CED6
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737284753;
	bh=Bb6sPKoZiHuqfe8P8I6Jk6P6oZo+DERjLSxz2f8CExU=;
	h=To:Subject:From:Date:From;
	b=jpnpmwf5jaFulGThFRGCP3LJ0zzMk5jdTOFyePSXT+p6e/FAqSx3CZCtU3VrrGl9w
	 9y5Rd4AKqqzxNxZyTxDWao5jHywlc243FzvVJavoJMLHjGuAqExVIUZZh3IG5aAthR
	 SCtoDZPBjYjtJMd3D7hv1hz/eQ0tgAMLBkGcHm+ZKlDgdFHeBl91fWfSSbwRsPcaKa
	 /ZFEmRCvoVyI41Bkgqd6tA/fp/k8QRfpPfuBqH7VmFdsHPHyl+N3OMtyA2Q5fKXQtL
	 GH2po9sLNyDFxdgmgMYHC8DDDfPkbSIqBvSi01Sa5kIlZ0slYb+NuLQs5HIRtQ9qfO
	 pPY9j+pghShCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955CCC02183
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173728475360.22905.12676358821530544727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a07df4bf274bae377b8e033c811bfa63448c67bce9afe648749cfe4970eff3bc
Date: Sun, 19 Jan 2025 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737284753
