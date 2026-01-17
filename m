Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2054A1F8BD6
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 08:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768637634; cv=none; b=QRsq9GdEIWLF+F41/p1WtP//EJmXxvyTIRAKJePn1QD46klLXZfkQ1uFubZzKXsS1aR/Mf7Dbnof0GOCNweFVio0mzYaLDXwa1Y2fs/qBHJ8jnf2KuwWQQMmqqDe6S7gUsjHiqYdHXtbFesCO5lFNMghrQo/B03vNnJp8eZd5Ss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768637634; c=relaxed/simple;
	bh=dTLjPTGi7fCY5YCOusAIneB1dX+CoJt9RoUSuNApaDQ=;
	h=To:Subject:From:Message-Id:Date; b=F//5N9dlRoz+xBV+lSVvoAkLhBiSrtuhldxPGz61G5kpgBhxAE36NQ5QNKY0+ta2gGoJRac3X9ZFZkq/JaDBTCpXrRIYR3hoiv8eEoZOX/a7qEL8MZyM2NMXx9Btz5SpUvsxkhMAb8X3+6EyclDTG3f3lNKSU+AWueMaoDCI+IU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nez5fej6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nez5fej6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAD0AC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 08:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768637633;
	bh=dTLjPTGi7fCY5YCOusAIneB1dX+CoJt9RoUSuNApaDQ=;
	h=To:Subject:From:Date:From;
	b=nez5fej6EyT7ab55cEV1KxAZ3/Spar4+z1meizuEr2iRgOqab7aC9SKJawp8JmbdT
	 gFt02KKGENkgQH5YYl+oG0HpzKBpITYiaSYxuN7TrJfTiCTq8cMQvRTHk6I9Y59dSM
	 H/Mr6SpUh/w8nuPJ3Q2cUVZpdDGyQfN4UQSpDb6XoW8qtBTt2wrA4xH6EwC41y8n1+
	 MW4kpyzVZIqVUYUbzP6Ax/X9N89qxbrwGWi/GBWrcxm8pd7JhI/EokBLFEv33FtPba
	 khCjZAErtN3K5wLOt0o13WFS40dq//d3JuXKu0BXo0JyfTwdMZMdur70DQkeCuQOvC
	 GPQJBh0o+JZ8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95685C98312
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 08:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176863763358.19279.10315348067867885696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 927fb1b0a6ef82d43a9375ee22abc837cde08c733855b8e504758976724bced5
Date: Sat, 17 Jan 2026 08:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768637633
