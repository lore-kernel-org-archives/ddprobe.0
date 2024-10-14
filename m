Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E78F014AA9
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728920154; cv=none; b=i+gqFhAw3a7gxqDrkdqFf2WSfkiXCmzr9QgH6mg1J7XLSQjV5QxFgVwbeU0arbV4uvO8ROqZA+snKwlTtFts13QDDwPgvGSqXDP01pTvtfbGR++eFHJL9EzNVhO7CPnuAEp13qsJPxgCxbpFj9BlcGl4bRzr2UWWFzkOsmnWJ3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728920154; c=relaxed/simple;
	bh=scC2kDcEMqpRKn2yR7VcCCitF496wRBqgE6KQOO9qwY=;
	h=To:Subject:From:Message-Id:Date; b=SdLZwZIw2li+FRy9inaoRQ9aKmoGel2fWxnqdv4O9gxVZaFSUR5RFNzrMzqf1ASl/P8QghAH63t2cfnmJ8K56ewfLOwTdO6Y9XMqIf5WOwcst5LvHT3ah2rmYZZIp5/fRWABa6ESjkW7a5Fc7nf1CN2Xp0cSxNemQFSkiqbM4xU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vsv0xdew; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vsv0xdew"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E61C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728920153;
	bh=scC2kDcEMqpRKn2yR7VcCCitF496wRBqgE6KQOO9qwY=;
	h=To:Subject:From:Date:From;
	b=Vsv0xdewBQH3UIlC4EktWVttDrjK25qQ8qjmimg6gUNkS7GSQoDMfuqZdJSQ8RuoT
	 2Eiy+naRiTJ67Vg9I0OSqi5bLLeU8h82G6wUTURVa+b8n7h2df4C+OipMVRj++gu53
	 SrrsCFpwjGg7enwfcc/t1TA2SutwDdCAtsf+SqgD7o7H07SB3OjPr4Xs3ptxiiq9vP
	 XZY/0EQyAqvnixtFbPGLJCn6wWcf5NQYnnKM4QWcYKpPKJElyFEk6lVz8uNgWCz0yK
	 TcF+EOcrOGIElA944INuIzMa4thS+eWGvpmBDn2BnpQt4RdfrfRIZL0+/hyW/pPvxz
	 b/CFIo7K/lW8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99852D1812A
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172892015361.22224.15094285085545820069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c686fe1c18c26a6efd9b58a028bcfc1c89d9ad92e8b04bc5c131eaaacad36c1
Date: Mon, 14 Oct 2024 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728920153
