Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57F283B5E10
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 04:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788494434; cv=none; b=T18Z/4s9/kvLJfmp4Ey2kSutg0mWcZLCk/iRl4e4k0fYVSiB/fpcLnsY0ts1m7KMxDNA4nGRRVfZY/4vPmpxhs4N9ZKcN0UHn3QsHDLBiWzjPBMbNByGig4rTFOPaPBUGQN652EMjWYl4nZhofELoBuf7sNIX7yI2eb9/aenhno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788494434; c=relaxed/simple;
	bh=+IwItfZ1lsIbKduTc4NX4J1GjoD1qtIt7Md13+iQumw=;
	h=To:Subject:From:Message-Id:Date; b=eT40cv+qNyNFHKRozMpray4Mox0ShMV5tyXEIAurz2ufn5s1kuY9Bjd5Knw5ugO3KVocP0+TRiblFCGAEC8pjWM/EIw6n/unB+xYlY0biZ+oVvPQdFE6mi0UFETCr8Ek8nJvhrmxM9Mk8W3vUpnUzhX0/0yZNnFhLfo74fD0Dwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WrMdI+oj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WrMdI+oj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2251C2BCF7
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788494433;
	bh=+IwItfZ1lsIbKduTc4NX4J1GjoD1qtIt7Md13+iQumw=;
	h=To:Subject:From:Date:From;
	b=WrMdI+ojAvZpaLpKqh3dWtBTnWjF1jPEkj8TlYOZMpHYTnhBcTN1H94UD4oSoN30f
	 qVgtGXhB9xmDLpAM4Hh1UBshC8qPF2m/aXLJMdKA+E3Mvok0CI97gqRjSfxJjgWxNi
	 OlBjp/f6iKFfFSvbLr+/TnFOTShPHW12gKq9nSEAtRGgViicKwdTeiaZzfNsCIE88B
	 kJTCJLrFggB0y96xJgKTf3lTf8cqQngZPvvV0eR42lsIqyaosyTj7K68++JdjNX+tz
	 iRANuPDJePfgBRI4ICfL88gcY01JdsLAtOH4c9AerupOa+LmBJe0t4KJhJ4XlF8Zhf
	 Cl71en0XvXrKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0495C79F80
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178849443368.732.2428959484252774562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f12ef8b6ec4cc7bcff446cf4ef403dd47d44c628cfff083d999973c0a1392f0
Date: Fri, 04 Sep 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788494433
