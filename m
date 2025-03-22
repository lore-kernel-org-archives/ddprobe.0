Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D0033C30
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742613594; cv=none; b=rXpd3mC/IGUFzKeFmPCqKUajc66kyxlZcE0GiOQuCXvzkJHUWHdpD5QVn966/OVAjQZitGcFF6iXSSGwrYPaxAgWtg/ld48W1pwRt46t8u98Z6YT8+ZsjdPz3/OnQrK1a5L4Fv624ssC04AcFHy28LUAX4jE4aUytJa1wChXgaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742613594; c=relaxed/simple;
	bh=T/4jcLi7ZT7QKunFVIAt2JHu/rxbbZGAK4N47UtzHVY=;
	h=To:Subject:From:Message-Id:Date; b=e5d05rnil1vddJgYSe05ws9PSAL88t0vIzKuWlg6tIMAWyMYnBRpvlcyCfP7DtJqim9C30QUmvzNyFqeEevWV26++Y57ps1KdfIv3NAhqApK8sdv0j5IhIHcO7f+Wp3QQxOKcoFOwjRKekioEac6CKXvbhuAJV4BfkNk9VnKCYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GGWnGwmu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GGWnGwmu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC36AC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742613593;
	bh=T/4jcLi7ZT7QKunFVIAt2JHu/rxbbZGAK4N47UtzHVY=;
	h=To:Subject:From:Date:From;
	b=GGWnGwmu/ko0pae9rI0wh28LpWbzGPlBVgFhRgOsIY4x0fiE3x7x37GK9fBbQp5lf
	 ARvNIyQDEOxQrGIVrLvUDCvnpJXJw7bCAAV0HfNpBidv6T0Ekx732Q9NFR4ppucsJ5
	 NFC1fClySlBFS8w7tY8PfmuIH65zdhlXM3j2VoQeZGgnCjCp2FSDM91EzMViNZq77W
	 Yq7aRGe3cQwkbafIu5bgNQY4TFD26GmIivde6Ij/JzZBfanzEdzMUTkkguRButgeDu
	 hf3vRDI+oiMaYVwB/tedIn/n+Dht8+P0HdBcv1sUIwJmGXWf0xcxLJM5htJJoosHLg
	 qSuVYQ9eb6J1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98A37C36001
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174261359361.17184.18040154682496161322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42094a7371e759a54b5ce1a28c9ebd9bf78e6a944187331946a57fdaec95a6e2
Date: Sat, 22 Mar 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742613593
