Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 412CD54BD4
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722086754; cv=none; b=fD7S7uhnkib2bjw9GxHx1rELTQ54jrSPzYbL4gPl1i+9V49tQD3ueGX3bq2LaeIjf899cHm62xcnAMKwARd3d5Vy0DJTNmxa7nz0htujKm/Pjedhb0xWto2Z1QMIAib4mI3kO+SYzQdcCqEqNYSK46T8h4hS4TvAczuTbMzIaOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722086754; c=relaxed/simple;
	bh=Fz4U08PHzQAziWFHDsz20aIaQ+o8J9c1n1wppW7POAg=;
	h=To:Subject:From:Message-Id:Date; b=qYmbhc3retxeYT6FICQurEPXR54Obsl0mCHewC5Nw3vGKgyUTayr2t5Dt36qTkNE4gQert9b3xoM/mia/m4kgHV99imACCgmaJb4sHVJZeWE8FCImmuE0InK6TcMECR+DanlpPM409NcF9rPR2OPTHC+Z0ByGJ7VztMEYjbibL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i+VibpuQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i+VibpuQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B34F2C32781
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722086753;
	bh=Fz4U08PHzQAziWFHDsz20aIaQ+o8J9c1n1wppW7POAg=;
	h=To:Subject:From:Date:From;
	b=i+VibpuQ9mKssPEygcBuIZvc6xglcN7JW8BENcVILlIPnOVERGodCKADs33N3KomH
	 Brwl+TI8VwBaQZIfXcaqFrK0aSAxdaYFhmQj0nGbwFl37RLYyPK7qz3Kfg6ENQJG/m
	 WAJ1oLdZX3vSKUG/ZEWxbmYp2UHj55aE+cLACiFEnOadCCSRH/K5g952SMn5VQtlWi
	 X994xsNA7C+YE42z9U1ACX5Varsokn3k09sVyRu+1Y9D3+n1oyE30lUtnlnhdWld0B
	 Kge/Ojtc4Kl4inC5/m5zM71O1C9MOXEBhPKyYYEEyiVbM5VtEu8plxbU49cVudyR5h
	 s3gEjF/IpWKkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 980D6C3DA61
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172208675358.13789.4674297455624583935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcdccff07ca52f292d313a854b103a6ec86989f8a401efdfd9a784bcbb877d3b
Date: Sat, 27 Jul 2024 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722086753
