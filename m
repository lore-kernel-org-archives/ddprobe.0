Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 340FB1E32DD
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734109554; cv=none; b=I69SelBXOn/++augRqqcEis+rBYtLX49Ej532mTYStrzZl0p0I/4hNfibAAgqJ516H9DC21PhiZXWx0SSY7C8sCXJtl8+69SX1SmyNBPtq18z6bRUPQYb11/+dyKVdhqXlQcqSC3eT+dsYyxwTg9/CnDlQBBcLIM/55dG2Cd4+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734109554; c=relaxed/simple;
	bh=2OYTSV91gkHvvFX9sgUCk+n2IvX37SWuyLAm8kRaODU=;
	h=To:Subject:From:Message-Id:Date; b=M0qWQ2BkmdsWtofrsw3/hU7YTvMFu+ufTAXaVtgVe5+PAnlehOC0RQSOEpmWywayLFNHmE356UizYfX7v8M5A3yr9IeIj2voW0/G+/0WjYdezlFARWOfAXDkdWwWubw/zQnT+3Bt6/J+VjNehdaFF2iw69AOIB55fqEBl9Lmzj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=unJ/JE8n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="unJ/JE8n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA804C4CED0
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734109553;
	bh=2OYTSV91gkHvvFX9sgUCk+n2IvX37SWuyLAm8kRaODU=;
	h=To:Subject:From:Date:From;
	b=unJ/JE8nNmhJ0AyiKkIknRCEz4wxjRnWul3pjQhuxWIMQ3esNgYKN5ETaVegYnfEq
	 NNhLcCvqIvYfbOJ5cYgbfD1CkzwXvv8OxmabCA/8tLamUv4yELe8SrUfvAd3g5fmiu
	 SUAR1Bn3PQDIBnOkOuDZy69NCz9JS/XoNkLwPlY9RDImxPRg0P0IIWQarpU2PZo+/s
	 omhVeiTnRAjaC8P4YEU2Qlh9/uetC9Sw/SA9CmY2n5gtkKcVLKGiRF3g2zZdKVyPUs
	 3A77gia11zyFJziqZs3Z8bAd3dnZKUh2N3x1iDkF7KNL5XiyX33YO2iVIYGVBrllIH
	 2XPmLtupHKbeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4846E77182
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173410955363.7018.4582889649381335001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b7140342eef77bdea35b0c4b29ede27b1737561b34c521ebe9d70957e0b83fe
Date: Fri, 13 Dec 2024 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734109553
