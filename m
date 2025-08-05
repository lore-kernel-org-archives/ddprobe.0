Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FBFD78F2F
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754426995; cv=none; b=u/i0GN6jmOP6uTET5TEFJHPTjlhaWNjZ6BmCeTCuqH4KzfaW1AkeYRC1ff8ztGXi4vmZME0XmHdg7tAab6NS0gLq9rolzI2sozGc1uhcz/rI9Xc5bWGahNFt9uYDM9DtgSh0BV7wyQMLSNht9hTdW/oo4QmgtXTwOX65M10HfeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754426995; c=relaxed/simple;
	bh=XIGlqnVQZRxXqF+duExmQkDQmjL35lUiRb5WNHhUm+k=;
	h=To:Subject:From:Message-Id:Date; b=XiuZAQfVSaIJWucWP85Ul3FS8+xCHhinWIAtJwU7xc6z0qzdOOZkFDtFUQ64C5kD6bfpZImENpiOtxj59GaX8xnL6e75pg/g+7nZDrE1doQhHdlFjV9FmiDfZ414f6pvLeKx2LbeKtCFdIXuuo/b/GCXExC6/nv63F0HCtpnNug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tes42BTk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tes42BTk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A20D9C4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754426993;
	bh=XIGlqnVQZRxXqF+duExmQkDQmjL35lUiRb5WNHhUm+k=;
	h=To:Subject:From:Date:From;
	b=Tes42BTkdlWxGaL93X0duC7FFRmaolWOVB6fobEdB2p6M2kVsOIdxCmoTVkQIWrX2
	 4/0wuPk5lvEIxVCQl0hY6r3d4tAMW3myO2U1fODO0lj3vpvPYM1wXNdQwbKWi5saks
	 w+Gw91un8LT7ISMqp2nWAN8e1dkKjPBpkFyY+8WqsYr1Nv0RPeQ7rHML1EYKcmebl1
	 J4uQBPdsXdrKB84+yhjhJr1MhcKngY0rDMvTS1C02rufWWxt9ibanFSzw4kaakz+/s
	 GQ9vdvG/XzFxs+SQ+exDc8jsuluZ1NxjXQg0PafarAEu9rJt9z4SI4cyX2SwPCD35W
	 YN7VG9kyAHaiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEBEC87FCB
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175442699357.8704.6180177568861241178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edf7cc170f3e64c313732b153835860500367e65064018060b9d0f9ea38a119e
Date: Tue, 05 Aug 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754426993
