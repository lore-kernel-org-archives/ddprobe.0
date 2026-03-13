Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CEEF3D4133
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 23:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773443694; cv=none; b=UKuuYVjvin6sM1BNwajaFMOM1/BGxpkg7hlKvF7kmkk0aE9BWzjS7rcDjo0mm3ZVYKvjOTNKP5SBKx0OUTCPHCGK7urNPYzeu/ebJqd1gUeFaHnBjJPqhcUXvxmo5zpwtaRZmsicYHPjvetGf6ra1BS4DJMfrxB+3LRBspcafzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773443694; c=relaxed/simple;
	bh=enItOMv0WmoDhMpa2JB/wUf/Gdqa9vTWBYmq5vG3AOY=;
	h=To:Subject:From:Message-Id:Date; b=nON5oRXqd4ARczjk6xwX9DbqLl6Fx2syG+8EAZI8bVkI1B4bNb+omzCnpvWs3axxLQsleHq7sG5YgIb454MIIO4e/dGtrklc99oAiuGEq/sqj+5u8icrtGRJILYi1/omD3FkmedMDWA0znjoyNfGXCIonJMG9svJOY6QqLEsLos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W5+GQrGo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W5+GQrGo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8031C19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 23:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773443693;
	bh=enItOMv0WmoDhMpa2JB/wUf/Gdqa9vTWBYmq5vG3AOY=;
	h=To:Subject:From:Date:From;
	b=W5+GQrGogiLqNuc6Xa+8VakAPIkvaHafL8XIKVOgLetXAIu7vn8dyBSDrVhhbMCvt
	 GLHTqLf2XzE7FJBcIxFIJOEIVDHTroGyvDVAVJ4gW33v9t9uAK/X8p2N1AkTyKGxBw
	 PJqC4fRvyB3rhwcdgsDDe5d1JjgnYjY1F1FZ53IQ2iEeAjDt6SKwXo7Yknhfn20w52
	 qDjlL/OBVfgm1H6TGEiI0noJGMWmYngj2ZK6bZGIHk/zaCIirEJ8/OjlhJUIqID/Zo
	 QjhZ05JboK2Z4VY6YUGXScyI7C+F1XwYFyJZhtUXvpJIrL+8Olxq6+fAjIa+ZRPxWJ
	 b/1xTgr76uJrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA59107BCEA
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 23:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177344369358.14199.2694601727999829134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b4672ae7e1cb6599631d7c5d3005ba0441d89db3315edff5a9ae846671e5a1c
Date: Fri, 13 Mar 2026 23:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773443693
