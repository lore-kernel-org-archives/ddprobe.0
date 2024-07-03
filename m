Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F5381836EF
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 10:55:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720004123; cv=none; b=RRskV3rvzuxCeA4dOUH/BJDNDKA3DD7GzCOisCov7XWSBZvNg8h/odefbuZDNmJ0IzYkNtDzOYAGqlH1v2Tw1YmmC9rjYSgmcVoxx9FAv7damMtbT320LYct27toWeY53tVH3b0IMNUeha7bCcLUGzUbU1ti9L6SUXZ8c67yyUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720004123; c=relaxed/simple;
	bh=saHwL+K8c8oDbjpC4Lrsrh5FmbAsD7tcS0oG16zjGpI=;
	h=To:Subject:From:Message-Id:Date; b=lXvK5mMKyvZDExpaCULU6hKzBHinxOyLFNW3eACxGt9kkjPcNc7N+EQgq2KaVuIItkFocIw2JIAyhtZ1i9MOVAet70xTkWlIfYyOTQO31y104gvJapXGqFERrX0Vm/bkzOoIoEFN6O55w/BuW5RZSAD5PWbcCDOb74DcVh8P6mg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P+X6PLE8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P+X6PLE8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D33EAC2BD10
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 10:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720004122;
	bh=saHwL+K8c8oDbjpC4Lrsrh5FmbAsD7tcS0oG16zjGpI=;
	h=To:Subject:From:Date:From;
	b=P+X6PLE8qgT81k1xTaEivAlZX784JT5aellTeF+2hrBkW0vFL0ANz5yKQ0JdN2a7L
	 h3Ad3z9DM1dHqNuCjPyt5yhvgoKMKccf8MvLTf6xaNw5BcB/tBK6SdBc/ffaAAXHCW
	 uu+k6dghcDImAd1c5H4nRQEdXiR0aXARlueZGkHdb1syInkiRLSQL5pOKmhezNlhoS
	 AUKpe/TpvJ8B5jPC7yNWBLdldLuZk4kKSVn1qBPLw4HEmlbTHRdFfBTp5PwEecUcFz
	 QbdEzpB1AWEnOr9XmzeLyJw7reitHBOoOwxDsx41L5Zu5Q5Rpy66QIzTvsCrJ7dLCA
	 T8+4VoVsV1jzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1EABC31D97
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 10:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172000412278.11273.4355143510831365732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3f67d510c48955f671f3d2ff9c0d2c5d8e1f29ab8ed3e5652e1acbf6ff67a0c
Date: Wed, 03 Jul 2024 10:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720004122
