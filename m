Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20A0825776
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 14:30:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785940237; cv=none; b=gldViFTOulF/OBK1+8spggDC7mCzN+qLuuOJuwFjnEayymG+6Ph9mHcXK4rybLo/HCafMe7JYjWUzyNk7y3GxURzhqtHZWIMDmivOKCdwLrz8cQdJ74yfGiBdqt/nt7WPZi7quh2AuMAaTleymus1DOA5GkMHOcgtCUE99PN63g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785940237; c=relaxed/simple;
	bh=+rqNU4om6fYsJ5aiAMMQpYCBAjSzPhI8CuB5U8lmST4=;
	h=To:Subject:From:Message-Id:Date; b=Q4NKudT0BTtx6+tKmbGY5mIIRCBKZF2JYVW6ui52WC0DVzkYDwO3/SxHjxDUWkbDI55qBHZaBwAwfP8anSUj1TfAqVxIUD4JLNMb9iPhtMl91sz7QC+vUA7wmJehgtxxMGa82GhUueTxDFfot0ch+Pa1GH48YV1e1Hmd8EUz8YU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BeJoO0y8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BeJoO0y8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D39C0C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785940233;
	bh=+rqNU4om6fYsJ5aiAMMQpYCBAjSzPhI8CuB5U8lmST4=;
	h=To:Subject:From:Date:From;
	b=BeJoO0y8jP5jty70sHWCRA2ow0f+FoBS2kBnsGin5xW/H3sTzyTP2XDhrznMb4/PY
	 78eyZmzUpEaHxZcDXdiJzpv+QGfRjIR3nPms1vF5QJwlo2vpfFcYTYrJKu+fWA10de
	 ETbg6fuZlTc2RPFOhzjaUsLeyBhazA7Ka5onEtJ2b+FarxGkeq8cpqmSTwnsHRmGUE
	 uNuqIeA1wokuWS4XzHrGauwSJ5tTbETfugZ+R30MWlUO86jyAjDkItXPu4/0jvRrd5
	 iWVK3+bcbwFdsYcDgc3TjfBVVOONyZR+rmRLLeBpHx1YpSivKKSWaMZPFLZVbw9dAW
	 SIHxLqCYDXAuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B18FEC55ABA
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178594023370.17348.12064004757545708564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9b9a3babb1ca43faa212f5d4abd6bdd5a16aa0c7e4a511107780df728cbcdab
Date: Wed, 05 Aug 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785940233
