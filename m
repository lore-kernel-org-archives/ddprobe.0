Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FCCB145B25
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748301594; cv=none; b=Knn+ZYor8TeREDJRRL6YK9JrhhCxuSziwQ/bUNLESJpiG6yHusc8S//kCiiMIFko1X3vUtu9UEaCX+azig0xQDgQqidvW8OZzudRglrRhtsjIHtjBRKqFChMWbiUUYhYAZE7RK2tiTW34vuZUeQaF3jeaBjrUYQKTT1Afbh2690=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748301594; c=relaxed/simple;
	bh=8wZOnamFrnC7zXps/sTDCcGxUVj0OM83wwT/zpxb2fo=;
	h=To:Subject:From:Message-Id:Date; b=QeM5FVUD3mKqksS8satnISzJos71P9jnKkneDJjL+e+DDKjqhGPPMzlGDJSjIGuiT5355RGuQStxcsbjrf/iSTee7/ODcVtIsCXQlVziu4LFYyJTwXxtESLCys4WTj2Aj01UJp8hCl88lUQLXA5xxueU19DPNQWJROPtgGSNZAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ghcZK9qm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ghcZK9qm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1362C4CEE9
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748301593;
	bh=8wZOnamFrnC7zXps/sTDCcGxUVj0OM83wwT/zpxb2fo=;
	h=To:Subject:From:Date:From;
	b=ghcZK9qmsxjqSTFMdpfLg7hk3VaPkjbSwjX6ncqWrgO47XY/q1o0nROhC6T+1KJ9C
	 Lk1GrM/utyRCo0Q5Qq7x3DlRJAZDlZWxEhjWFNQScdpwdwdSMOx/cCMa1sVcWu15zn
	 186h+LRw3U+G8ZlJL5rwDLsQmoNgskWTFr/ojMzju/55DejHx4hJeCjE2xbJbyE86u
	 /YtuoEvacgbYIOkPytIFNExtJRNn6x9s9h+E9Xflz7dBA/J2uDMc3HAbsEmUOt7cFB
	 /RqfXJv1KmVxRrFyN5fiEbpnRlKU75UWMhPR1OUlMPhEAuwj/yjpntFhLHcBFGH1Kv
	 gsgLHWBbCxIaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFF3C54FB3
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174830159357.30078.6617905636036141036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fdcb91d60c67589f600a2bf87fb277743e55a01967b9c7925028c394c5ca0e7
Date: Mon, 26 May 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748301593
