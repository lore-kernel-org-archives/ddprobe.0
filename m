Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E71E73290DB
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 21:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776461254; cv=none; b=obHOjdOjsKQFRn6olTwkYpJRneOE7RJkXDBv/HfmfrniaSgOGiJ8WXpsfS4bBpOohhplkDW45AVrd/X6WF6MRyQv33ywjgAokxVNVS797VZ4VIZ3YLZ0BVht+08uhJwtrQA6YDcydaKhSvI91JpqwwTTZfI0l/i+mrUq3Mzom/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776461254; c=relaxed/simple;
	bh=7ttKBY5Ho6uhv0so5F1vih5TYGbO3I87bOsTB2fIGFQ=;
	h=To:Subject:From:Message-Id:Date; b=JVuP1rg1kYF4b2GgSF5LdNLDzRqUJqKVb8ITuoJ482RRz4a94BipyZjAqTo3c32EyRdDBTSa1TLy+YlVW12qS4cw+O7IFPaAb31R/R/gWHOgiaIaRV5NvTCuuF9SBhwnZgd/a6j1rgKPhQl9HnxvuUD0aA4qfK8srxL+cAhPnuk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=evuu1pOd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="evuu1pOd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2109C19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 21:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776461253;
	bh=7ttKBY5Ho6uhv0so5F1vih5TYGbO3I87bOsTB2fIGFQ=;
	h=To:Subject:From:Date:From;
	b=evuu1pOdE7Rg/P/MHeWcuKngc63jdy/BBofM5MVSpZkvwxdmhj14rA4jSHQkq/0z1
	 xd0QR0aJ/RcrKynd4WGzMb/M5mQ30NbWuKuruvx5r9HsFzcORI2ytPPip9+i1qeNPj
	 QXjyPPyKI8dszOoenMXop+S2kBzueFTB7Nqj3yCnVKUnkL8+CVgU5AhvRNyyLjEy0g
	 4esKN1DdG+1DrcZNvFKhRVpj6B1q4v0BDArQlf/mTr9jo97FbGUCpDfVDvHle0vxm9
	 irV9UvP3KHEJEXTJs8RxhhOjfr02qi4sVqgrASZCQhmgYhImz0mvq/Os/htFXQq8Lh
	 0qvbWdxHWy5mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0163F99C63
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 21:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177646125368.14995.1389731902790177056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5ee662011476fe026d8a41986a0978778df0e98889afb54531458485aac242f
Date: Fri, 17 Apr 2026 21:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776461253
