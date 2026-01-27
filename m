Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0D2131619E
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 04:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769486633; cv=none; b=NnoBKsH7xEglPqhwV7gXQJkYy/hz1d95IHnT5AvtNQu8t2sSReXYu2YzExFvfUiu6J7y6h1X5J6CClCHpDhf4JSq0W3sMh5mh6oR+M0lhR4cnvdwPEoTnKe8rNILmM7Q3e7bmBX9TBgI3NxrnJine3SOPC2crTi6xAgnB0l4USw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769486633; c=relaxed/simple;
	bh=lBVulpo+kkbydRRk3togrLppMuuv7FkbYA81uRkysls=;
	h=To:Subject:From:Message-Id:Date; b=imWEKt13o/QqHECZk9j4QSXeqU3hZm89blSk7XAtehlZC6i4WiyFsVvcIFOF0rUwNx/6Mmc/wZJSz0zWrGy8YZnaZgd7/6iyJ7jUyGBu70oVebii1PRt0gdCYwIauhk0NVUtcGuY8ee41GazOQ7fvWL9bJOaVbPDe3T2Xpm/tus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L5+v3zUl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L5+v3zUl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A58ECC116D0
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 04:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769486633;
	bh=lBVulpo+kkbydRRk3togrLppMuuv7FkbYA81uRkysls=;
	h=To:Subject:From:Date:From;
	b=L5+v3zUl3adTaLfy1tS1iD6j9/IyDn66UTWqGRidNisx4VC3JItfWGtHrozYWGefU
	 IhoXbq/boqoethkdyuYGiIhaUrKlP18DrJS2d3r7vkROJOwJotVHhL15m3V3ZW72AH
	 515DiVqBbA0LYV6g7ZmtvZFmQLH10bGT/ENmty40VPkbI38RXzouTS1E6Xx0EffJet
	 Imatg9kDQedymckELCPpbsAHzUZFVsO4hhEwyBnwaztTlmfxz7KDXQ4KmMwTKzWESw
	 83z7/DJzp5y7Qr2i5oT9arY7QhErqlw5y8KYwfTsnVDNPVxUmmy3mJ0uCIohrgUw8b
	 yKCcv712XrMTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9599BD25932
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 04:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176948663357.14675.131883524081193124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca121c500019bbea17522828015e1670984b01abf8ebbea3a338df05cd38714f
Date: Tue, 27 Jan 2026 04:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769486633
