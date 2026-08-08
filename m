Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 452B0373BE6
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 12:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786191034; cv=none; b=eEUoInTbnC4+bMY8FYpMpGGWw5JuUkE2fFVu7kpPi2F5SJ+6zanoL4lrbktmLqRNXFo+4cfFiQA4lldM8xnFE4s01y8TqC1VAV1htMoxDtYF4Kv69DYBvnwppaIPMd7SNr6hdeUysqaWAfLKvYHY/78CajbSSlw/49feEUTyh8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786191034; c=relaxed/simple;
	bh=+0CV4BIEc7Yg6FHqXhNaijy1zzI9oQ1is9OnSQKGq4I=;
	h=To:Subject:From:Message-Id:Date; b=R7zh/CvDUDM0BD2moKHojj2+l04IeRQ7s2CeWTE/IcmAkvpGSTkl2iwJRMcf9LCE/6SIOzv0drm8rqFk4IUxax+bZxhyuIzQMpOxK7U5wJ72ruh9NPi1bW3tAYQA0lBB5pOniMlh3nhPhV2b+CAv8GYW/Vj8bUtgBi2bo/fABX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IqzLNnL1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IqzLNnL1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF094C2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786191033;
	bh=+0CV4BIEc7Yg6FHqXhNaijy1zzI9oQ1is9OnSQKGq4I=;
	h=To:Subject:From:Date:From;
	b=IqzLNnL1sWm+nrcP5JVQzUaPhUlu0hx1MmcsTb9cpD+TwbodGLiDKl7/m4YpwbJ2r
	 QcBBaYzq8ylJHjIDvviEWDJusv3FUv/lBKQOzggRSkmeOk5SCGIyCZKBdzZASo9FDS
	 jFGlMAJmAq5+6+WPIH7g/XK+OYpho1iBNgY9y1psxQWLkKifWSnc9yLh0yUc2HuPHc
	 jNrt4HMlNcCfPhyHJLBNHGAipUxohCPaQKTX/hgrvB9HfxrsnuzwB6FdoQWKUjPkdd
	 xEpikRebNnbLOXhcXthRycduJd/2Ybgd+XUrVHcWBLNNacj5PPBl9D1yPYuRAvefGr
	 EpD7Xinf+g6Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB05BC55174
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178619103369.19002.5827994704301190276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3bb924379be6c17c36544a20c07f831c9f2153a404e0e6d40e5160b6e04932b
Date: Sat, 08 Aug 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786191033
