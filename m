Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D7651A262D
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749286195; cv=none; b=knnER9dcxjMO6ztMajyNwOelNjGEnOC/k45AU0NzIn/ODdXnEmVXmQoEZ0o0kuHs8lJX8AklomW6sAdboDB1c1pMMSl9admQXF412/R/U/lbekNQ+qh0wBGkRwWEsqrfZExpFxzw7wGZbnDd2vaBoiwnbKtNx9gYqLO2yBP3Ytg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749286195; c=relaxed/simple;
	bh=gheVvUqvlZVcqyT24cOwbw0880dp8BhVWMgJ9yP4Tfs=;
	h=To:Subject:From:Message-Id:Date; b=UNvr9hoaTcBM8It1Oq3zQyKB+TiAIRmQTQEM96hZe1f4GxLqs4ex9ncGMBzODtVH49qSfjUrmbYYAG57wTeQ6/bQQv06JR4GIFQFKuSYga0hVzTvlOgj4G/9OxlNb+AO7G+M2dQquTMyKzFZkp7OtvT6Ozst5rjR1CrBV49xc4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uTXNIPYf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uTXNIPYf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B13A6C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749286193;
	bh=gheVvUqvlZVcqyT24cOwbw0880dp8BhVWMgJ9yP4Tfs=;
	h=To:Subject:From:Date:From;
	b=uTXNIPYfowXMMWcz8LuCQhLmDFB9WVpovi7rlOcTb6y4pS4zcLh+pTKhQ+pn+Q7FP
	 HzcIW5YThzUivZ9WjsvrfqNPePDQG1hm/Wn499dQq9Sftwwf7D59H6h1C3387CkeNo
	 aGPQ2ARaKSnyYYHKco66fQi91WGTusLJf7XErLe7e8uvW4z80NliFjx4Xftskpfdm3
	 +AV8SoSbUeujqlgXhXpgC0CxaAn2acQE27sSGtV8GaOTa+/1x/lAcrxK866gGhnYSC
	 tjXv/1rM993dosO9COFUgurpKhrHDBw9jHIOHnaebYRTgQKgjNKYLmq3YREjhqIJ9j
	 y/4GyjdH0BE+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 979C5C5B543
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174928619357.32378.16964918361687232366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b301aa1ca5dfdf5fb4e183b9101418cbd965a4a23a704b33057cea45f6092b50
Date: Sat, 07 Jun 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749286193
