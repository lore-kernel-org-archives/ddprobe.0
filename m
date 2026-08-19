Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5818B12B94
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 12:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787142634; cv=none; b=aRkEUGqmn0oK+C2soXyUFgBtTEYYCVcdJU1F9TNDQ93F12raeFTVl4ObqRjkCNl56IGawUeTxUbr2cKJ51hoIa9G+LdApq3BQ/4IzSA20O9iQyt8RNxvcT0w56fwwBWyiwtnTv+23D7PdttH1jLsgmw//t4fFLVwkcQmGhdB00o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787142634; c=relaxed/simple;
	bh=yi9uKulKR1ZXvlmcfgTNFCI0iy7aYJEE5dh7j2n/qW8=;
	h=To:Subject:From:Message-Id:Date; b=AlDL8ANMnFQ85id3I6FzDUIqAM/wpxTlLx5WpEyk6bCjdB1TSxVU6D188fXIJZkAMtKNHUOgcNfVRhcDankJ0SHb6cPMZG8+0noaqJetWNm7n80TWzY7IgExB4rKIxrMyL0y0BvMQsGVdZzsF86AIIZ3g2ia/H59E2oMdGZ9NBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OCDYvk/D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OCDYvk/D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E59B1C19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787142633;
	bh=yi9uKulKR1ZXvlmcfgTNFCI0iy7aYJEE5dh7j2n/qW8=;
	h=To:Subject:From:Date:From;
	b=OCDYvk/DIeh+FKettNcT7aKNNxYi3ug/44EPi4KGpv3MeApMNNWA1VF1pbLLLcIjD
	 m3zWJY1yD3CYVwTGLDwlg/JpkibJ79pHLQhcn7JWxktvYf2niy057s0GyQxNxqvu4q
	 FJdUjVVy0Gw76wR4YttZCPekCNSnY75Y39dR1LrMyrNNf+6nf134c/7Vxbvh3MWizc
	 fluj6/IViZbDDQJPrjdeiQ+c+kUKd3W9Nw4l19LpgFChQRZ7hlD8bdNFk5L2QSG5v7
	 mzQo9xXa0HHYk6sFeiUjRXmDX6Aq3MM75vsV6gWhNKkGCmLSbRpr/WcxpJuCK7kyee
	 mDUxAhPgvOwkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD339C5DF86
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178714263374.25916.13690702984143374025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd9f79f8cfed50173f8b569cebfd25b64412becc80518db4e579889f5703302c
Date: Wed, 19 Aug 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787142633
