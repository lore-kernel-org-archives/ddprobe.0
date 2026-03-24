Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19B6A2459EA
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 21:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774386894; cv=none; b=S7jt6NyLH1kbdfqb0UCM0Ht+Rul/rFcZLxguK2xc+5+xS4auQSj1cgZy/hPlEdIwgVeyVcCFJJFTnXDq08EwRrp1pK8AxeHm8VoiB5Oh1HzPWD95A49kIVKxMF/U0pY85aG3El/puIRaBErufDfXhZENRcHnYvfGIJ6rjbZAmJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774386894; c=relaxed/simple;
	bh=542d+F7No66C2NCuD4yT3KdAeVy84juytItZCiHIbkc=;
	h=To:Subject:From:Message-Id:Date; b=hAyPgVWMBsF/mdmwID+65SivxSOEy3apkYahJO/9UttuvvAVAxfJ5gxQ/SrayC0+GSUiP2QHH13mv38rs/nhkaXBKvF6JwK2y1Sa9GiU26kgJsXUIf4yK26huhPg89AuJBd0d2IGQAOc/HL6A1jNFF+J/bsmZ6ufeNT6oiVEFrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NCxpbfec; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NCxpbfec"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFBAFC19424
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 21:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774386893;
	bh=542d+F7No66C2NCuD4yT3KdAeVy84juytItZCiHIbkc=;
	h=To:Subject:From:Date:From;
	b=NCxpbfech4HnfPojOPApmyruskZt93CoQU5xMVwpmsUrWqpSmDtJQPFSiBNA+/FRj
	 tOU1WQfAWFb9fvyyPZuid9LsjsSJdAy4oGZ6pULoBM41ZcIAwcyshOlvx2NTADjmdk
	 aGZMCEXjtAUxTSpu+rhoUWBRv6SbiP4VBRi+Wmv+TL08v3U5dK5KPlBORQRdesXayk
	 OW6aT0VuV6f2pnoeA4MKicjuOyIqT+YqRLJFGDj06xrPZ2VveD8rMy7gpn8g/UAVCP
	 2K9swyeM6QTRjpeZL/oYmVbT8NUbImiQiKv+ryxGDBrfcfGUYJY4eombGANh0Dn6UL
	 R1gY7fB0p2OCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E3F5FEC116
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 21:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177438689363.6753.7918073921445457055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5be75a648c0afeaa53623d856d0da996267ed5188a50d5f05d02004aac276026
Date: Tue, 24 Mar 2026 21:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774386893
