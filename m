Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2226E7A13A
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 00:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769561634; cv=none; b=dxSjQWJ4/DTLE0YABU7KTVZmw+RcVR+XwW5NRpaFjqAcQZ4m2duyG1aejlXA/5txvhZobjO3MMN1M+tVRJ71/vhilSYvaUaAJU/7eGP0uzwdqwxSjswaGuRpbhQCl2MoudzEFo/dPwviVwfzVAoYlEP6NIHoNlCB0V9xjsvwgJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769561634; c=relaxed/simple;
	bh=mTJMvzzZQ36TmR4BYP+Pw/35tV8awEM9OyNHAmlNEKE=;
	h=To:Subject:From:Message-Id:Date; b=QRyGnj3maKnUsOv8osuEXxG408Zn4UzC+ogNemDwewAdiZAyTheglT4YBMyFXhrNXb1RtOArYRuMvomIgPF2loR/ZxgOE5n+ezlaISr1RNKgcgf2kUaYgQU3pBligMF7jhn+CaGxtax8H22WeuDGRoCEtNT9uJ/XeLQdZOQSGkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tIyFmk1K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tIyFmk1K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D09C116C6
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 00:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769561633;
	bh=mTJMvzzZQ36TmR4BYP+Pw/35tV8awEM9OyNHAmlNEKE=;
	h=To:Subject:From:Date:From;
	b=tIyFmk1KgdiJ+Zivd71EK4tfVOb0/KkDvzIW1zGS/UWAjwTMcbC8SUnWGDFTjuz5p
	 Cgvmcb0k9ViJI3IdRR6KUQuJbQSKCy8h3ci4ksq+Kx7EXkX6VkFIe8fQoKbrPCMiW8
	 sMitgUEtU1RAZ/RUcz9XGofcilr8zKCtP3/jmcQYeQHKp4dtguZ3h8+LNgyqj0/rVl
	 IbqUPFKPucz4ro4VndHOVzg4BNKNo7lE+uj5zVT5SyfsYJJpTxHgtBtGGpBqvWniCS
	 sq+A7RzuRDTGfPtW4NeoaDA1O3vGtfNgNJ2AwtR5m2MFH4S5iupvqpj8++5lOtk3ly
	 B/eoMsi34lhlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90494D35660
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 00:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176956163358.962.11415097403678429213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1686fb84417641e62dd352ed4c6026b00a81718a18351eadd1aa30476b36d5e0
Date: Wed, 28 Jan 2026 00:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769561633
