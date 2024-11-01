Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B85C134BD
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730447154; cv=none; b=HhV07vvgxxtEM4A6PI/0DGdvBZDK+O4GwzGq2cpfDH60Y/T2TKv/C/5hfC2MesuJ6YqvpgTZOIjC47bQa14Z/r0xf2g6pNri7kDpD56yR6JqbFkTO9zebyBzrTL5gHZByCxcncRZf/tuMsIohRv9c55MYHa6K7ogHva5/PS4AdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730447154; c=relaxed/simple;
	bh=VfCeICJtLHBzjHpRyl8Enlkb51ddMmHisOsq8qZenOo=;
	h=To:Subject:From:Message-Id:Date; b=q/yxg8d4gZ39RWuon8pIKQk9KO51CBbQSpluKiso0kzXcsvQRuMcqJ+SRYyUGrCc+Zz5Jnah8OummIWEQMahtc23rLtTpN0kGTPBMoteieyTVpwYQ0o8vkWsU4Piy2JL3hqgBT2Sqn14owA7vI63A4gYYoKsNbGTSyDBQ9vcpqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WufAB6ia; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WufAB6ia"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEEF6C4CECD
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730447153;
	bh=VfCeICJtLHBzjHpRyl8Enlkb51ddMmHisOsq8qZenOo=;
	h=To:Subject:From:Date:From;
	b=WufAB6iaUZBXmTCuDZRz894f5SzCPwtQHrNmJQXbAxkRCyxPnoxU0o8fVcZszBLWR
	 Qwz1B3lTpeCv+GiO9uy6QFN8aIByztbciGfjStsbj5w1+BhD85jYL97ix9OtvFAE/h
	 kwBhoBrzd5lfridqYz4BKBlx9kbzoLvG5ow1gN4vlOH7i0YzHIuT6pH/nLcR7r6o0w
	 ZQz2vEXkDSpvy+6v7118fwwK0BpyBgosdYVWKd8hNX4CRmCmNTWuBwunvMYVMMvgML
	 AaK7fOIYjWx5lxyxOeVPWZMXzgFH+SqJKY7WOduaujxc3l6v1wbQjj4rY7OeMMAwlO
	 slSVp3HiEI5YQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B1F7E674AF
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173044715360.6460.13155908460967642943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7ca3bea22613c543b301464c94a8229f7ab7fea899da9824743fff32e62576c
Date: Fri, 01 Nov 2024 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730447153
