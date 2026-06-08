Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3739439B48E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 21:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780953874; cv=none; b=ovEP7ezHHbuunARYjQwooj27nJM4VwdcNbZMEPFURzPKufCDZcFQw2PAAEzFsySC7FMxGSrTMfGCkBFex0qAqvRzsTRbUK1uVVxwv0cslSqGK/2eGqvraWvqzd2Q4LxbQVBKs7cnLquPBI288mNN+2dgUFAHx5SqgiiHelqcygw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780953874; c=relaxed/simple;
	bh=8TplDg9qeoG6361FGzQVap+oWStzLS0LzisYlqAgfyU=;
	h=To:Subject:From:Message-Id:Date; b=VbZbvMt2f1n0q3UWTQoxHp6+fdsatjK0l3HisZPx1ma5IoBoHkQK04EstJFGFGYWCJ49xqPAcgNns8D02/vSufppnA9IRbv1zuJZP/UIW0juufQQirmM8xS+5SdCe5MKUNpLcy2HX70IAkYVTge3CDR+NB70kwstfkiVRPMH7f8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jDBo7fv8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jDBo7fv8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF68FC2BCB0
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 21:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780953873;
	bh=8TplDg9qeoG6361FGzQVap+oWStzLS0LzisYlqAgfyU=;
	h=To:Subject:From:Date:From;
	b=jDBo7fv8Vm1S0kZBqGz9EP0bci5fWBZVQYGnZJ1WNQ3u+WzzAYTb/79NimwhyGroh
	 kQUFlrFJAJuXYPAqbY8iIWZmOIGzomVh50/lQvlvylhxdbSQEQyRMFmjFkF6amzTgf
	 yIx0C+cw72kg3Bwly9l1FkZIeCjsMdotWXeTVMi7Tw3PsjcW7ITsBMm0+2SU2oOClO
	 HtFnedc7PCbBTWkF6sfjXjlTdzC3bP0Q5ABBHGA8sQ85AC5sAJ7IEFhv7RFgt7mmZL
	 2ABd8o4Bb31HXt5KdeSbB5l86m2JBMaaC65EcMefT8bbGyh9vjQsBXrOV1zQXf8aNc
	 G7busdBQeTtmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB64CD6E79
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 21:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178095387371.976.8457771203866322359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 220df60498633f7bd85a0852a4f8a886ced31729bcc4afc537fc36d2a5764b9b
Date: Mon, 08 Jun 2026 21:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780953873
