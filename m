Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EFF82264D5
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754341194; cv=none; b=ty8aYjeBh3jFRSCsNRfHrNLee48ZIgn0UKk+FajWN3bdiJEsA/h1Af7jvgP+6QZardz/cJeRou1bhS81Kdkx/WuwxgXI347U4BWQDaut/eotXuvO6yxXdMgmDdcUCezsiLFlptVpouVG+0jeqbFTvPYw3uhKQPzsivxddjlGFXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754341194; c=relaxed/simple;
	bh=mCKbity2RRSRm34E6tuP1p6ivl6xzt9eMvh4xkX2Rcw=;
	h=To:Subject:From:Message-Id:Date; b=hjaEQIOU8erRiRP7cTZQ3d5TMw2kiGwjVrjqwbZjAe+x20VOFsh1ERP2Lj3oNJ98A4jDCnPHtcTsSAFEVwSJWS5bYx+pUOlumRG9KrjptuMIZ6NltfxRWXj58aur4l4PFp26kadnyD2VeVdMorB2cZLrGSbVJwa1Jhvv99kHXQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CVNoSWUR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CVNoSWUR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0EE4C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754341193;
	bh=mCKbity2RRSRm34E6tuP1p6ivl6xzt9eMvh4xkX2Rcw=;
	h=To:Subject:From:Date:From;
	b=CVNoSWURRVFYSpEYmWzaNkPzctVp4niVw5s/klGgXMZn3fgEjuc+7FlYCeHbcyPx1
	 4sQEyn2+/Jm+vprBSolpSywp1jLDC8/BG/S3D6SYTlWgnAdAPE5BKOHIx+paGVWeeg
	 Bn+og6/lJ4fXLL2ajm38J/1iS0+ycnNLte4HXjfMKj+w5BkvKINiz+pSiN/CstHsQF
	 7TDlO7tFOCZG1MXeyxrwJ/u56NrGTOjvw7+gi44XePJmvKJMB5ofWNF6WLO/Wm1qnd
	 ZIuQJQ6r/IrRkw1CLw67wrVwmhcIHaBZWeK2QO4Vc0r3K1tfGNNPH7yhn7Ha7F4yJ2
	 yCXhyyQTxuoxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB40C87FCB
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175434119357.19171.291219628829556357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e25c83890309e0f3c80ead75cd6218045c12f2f6ca743819bec02388ef6e64b9
Date: Mon, 04 Aug 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754341193
