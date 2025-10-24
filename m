Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D020F30594A
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761295793; cv=none; b=gjm9g3P7XGje61FNy9dD4r9m519H6uQgz6xYP8h5mje/8cX28CxycrZ7n3TduH1TaQuEi/hcczypzJ6UImgd3Aw8dMUg9wizyTuiTvT+vDFAdINjc32GPqsq4WBc6h1m1rgPRGAt/OMXB0/R0U0wAXYrekSCbUWDaP+iP02fd9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761295793; c=relaxed/simple;
	bh=o4ox8CISSfcj/7KiceWzdT8hR/7SelU3Qm4/Jhsk8p8=;
	h=To:Subject:From:Message-Id:Date; b=ASfBYJMCaJ7n9IlODz6+XjbMnOpgGmD6kLNXJYqSKkpq7SY+iM3F5oXGKotppj1teLhe2C5kZK4qnlT513Zv1MkrSEuyWuq6sFAS6rIpTjhlognISIodnxDQFPqjcqLXixffAxMkso/Wjitswi9oQl956IsZqKlOiEg57JXdk/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mqlcXssf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mqlcXssf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF7FC116B1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761295793;
	bh=o4ox8CISSfcj/7KiceWzdT8hR/7SelU3Qm4/Jhsk8p8=;
	h=To:Subject:From:Date:From;
	b=mqlcXssf36wT0eX1tpPEvDxTf+lmeBP0ohVPnUX3SIXX6NV8YFy2lyME4EwgHn20L
	 cgbBvaeAl4opw1mglwtObxOZfNpzaxLYn7YiJW4e2dov3C6biJVSM05exYDfaHX/Zr
	 +zCRg7MjnjQIsH0519hiOMqvZCAqUUuLeWH3+t3Z6JEnW07/a9S0vdQDXquY/zjLya
	 qoaxFiKkOqtIEvTsjmU9Z1yjHH2jpAjEz9PqjcgAT4QKPNFpFMZ9dy1V5WnehAPHvs
	 o5kpgC/9MrQtddf6oTWjioEUohG89715wk1c95EGmYunQgwRTSnU1K0BL391RkPiQq
	 VZgfwBqA7ZWJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9006BCCD1AB
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176129579358.1768.14049112048164507628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d37537acc3c3ba5cd0de9db5a3cce548b2a2bb1aab2208a6f9668c4c9d052d9e
Date: Fri, 24 Oct 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761295793
