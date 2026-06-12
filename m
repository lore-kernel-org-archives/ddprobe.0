Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ADDA383305
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 14:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781273194; cv=none; b=XqvwiwmqlTOG6BuMzNlsiP+JOQ4stqwaOBaitcYFERWRv/Q9cQromh+X6oOQwxjK+pMT+cEGeMTStlHUgGRVvEZIZFucu4u0ss1x5lrHib5Li+eblzuik9Y6vyjEBBH5mx3EiBNFZAUXEcEFyw0gTb1tuxxivyKFo2nUz1Bjqk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781273194; c=relaxed/simple;
	bh=CGnS8jqB1pX1XbDCgWQz6rnTMTU/GPH59Dh5l6kRdyU=;
	h=To:Subject:From:Message-Id:Date; b=CXGOkop74LjvvR2fCCDVBS57W8Vqpkb4yQefAUg4/xudNyePaFNpcAB+uDBA4YGvV173CIRWDDw0snDIStDT+46ws5edEkODXE4vbwL0HdVpFfockGhnId6VDSzrmBFo5yS3MSmFlpaXSv/atnW8LAd7Lzljg4MEI42LlWZlE4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JkhsGXRb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JkhsGXRb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7038C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 14:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781273193;
	bh=CGnS8jqB1pX1XbDCgWQz6rnTMTU/GPH59Dh5l6kRdyU=;
	h=To:Subject:From:Date:From;
	b=JkhsGXRbfT9utG1j61pBPd35Dchk6ht6qiut9M0lzmr8wTzUCuTeOgd868nm+JJlj
	 /TkH6RDCtCvSoQlMjrPCab/HwKV2+6ZakF7SlnUMxQBNGoEu/V0AH3OkQFw4cjkm8/
	 /J6945fFA6rlHqylU71O/8mZaxpRH3HUWJK2dW2bdk4mh8wkxu6HUB9J9YntLiyMx8
	 8V3ugftrQaZNVnnoAx1WrdbLtSvdiOH2MWS3AgPhn8j/UrTY3plOjCN2uqjvk/lXX1
	 r8uE66pYD7gjPahB06lAqJSWgpDoMZibk5VJgIkKqFhqPbFkemGuDAwKMr4bsoGkin
	 J1LkB3avLcMYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD197CD98CE
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 14:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178127319368.1319.15641052436834036252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e4fa0c99663aaf749135bf35612f1c46f64a0291047b0d4ee13cbb2b34b79da
Date: Fri, 12 Jun 2026 14:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781273193
