Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36856487BE
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 22:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779661954; cv=none; b=L1KJO9zRnelHJOpS4UFpdHkih5T5GQqH4uC6DX6OEEFc04Po6faXRNm4oqSRS4wW/o+94rjnh9v3xM/dT+EGbddRcOBRHJ9VnEjqkmPd8BjyXhU8MLe5WJSqa/dhYiL22UMbJQtL3PfZMG86pzDizsHHr9xLDUrd4PW9aRmRXtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779661954; c=relaxed/simple;
	bh=VTQR96WB48wJxf2iiynUZ6AEmLNWDw1Af2KGoD0m+j8=;
	h=To:Subject:From:Message-Id:Date; b=UQJguKEYz3mmT5qGY/tjNlJC4YEvG4ScEsz69A9ZHk9jzkJhvD1yzsDrD+UnCQC5ufgLpAoa9F95bcMUN2hOpTH/IORdo4eWt9b44BOgLYMwx75zz0dFkjM226WKzCjbltXSgwIQxh2PsqvTz3g3lHET76EBwu3OK1oHK1Qc3CU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oQTxYLLw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oQTxYLLw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB9CBC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 22:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779661953;
	bh=VTQR96WB48wJxf2iiynUZ6AEmLNWDw1Af2KGoD0m+j8=;
	h=To:Subject:From:Date:From;
	b=oQTxYLLwD3Go9KQMiYxfHjLUgEzrWD/vnoFhBVARonFDM+gqSiUMdQEWv6jRGLyBG
	 8P1xqQ0Da6TspFp7gFag3ztNTa3XBUa7EbSUejjWlTgJ/eUYfvAKcbvbPpgq6bHbi6
	 xrciftY2GWAShTr12ANHKF//ispuFhPrYzT5zWXT5FAINH13D0xzJNvfecMi+PgWH9
	 Eo1ZZ/JAcy3J4vdnuDqDtt2dFlNckgM4rG6Y+8ojEzPnuqR8tUqZfm61pi6ooyIEy6
	 nccec6gD8I5w2+Z8BT1cZPWnJ521tXsJC5ufo7N+UPoCkJcF36dMwKEz0V2ccgWBLa
	 wmd1kt71cDpnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFA66CD4F54
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 22:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177966195370.5020.7976903178534353358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bdccb62b5f61196d85ed4ccbcebfc16ad751309581891aa819cbfaf2e3a0d6b
Date: Sun, 24 May 2026 22:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779661953
