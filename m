Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FF50439F89
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 18:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787076634; cv=none; b=H6QABVTmv2idPoE3M/5ZCoWGtIabAwaMR84aXkEMtwj0Nx5tRVGMGthf6fBIqbtZY8cvUf+AOZsVeh6gAS3VG+C045799WFq8rHIlTcK5tge9zRQ9kXJByaN0cz5nZANWOYk4KRM1Ygp6id9Lh5N1TyH3vE11hG2///StuvlGEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787076634; c=relaxed/simple;
	bh=8BfzInOLoGNUKnZE3cLESYlz7JYflHHD7PkckyOvni0=;
	h=To:Subject:From:Message-Id:Date; b=AzfekqnQz6MO3MGkbzw6xJnQiNmXyW/1vMTzdxgUBAYLLKyoFc+CLlFy2DHxCrtTlpsXjYJC63SriBT+Q6lSmzoWcZer0I5nX984AOT/xVtjBTYYY1L0QmYNlb5qmkWKVF/JwYozmRZPuzkZQj99v7qR9sCeJBQrUbRGHhD53tg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n6hCV7Bd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n6hCV7Bd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0B0CC19425
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787076633;
	bh=8BfzInOLoGNUKnZE3cLESYlz7JYflHHD7PkckyOvni0=;
	h=To:Subject:From:Date:From;
	b=n6hCV7BdeFhia4nFg7qGNdCl0Yil1Q7EVXou7HTGAoMhO+l3gaVOFRc8hRY9yKGGN
	 5ecgIoVOhFFHFld/w8jHg/n2IoBowkd5VhNnaTPR3XeSRtz4CFzB7e1wCpRvMpGdG6
	 ZSGpVeUfczaeVXXCJj7wQ2vMwHOTDe/5Mi2pz6plf6F9XOxdgSkZRkkDfxKjTJncsm
	 zLL0dDKM23/dP9o1XGfTvh4VDowD7d2kw8krqr1tFFLBICpAJ1IqXQ/K27mhvQjWAJ
	 fs3x5MvoMKuIC3reMijh481lPvOddQqBFNsDj8szqw+QPwoTleJXD6qObuJcNq2TEj
	 wna3UcH308hrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AADD7C5DF7D
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178707663368.28963.9674577728221141814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f22201342390ecd4b9819e9f4d0c053923cf5fccf02fb283fb63cb44f90225eb
Date: Tue, 18 Aug 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787076633
