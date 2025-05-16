Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D7BA1EBFE0
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747375195; cv=none; b=dJ3J2q6P99hFj57u1f+g6rmo3mFtEtItpfKBx4zPifTM3jZzfbdskUd5rueDXOre0ak0BZUHlU0nmCSurhStOritbQSbeaJvqqWHBEZrucIrDeW7+yUFgBkr1hB2irxrbYJiOJ//g7dXvJmayTZEPcz9K/Ep0oRPJKnfvvKodjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747375195; c=relaxed/simple;
	bh=mydHQgSO6lMxwGpCLmFUh9Pl0ZQwYhA2QPUM0TzXajs=;
	h=To:Subject:From:Message-Id:Date; b=RQol2j+M05v/wF+B1vTTgkHniVZ+B3jZ9eGZqWvNcdm9b3nRT3gLDswK7cr5DB5Mi/Kl+427qnvBkDL7NfPB21lO5AQQSU5jrTMu6/kEOkF2Vf3fkevbY3UT7mDN8+0w52+FkxyWJ7f6ZvPHItyURT90ApaX3LO0UUNgFbHqiP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L1xZICxo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L1xZICxo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA4BAC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747375193;
	bh=mydHQgSO6lMxwGpCLmFUh9Pl0ZQwYhA2QPUM0TzXajs=;
	h=To:Subject:From:Date:From;
	b=L1xZICxoDiBFJHfrlPW5WhUN16xbGbZI03e4PlPdcUxM1Nqh3klDKegTzUULf+QJE
	 nDFjdYMzgAS5AkIZomhAFsawEzYGlIfv5YS+VTzZBh/UM3LXPuKMKaP047K+sVpWju
	 8emartHevD9hjaOD7981oOFxdSNuKWLrODBUVWZY3Mw6Ne0RX27U8PiiZz69FABpKR
	 oBxhu0ayfsE7XZdEDX2KlnArsngT33YJaVHs7sIgKt4TlO0xU4fBlii0yEgoT1EE5R
	 D9q4mJ7ZWrTCbwm9MbIcBVLz9Oq18C/3G4N/KgB9T33klY0FTfZyq0+yUgtwPodZkm
	 x7q/z0EKGPQaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955E5C3ABD8
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174737519357.26100.1535772420633289901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8fe378a116f3395bd13902d580697d32de2ad10c3dc25de67439b77eadd25cd
Date: Fri, 16 May 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747375193
