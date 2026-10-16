Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C254411F91
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 07:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792135834; cv=none; b=iJIDJPRrNorvDaFiTP/xHUnl3W95/vsiYzhP+dMzyfQo7DR0D+DV8IoA4HxXU9X/fA6E7UKyCxQVNX4tNVaeL+2v52S/I/FeKDd8dybZDXYu+kzXx7L1leQQZTZ5lceVPH103EpAwsK1vXFcWrn2aPjPleDFw6LtzHhvIZbbSZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792135834; c=relaxed/simple;
	bh=q2LvemQW+t/aErkkbHJY3QigfEOEKJas7fZ5pnMfVCk=;
	h=To:Subject:From:Message-Id:Date; b=mN56rbdim7v7SZH/seG+KlNiSgLnNLyALKHzp/FQ58PMDxpsUyK9y0BXYSum1LXdOdUZQlOryHHbAwiD/m8hrnjMrCuIcus/sGKhuRvDsOJdbvXp9jmbI1NXDuTBix+F671b6Np7tHgvraCfLtuuYcLyzAGN4n07xCL8cIrC59w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NoLi8SC/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NoLi8SC/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFA7BC2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792135833;
	bh=q2LvemQW+t/aErkkbHJY3QigfEOEKJas7fZ5pnMfVCk=;
	h=To:Subject:From:Date:From;
	b=NoLi8SC/6Ku252LBBwsQj2NhmhG4pdOI8Nyw74vrg+G/RM/HFZt8WX9Z9/oR5cQ3V
	 lpXQi+EQgTBX0J2yZKdHogF9SjvEWbLGnTYgPikp5yrGyYyVJqHKg7FsvqBjD8Hg4X
	 jnZuc0ROWMmUEvriU+aCI7384O1wtatuyEvIH+6Twnj5Xt2LZMpwOWzZ9cOvmQAKVW
	 BbMfqOR1d4XslBIGnhygPuExRWVLUdyDvMOMjk+NfheTumwCAzqEKlTFgVcvZJW3i2
	 kTLooC/TjkrQCCvZGLG6nrN6IlYcnnL6FW9vJnHpEcq5DV3MKzb83FevqWxbn3TZfR
	 Hjd5sLhHvDTNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9915CC6B38
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179213583368.10286.14978342915602247558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 889b67e3f818fe574832f2b621b158460ceb69d2892854d15bae093ffe9447df
Date: Fri, 16 Oct 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792135833
