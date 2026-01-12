Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0183630BF52
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 03:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768188234; cv=none; b=UbXVxF/IB4OoZiDUFuvx78zy6Iasvoff6AezlDrWf/+nvXh3K3i06rmuOM5iIwVya/cawu1anVzVTCJ+Ij8ixP6jKMwzhY9/AsBC2oXQkVT/JV6SNGkU1TCJ+RSo99ndvi7/4DugTrcMc3WAGyhie+BURDQPoCPG7tMyqKI1+r0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768188234; c=relaxed/simple;
	bh=GaVd7fN4WX5Q0S9hDfTOAJyp7WAdKFGE86rQcqtheME=;
	h=To:Subject:From:Message-Id:Date; b=bpFFV6A6ecUrxk/nf+Pkje5no+TCwJeulPAb+7CQXMwTPEVPHFSLNzMgHgUdCyoJdlgPlNQKL60J0kbbuhRfG596/pNkbIDmYTgc8dzxXXvD+RuW50+m+Uwkhp8CMYiO7QgdUf8fNLigdfBtCWjXMPhpwuUUb+zb1++6Eyh+a/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IRIZrHJR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IRIZrHJR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB82C19423
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 03:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768188233;
	bh=GaVd7fN4WX5Q0S9hDfTOAJyp7WAdKFGE86rQcqtheME=;
	h=To:Subject:From:Date:From;
	b=IRIZrHJRQnJKjhM6TNoTjLIndya4dHfac9cpNDPaWkniL+vTvXJ3D85Lxodd1Howp
	 c0hodSybdwR64li9WJpsREyU3JkdDoFHk0B5gQooG8Z7R11OZmSkQZwyznYL9B/qSu
	 UGse+X1SXh0Y9O2pISrGa1/ye8GgpN6DpQEp8Fwid3Qdbc5Nns20c3/eYXcw2L80Za
	 8CZVmUorD+P1wHC/6vhH6rI5Gu9ulY9Ob8/2vh4XZSVs6T3qEppADSDwRGjSqi4w1M
	 7wWunnRlf+sth+/ywbt/AA73P/1wqXD1G/sKzrqdsgnHLGOYSvw1U+8GVtxN2Abf1j
	 9Kap4jmhrtYcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F353D25030
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 03:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176818823357.7669.12427092881600481066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29fa72d47634d70fa4446ee6750f8a23cef1c19be8119f096554e75601c24f82
Date: Mon, 12 Jan 2026 03:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768188233
