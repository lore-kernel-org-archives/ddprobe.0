Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 267D82DF3D8
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750160994; cv=none; b=JKZnSloywA51mgeJEgEUU/mZxv4Jem58odEjJYO+rW95f8pC+u7e9avvmGs/PsuMeodCYWDT0Zd2AycRFl0K/QfX49Qps+jFaalTBRoFHkCxtKZbprXAtZmLiqwI4fUegCbDYsUA2T4hlkg1wJIX/bk/I1WfgnpQfV+EPSos+B8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750160994; c=relaxed/simple;
	bh=gkbP2U6biopC1vPddN+0sF///u/kQEG8MF5B01HQP60=;
	h=To:Subject:From:Message-Id:Date; b=TqJoKvtNP4uJyXxmrKuUcE/9NPIX2Q87OHVUvO61Vi5IhpvJsz0YjqdWdrhKKPy40IT4vKa6vAkXgGsVyNu4xo5UPtJBjodoRY4ptu75W2v3xjhKm4QJXt9QXqXoyuFdV85jxNlxNKtqFZNLwUX3G2VvpXIulLrlPjpnw7Et7E0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AlWwU5Qx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AlWwU5Qx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C25C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750160993;
	bh=gkbP2U6biopC1vPddN+0sF///u/kQEG8MF5B01HQP60=;
	h=To:Subject:From:Date:From;
	b=AlWwU5QxNNhzuBKth4W9X2t0Kx6RYkm6/LqGtQYVV70pBGlHu/pfxWLQdWmoDslEc
	 pD24YqiZqhvUtCLgI+o6NDk09dJ4IxNqUmF1Cl9ENt6kHt6WV0wdjz6kDFNIPOK+W4
	 lzRRldwnyM885SfsULFccx8Lrr+MVD/RWqkh4iFBtww66vEGGat+WgFlOWx5Egp6lo
	 Q9l4CH3k4j0KECUrWV7QzdXBuytfeNweA/U0HFSI1nlos/RvgdTEYooOBJ27XYdDNY
	 EkYEXv1F8pLCLp5V0xd3VSC/Jac/eDnsRdlXlJ+Ly59REPVX8sU+A07i+aTfur1weB
	 750CSzKW6JfCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC41C71136
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175016099358.8845.9465764752856083580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7101c0b6b3a130946ea30694dafa59eb5cb1f110756ead061b1cc42c7366ed4
Date: Tue, 17 Jun 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750160993
