Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2356A2512E5
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 19:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741201734; cv=none; b=eeRdX2r8tJ+TXU4wVY91P4Rc65giHNePPbI5/KxCud7j1kEugwRbY0qAy16WsZB4cooYJZmGiMYaCmcxG6+RAG2Kr1mTeyiKeOHrBszL26IwN1NeU7A9/KkYMdWwUKpoSH9MVtqHX9iXHqO/W85TpUBLi7UA/p9233RYDYnvwvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741201734; c=relaxed/simple;
	bh=q6CDH4LEtYMzh0yYXbfrtGumQ7QAxsthAJFGIDy/7vM=;
	h=To:Subject:From:Message-Id:Date; b=Jid4gbZccz4a19uQiZc3DhBEvs7VAn9q533sDWsmgj2D5NuBcck+zPmvrQC5rbl8vBRDnWI33x8vJzpknbaRcXw4fh3TCaVN5UunYYGZC9YNPyhO8/1+ti9frQYs4DHNJHgh5xQ/Ry/ZSdxxDV1KUTnyCaa79Y825FG7Vl7yPhM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KqjjfiQx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KqjjfiQx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78B1C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 19:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741201733;
	bh=q6CDH4LEtYMzh0yYXbfrtGumQ7QAxsthAJFGIDy/7vM=;
	h=To:Subject:From:Date:From;
	b=KqjjfiQxVBMHAekoq/FF3ViS4isTAGfGhcB2SZL64bx7jQ50C44QB/p3Qo03mhTTt
	 KJ99U7SZfgYDm2Uw1+9nS6HNDNol5uaUrPc3nYpwG2zQal8R5/IuPpyL43/wPjoxvY
	 KPfxEGu1qlK9tysBv+gZZsTYdwNzurIOuu4vi4tqJqoMz2N04H+dfSNJjAI4AGAvW7
	 eZdY0qwYpOwAGLAMbUb9O+wqhDV25Tzbd7xs0KxOgeb3IvvqYSBnDGHvqW2AxK27tA
	 XaZBoWkj9JO54PmC2SU50gHksfhmVLUewdzT9AHeaTuWx/bhTmE6P1p5Xq+KUOnV2a
	 DiGVwcENiVCew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95737C282DE
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 19:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174120173360.12510.3534245505439881438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea7b4ef87819b73baf86e3d18e7b730c4deb6aaaee8b0abd9693fa73cd6baf6f
Date: Wed, 05 Mar 2025 19:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741201733
