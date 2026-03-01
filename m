Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE9EE181334
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 00:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772325294; cv=none; b=UDH5j5h8EVzxcexYnZ7L6uqj8b2CFCZlXgOka/eZkhfD1wjlWtC7oLRd5f5USNnJcfV5WjwBU4OuIDcMkAZuys0uFXoeY2aJJZMxcULBGoeLD9Qn/lO8aX9BoY0KfYFAG61s6USZY4+4U3kQTfLJ1Xd/a60xYDzdICsHa9IzDGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772325294; c=relaxed/simple;
	bh=MD8sQBm7oItYt8/5PkWHLA0MbE1O3qNZuE+wD3MAL3Q=;
	h=To:Subject:From:Message-Id:Date; b=RylkFiotWfGAAj/mKZkXDPyVEO193QN/EzKyLZGQbYEdEmGSVvOyvP6nXv+Pj8MHKezymHalNJEJAcJDpea1G8T0AdWkowfVfwKci+lINJzKvEaHaMSDD1dwG2PJ/C4c/U3pxUsEMAC6SOgE8/Srle06E4S68MSuuIi4ZQmuErw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sf+H1P/D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sf+H1P/D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F90C19421
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 00:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772325293;
	bh=MD8sQBm7oItYt8/5PkWHLA0MbE1O3qNZuE+wD3MAL3Q=;
	h=To:Subject:From:Date:From;
	b=sf+H1P/DmVfv0OE8+9mMTm0qebmiR1lAJ2xnxPC+bs6i7SOc5ep9ANwS2OKAShVmo
	 1dloUlMjAoy08/DujdfxXE+kCMsFjjQW+AapkSY5fAesFUdOCU4RMp+tmTR/1UYn91
	 XliZZRBVe5HbNdKnISLAgNlhRT/XeUsDfJm6RQl7tVHQ0407/SdZbn2LOmQbbSR7qk
	 z8Igh4pHO/j6vHTwDJROdwO3NBG1GLBYe4sKeQkNF+eG68uNnS/faU+uHoLSypuzoi
	 N3e4z2jYuVFPuRbkDJg0jTWJ7cRPhMKylfP97vACUqMUkHrsQGQxxkKTFMx+IZ6MOR
	 xhpCy0yHJ6oSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92709FD0045
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 00:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177232529358.8266.6426332152460472950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fe10866d079427f4b44bb6db3cf40dc182ee8fa59dcb8f1d651ca1b6a5e26e0
Date: Sun, 01 Mar 2026 00:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772325293
