Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25D8A30748D
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750789794; cv=none; b=MRqLaLqAc9e6Y90vJd4mAHSn3z2mykpnIjdz2cxZ5WdDgsd37jGdlRNSmZf6RyqkmNyumsyjZ9mW0uABAS9EamudgZxo8C/Ya13noDB1Q3xBDLpkFgcn7i2jdi35s8OYG79U0cufrL9Q5Z2Wn6Pqb3RYwZ89wH9iZjZkc+xH24Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750789794; c=relaxed/simple;
	bh=77xoypH6H7t2zJGZWU4jGWrV+NDt6XD05jCjv7rJdW0=;
	h=To:Subject:From:Message-Id:Date; b=DXSqB8IcNNAMikkrNgX2xOsTGHlFDvHKW5io+Mxolt4ddz7cFQ8FvO2ajA48XPdDveqQU+gfBrnktt3meIq7MWxbzrQjff4cdJM7U0pCSBOEqGsxxJAoMtTTtI5dveBkdr0swIb7gb+gg3sKo4OzCFDfdLDCsZ5uIMT6i0GFj8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MkPj6GMD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MkPj6GMD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1907C4CEF2
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750789793;
	bh=77xoypH6H7t2zJGZWU4jGWrV+NDt6XD05jCjv7rJdW0=;
	h=To:Subject:From:Date:From;
	b=MkPj6GMDbT6nDL6MWBpvN0dJHUBM6hBu2jokVcTVku2tEMTIDAmvzmwsIERV7L8+h
	 rhsP0r4kgCZB+S3rKZGfoF/vlPP/4fJIaI8WLaRu2GLANX276nqihHXIVlX511Nmgc
	 WtfTv7lQMbcbm6hYvQKryjLiGFT+b9L5kL7BbkSXYSBNy08v2wCXPKckFL98s1BRIj
	 OR1IogY6plTVmYkPmfaq2TTfrxInetRmawRm1qoX/XQUBlY2axqNOgcqOhFJd6cUK3
	 R8RH0WgszXCK/yA5tgn0ZsAEzoyuTkWxY37BxADkafzberrE2N5uQkY8PakhfcJzp/
	 l4/9OMvXhxKTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F080C77B7F
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175078979357.23093.4148653510847700295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b452af5b8ec9af69ac0feb04ed8940af81fdde68b11917be873be4ed1fe3ca0
Date: Tue, 24 Jun 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750789793
