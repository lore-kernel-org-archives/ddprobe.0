Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B0F9139D1B
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737976554; cv=none; b=Al5kDbFxA1FsPLWYpecB6iqsPlT+Zgp7Ju3td6lVF4pZLy7EXxJ1I+2r60JHRs2gDPT+lPJ+kSURk/B96EJu4UYfWTgXvYHVZrFakfefXb7mpEkNX7sN8x7Opj5wujFLzXUYy4qiUrXTdeN4wqUzb3CbsERnd/w2JR9psiuub4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737976554; c=relaxed/simple;
	bh=T4UD31Ud2pMhEzFPa+nxTCgf7xg78njsEosOqSHQz1s=;
	h=To:Subject:From:Message-Id:Date; b=iiTN1z9HzuYU4Nw94iC2i8fl8EMOWMJnjDMlQGnqMcSfwyt4PTvHyBRDQG8ul58jge0oINxBQcPhifocEtXW81cuDv38ZjVkaxY115dko2W1B08rv5EE84d/89HwFNZLSUXEF13RW0gt6PXzubiUoazRzBFRZCE7wgDg8NPP8xE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PvqiHwLq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PvqiHwLq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C91C4CED2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737976553;
	bh=T4UD31Ud2pMhEzFPa+nxTCgf7xg78njsEosOqSHQz1s=;
	h=To:Subject:From:Date:From;
	b=PvqiHwLqjU761+x/GDmDA4xm+Aqyl1qXWbCcio0hbSyVLiqSyfTC5w484SzIw3bA4
	 nRaV/MT6ksGcpBhKUGykNgvLcq8aCfk6uo+l+9YW6n+k5mwjwFeofpedbGimarRj8J
	 6zMpAp8y5b8nbZIE19K4fIyoIlUsESz19Z/LjZhpg7kFwgEgyJjcORTIOre/f4cQvS
	 /gp3s9sqQ3qVgSOH6WWIBP8XAJpGpWWjqiFrr/v/Du2ADKdSvrJ2fdwzPwkCyLXrKz
	 kh2TuZ9Y0ZjVq7eaIKQFrqVjfbY9Kd+11/U45rznc+FldfZMZEkDRikvI58vYTeeSe
	 IcsD4Y7W00EXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910E3C02188
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173797655358.15524.16779109388298352194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfa306bf412c33bd7d00225a18fcf64dcefb764aa6585aa3127e6b4ca61fa65c
Date: Mon, 27 Jan 2025 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737976553
