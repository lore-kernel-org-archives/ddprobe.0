Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A35A763EE
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 22:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718837363; cv=none; b=R4POupPhjnPvhJUs1mO3R3H4ZPQ9BUu/pOQDfu9lF1R3amYkIJgjmgjUOUjI3duIQN/KPaL7KftBr4uk8V/P7R0IFXlgqLwkwfAIy57mFh7OLjQ3k42mKWTOAjZqdFeTBOo7+md6rWfmp7Mrv9LjdUhtMPr5c3wF/s1DmsnP0VI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718837363; c=relaxed/simple;
	bh=68fj4Zs0MVSZZ8g3axkBrnqQ+hkUuC6ne244z3On7yo=;
	h=To:Subject:From:Message-Id:Date; b=PRmS4XH/d6/MzqxtLW+GGV0fOzU/VGHrukOx0NcmLR+P1YED7KEX57fc0arcm/qUJRHf/aoawXf2lGB6nhDn4C2GhzpDD59HP6DYIWndipwOsNwTc7FYvpiNzdPap+mPVY8cjqgDgztLx/yBgILLQ04SGhubmtLDpgLfrMgk2Kg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j0bcQtul; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j0bcQtul"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF906C2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 22:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718837362;
	bh=68fj4Zs0MVSZZ8g3axkBrnqQ+hkUuC6ne244z3On7yo=;
	h=To:Subject:From:Date:From;
	b=j0bcQtul2RibFcx7WozydCm2hL32KvD8NzOZW53SO6monMs2k24774tPsxdfBrCXA
	 Dit6k2utNoC5JzXCH2IBPfgFtMc1/8zoOWbEg9tzLP5Cd58CS0rV6S9Nb3JAJ7FhuW
	 JvBcKT7Md1+1L9M57AZc0wXW64+lB2VSgxSV8h5uurybNu0CQyiV/nQrDjEk+tyQFl
	 lXdZlp3RV3MkuL8hxL0RyBB4FFi6FMl7hXWLt0At+0wXwoSjlyLuuJY+tvIq2mUErk
	 XJ80QNVU4tMwSX8fbFmcmv2ncIJ1pVWzwMGvL0rp8gKVJByOhheOM7K/c+0qHSRsrU
	 YKVkqWTB8joyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7A68C27C53
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 22:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171883736276.12549.4889401508294399291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5e52d7d6377e497aa5ceff161e9b2924c5ed9d29887eea031e0626d28469d56
Date: Wed, 19 Jun 2024 22:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718837362
