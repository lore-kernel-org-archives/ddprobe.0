Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BA2318BBB9
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758358794; cv=none; b=hMK1R3o9MjcV7+TCzCNYLuBBqKh78Jzl2JAAVh2Xqe0mYifnsTRvz5c7MEczCDT34A8cs7962F5LI9Rs6DyybduFoJtKfGICN8uIdHavLnAJuAiCxgDHdu6dS59fnuFlGn4l7i4MMEtZkxUOEA+T/4AmOyKMUF/IbKEangDAz6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758358794; c=relaxed/simple;
	bh=NGZX3a554JRJEwwj4WKB5DMw9yO2zgGj07eANOCPIUk=;
	h=To:Subject:From:Message-Id:Date; b=E4sd15Mjf8t2zdAsKMICZ//UvQpC9FCbgrhyhw7Hco2+wfmRlyI0K1xmeFyRMq8irH6ICToIUYlwBeojQszSw++MSXC3pCEtwXwqEb9WsIuSJ328jnvgufknVnMMc6eb0w3YjdMUyE37JETWPnKYqrHSJplJR5e2+Sd/vCr9qqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=koidYOMi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="koidYOMi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E42C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758358793;
	bh=NGZX3a554JRJEwwj4WKB5DMw9yO2zgGj07eANOCPIUk=;
	h=To:Subject:From:Date:From;
	b=koidYOMiBElCvzKCVkX3EdQsjYzTNpMWwWEQbeY5fsmQigo4bdVYKbVMWQyGR9dO1
	 1bFiW66oUf2u0epBO2IeTLvuxFqRVPnmcqjw6xYRigDIyZqrnH+VhOVJYpFx+tOHLB
	 BMbij4ZZvjHP3cgPkF0eleKyG3VfnNcv+lHki2NWYydY/ggbLfYsRU+RRpgXm+wKeV
	 zNXqfIiszLO+xhVP9vCvOTZUTCIlSm/bkyEgrcdz8fjPkqFMF+dTtsF33H6iQmWBN1
	 agWRcXb3xM2lILcRm2VgjROFGvgY61OV+rAdgLjUiXwPiaX+bJNgDvhuSYEwLf08Lw
	 kGTA8ZXlanYxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958A8CAC5A0
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175835879359.16469.4443890000919199696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd0f504404b9621ac634535e19b6b3a2fd13da519c0a66f0681944e63f3a3efa
Date: Sat, 20 Sep 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758358793
