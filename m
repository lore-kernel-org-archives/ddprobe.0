Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5641523F40D
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 21:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787088634; cv=none; b=dXgnqCAhJLxfErG5fA3oZFCZ+ss29VuG5yRPsVwpAIb4cWbwCLfMICQVTX+8VwpYPp8HILLRO1nGgEjkkvqDKjb9xZvjZdQSh9y0PR6JPPLuBjINvhXtqKLgv63Whjc24IDuh2QYlQ7MpPX/SHhwkIwoxWIqwR2NqBVctAc22WQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787088634; c=relaxed/simple;
	bh=u3q6lNtn9ClzrHm/T8iHiGaLQjmVcGarGarMMzvhGA0=;
	h=To:Subject:From:Message-Id:Date; b=lthokY1xvnPjOwTTc+m8CkXlTCewgZ9id+OjPiurKNNJpqs4UwqwHA3OmF2dJ0NFxCXfRydrdv7C2kBzIB7lkSTylJfKACKVyeGsW1M+UnOohX1em615gmTH1JFxI5ZQ6msqhJLTPRT+tL1Z0cQqlxufzT51OUkJ0HtM/lYZpzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K3MksIzD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K3MksIzD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEE1BC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787088633;
	bh=u3q6lNtn9ClzrHm/T8iHiGaLQjmVcGarGarMMzvhGA0=;
	h=To:Subject:From:Date:From;
	b=K3MksIzDpzVqeujG5JaUyzyPCh7CnmmDZ8Zd7fQCyVX+bQfWEyCs/fml3DVBG4Br5
	 yJXLN+Zm3T5xvV4X0g6siOfvLk6QZapO+gC/t1SvIi1mMzFEa0fnUm6V854+WlOofG
	 KPwdluteS6JX9RSpmj6WrZsgOjg/zhuB68JhDJIFwJ+P1wegCg+K9aXiQBjCtNZF5e
	 5rUptbO+oK6FhJ5m7MTLtmevB/WVb0haeMtg4BSnUpLp9FL2ELGfrnHpjI3sKwJcga
	 s0AiYeLlBvjIQ2FzFrDSzLZlRE/vBr72td54e3av2aXjBf7sEIS4l1cuV7t1OS9IXy
	 BMKEDNpsrRe7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AADA4C5DF7D
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178708863369.26617.16241600013122865082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 637164ce355d8bef94778c138a2dc4e07f9eda0ba1a13e88707ca2b26d457e45
Date: Tue, 18 Aug 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787088633
