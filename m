Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61679883F
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 01:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788743434; cv=none; b=VWdSffbi/1XtySjWpBIlhJKUeRpXt/CDwPZQ5Hy97AuymzDpyYhWi1zoNuv1IwWhoLIRA+kiMsWPOwh7Cly4Wyx4zrvGy3n+RgZdikOwgcy3TMp9ib0bN3CpEubVaQK1K6rENFzPldMalBQMM5AX0RatHHPQvJWznbkDlPw/iDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788743434; c=relaxed/simple;
	bh=5UxdG4Xe6bM7ltQ8a7MgUmq2cp3AdFnMiTnFXpjijvI=;
	h=To:Subject:From:Message-Id:Date; b=bIJyMamosM7Z5okaTcakAyWPiTNg9zberD47Gi4O7JpSOFEvfQoGene0PiDlxqNU0glvJRdOT2dB6TNnKAUFh2/3yDBnHeuipeojuexlvwRbNyuzL0ic73Nk+lsHg+yQF3INv6ocuUGt+QgxTlpDGoMhScJanL9XR+45x7Avmeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nMmruf7v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nMmruf7v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D823AC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788743433;
	bh=5UxdG4Xe6bM7ltQ8a7MgUmq2cp3AdFnMiTnFXpjijvI=;
	h=To:Subject:From:Date:From;
	b=nMmruf7v35xFxWVPGrjnUdyv6D/5ceruNd0es8/VBRjK6j8x9YAEo0/ovWVDCso1x
	 /vXjBSycyPk9y2Y0P/58jJg6hzIEQaALw+4Fft9khiIE1X0xftfAGtRjiLFIoZitgt
	 jvYb9Y/azdeDNiteMxoPFUx9j+mk3XnM4TG9CEgM5ZlOVCJx5VWXAKU/4kRUI5cupn
	 1t+2SZK2hY67wAuzsdJKmVUBiJVKJdBxPZ5RwByQVXWwiCBOWOHTsA6Md3kjXgtPby
	 PzblGTpUyEQbSdtA1SWIXmsGtszH6LC4gAMYUe3CVHA5pC6dYtVljJtIpQlTlRGAvr
	 j3Dz5yxieYX6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5087C79F9E
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178874343370.22783.7016981013272795041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70afc7fee9a1d29dba1b4c7bb26652a352e4f0191c82a5078ea284719f16aa80
Date: Mon, 07 Sep 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788743433
