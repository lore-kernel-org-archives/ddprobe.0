Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38747CA52
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 06:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763362314; cv=none; b=ECT7PbZHiFNFbaGKcbgR1De+C2sjotEuifrmYD8l7UXXnajkr35vGWi8c+6fAYdnWMEczzsjW6F05bZqcOpZgBGDZoUO1wJ3QAiJ1Wu1GTav4idGUeC18Z67mq5Ga1V9ZhfzvnrCsDO9cPfNA22a/amo9rEks1WFNxbp8XqSWLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763362314; c=relaxed/simple;
	bh=eMZ+La+fC4uRM+6jQLK5Z/pE4a8fygTjaMc8+ICDB7o=;
	h=To:Subject:From:Message-Id:Date; b=nv2+F5U2ela3nRqcbvjgIxJhu2ahZH71kVEN11S4VaQxEWciu0a7fl4HScCMROljsteIFdDRR4Y2qr6Fiix/zhn5iUTmlmOOJy+duRYyhdAzxUVIAsXSKvtXPl/PPpx3D/j87sGBqkaznjYjgRx87dtkWLak543Edq/bDuXO0Z4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YpR5tKRm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YpR5tKRm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3232C19422
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 06:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763362313;
	bh=eMZ+La+fC4uRM+6jQLK5Z/pE4a8fygTjaMc8+ICDB7o=;
	h=To:Subject:From:Date:From;
	b=YpR5tKRmQTuUC5cO/CxTLTiqi2VbCEzBVcqFQoK/LOwfUAWmAX/8tCyX3FKUqhaq3
	 54serC+HDcBIOFTgdnH9eSSvyd5T/dbvIovCWlTty75xnLo/H/i9ARZ/w+97v3daCf
	 CHG0tk3HuVvFQbMc3UNX0IsA5WlJw8dkSxNEzv9Kfpgd2M8GWbCBlTEgjWOa3hDude
	 NTy3WgWevKRunmYQscSl8LSF3IG62EyJoCahJLNPgPEoTLGibgFFCuhylaQsN2bpvm
	 gbPjTlcVpHgLgJMAgWdWxGXk9slsOubu2AXAA8AnCYGGqK2CF7WjdIGinB57wpUXBe
	 xsIoYBf5vbIGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A68C5CE8D6B
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 06:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176336231362.22963.16949598037267962527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 843dccccf97b5b09f26dd366e20e27ba8252fcaf268776f07c65653d59903664
Date: Mon, 17 Nov 2025 06:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763362313
