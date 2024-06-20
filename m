Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D1C3364A9
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 03:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718855963; cv=none; b=agqv8/setGTQjOwEUgoHcc4rGcbSGrfggfaXIzfRWxOpcdiJNuFCXrdlbGdSZfeV5D5GOitElVXXHYmw1Va3NVQ6G6Yny3yWPG4k2z/k6ASvFGgsVGiDB0IAsPK5iqWcajCs4OVpf4t8LWC7YCpDwkZPVEdJBGdw4tNuEwhxm6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718855963; c=relaxed/simple;
	bh=alWzktgVdp093LRKSzjPU2xmRYmiBpjE5Wgy0tOEEdQ=;
	h=To:Subject:From:Message-Id:Date; b=CUaYjU6ft9zWdqx//32VX46tBdVFXXFDIBCQZ8qgjyBsSof3HV8n7EUt1fB2nCOtDdAIfuiU8cbKKsBeFuH833S9GuILVdhqWydDPCUG0eF7sWVFxp+bG0hO/FEyqv+ynXZHtTvKp4Kaby9Sz0YlBJkPGp0BGLsaUTM7NoCUmps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R+mdPKw7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R+mdPKw7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E42BFC2BD10
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 03:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718855962;
	bh=alWzktgVdp093LRKSzjPU2xmRYmiBpjE5Wgy0tOEEdQ=;
	h=To:Subject:From:Date:From;
	b=R+mdPKw7cwhpmJrIAf8UOtJVvOjd1OrLGFje1axYXHjzdY8xaOLJauVfLHRAxnksj
	 NWzRzfsRTPqn4Bg2dpnI2Q+l2H2Vyklh3rsN+CqZnvB3YrKiKLFB8/7fWd7mla17az
	 eZx9oSr/l4+xsxO9EcEKe1AhhrivXpPExOak1ZyUvXNRSD/Uf4WH0ZMwtJuVROZXiV
	 HLFzTLwtkAlYMV9ElrEizMD9y1nXu4GDzKcIiCVxGtAC1+ej4zjgHoi05TuSLFHQcs
	 4lmq/ukdUkPtLWh5E3vlM+2dHSy6/pvVMo2/fExv+zd58PiGZmyYiBdJEd+ouToHFz
	 q2+o5nTbtgqQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7CA8C27C79
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 03:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171885596281.11616.1786807443529630722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de4fbd3d4b3af207faddbcde8f9ccbf247eb91ec975e15ee57131f1cbd1c1d51
Date: Thu, 20 Jun 2024 03:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718855962
