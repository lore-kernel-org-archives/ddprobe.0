Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D783C1B6D08
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 06:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777099653; cv=none; b=j8B6vqbNWgcXoWXH8jZw4XlLEzc0BH7Pr0WjfJC9zm3E4x86O+YjndbdGTNouR7rBUkKJxZn7ccxtAdWf0X+Dszt+GLIFsXm94Fx0DNqv+AoqRzokKwVUOD6N3S2HR7fvAOwx1P3nLDQ0MNlkrtEd3KKjr8ljbv8gaVP9yidC70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777099653; c=relaxed/simple;
	bh=mMBSbfGAPBSe/AowtFJbtyG8hcA1yue5PsfljVEgnvU=;
	h=To:Subject:From:Message-Id:Date; b=iI3aFBQllmK3j0Cg5tqARni3B4u6kQ0onPItMF1khazQN4pB2H3vzAC9cyhJS1kALn6Z99CI9Sb8SIUK3zpGDNKIq3wc7430j9ixe+dwmMtRPKjxZqNOqpPe58WYwl4YSErFPj+L/wHIA78gErmNIzMGp38jTPJ1L97eHMX606c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=imt4xs0W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="imt4xs0W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B90D1C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 06:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777099653;
	bh=mMBSbfGAPBSe/AowtFJbtyG8hcA1yue5PsfljVEgnvU=;
	h=To:Subject:From:Date:From;
	b=imt4xs0WxNYwMePBq53zomuhfGItCNXceDQEzFXtEj1SlOlTfw59+NGsM3SYKA49v
	 VvRBS4pjPy6xGAeumkrT7gazSSk9oTpGK5GyEeTQJGewoU32La34e7hUGdNpAvw0Ag
	 Tja54I9llYaUrJKGGon20bdAW7KR4FhiLZjuVa1w7Gve667jzFAE8tmH0GJMW8uiZq
	 nZooxJebyk1TRjoVsM2r/5QDgYCrd5tYEocnvdoCbQp0uAoSp5x4NC8Toi/lZ7+H/4
	 gWbk8lcO18Y+ujm5HiY+G9/tuL5bnmwbdVBKAym3aX0w5nEbfd76imUhstuBAwp7XR
	 KDsu883ALD9Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CEEFF885C
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 06:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177709965368.22348.13634996583059849721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac6f25de3bb45a27fd283a7ecaa638fe189bf6cd4c70ca94c874ca46f0828ff5
Date: Sat, 25 Apr 2026 06:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777099653
