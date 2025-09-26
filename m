Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26C2925A2A2
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758853794; cv=none; b=g8c1ex+Ld16AydgUc8gTUNOpOPCnI6s9YRArnXjh4HlWKJQYjevnKg09P5ZNR2xFhTkYysR/8G0Mb88pWwKIXKEDnwC5fu4pwWthnpsbrk5ijbiOrQhKbJBFVnZYm15+HXbalNlI4+DVZIV5exqdT4VE2dHqGQPtvrKTkyA3C7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758853794; c=relaxed/simple;
	bh=5aYpHyf6aVkNHQ1PnDkkvHEuKCDYQxnHKVWZiOWFTW0=;
	h=To:Subject:From:Message-Id:Date; b=j4UAGT0cirQTs9/voql6C8VJCgaAkiEu72lAfCv1L6RaDKXjuyTqbAzOaamKe7cRaZLNvXmNIJVEwTa1wRfm67Bo0YkQ6GCandTiehWUYz24wb2LHN4+1vjXeG8fDbUJVz1091eoFL4NS/deWHz4PwmgZUrRUv5kJG1s8SYVuKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sICcn5rX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sICcn5rX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6334C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758853793;
	bh=5aYpHyf6aVkNHQ1PnDkkvHEuKCDYQxnHKVWZiOWFTW0=;
	h=To:Subject:From:Date:From;
	b=sICcn5rXhKP5hLWTz5gcwcqEVkDar2oekaQPSR0MXilnOO9mTsGm+PyjcWO9gs8ab
	 W3tm1T/EDnBxk9PVXgqbCnmiiy7e4aFgrUI3vX5GDfxhf6pUhM6ojqg1ORhKxWpQUo
	 ++eTtxSyLFebbsPPFTpeOsDvRDPyTtCkhQ7OtGpmxpETlOQv0jn5WdDn88m/dUi0JP
	 uxvb2KJWebYNAD3Pr2jFTdmNKgGpu3qaSBCJ+Bv20mNhmREQFwAj9vsEkGP87nYGf5
	 vN8qXuM02Kc9P7564ogUfDYeFYPv6YXgzJM4IH2P+EfSeb9Ybu8CEwTH2n1zJ5TUqQ
	 qVuAZ5dUcmBhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9241DCAC5B5
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175885379358.29305.5022298864875115897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9073dbc804ee72df274bce1f2ca73ab0b956f7f28c32469f76c5c31cb0e077ed
Date: Fri, 26 Sep 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758853793
