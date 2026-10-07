Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 790561D5ADE
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 07:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791359434; cv=none; b=UN1tahz/3HPzPbLpAXCvTLxmwFqE4od53+56HjULx/fNKBFWARiEKJJZuElkzoDkQb6V6aCO4mAEBo6Gui3rc6jDELF4zzit8D4ql9ScJL635krhBrmYNLPcKYHhCUn7wN3SjbU94bBE4P5XQcy9n8xeY9p7BW1RSUdByo8Lx4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791359434; c=relaxed/simple;
	bh=UJx1Nbl/I+CVfsaD5k3RGrsYahWGp2qex3gUU7INQgI=;
	h=To:Subject:From:Message-Id:Date; b=MwRvxW5cc5rJCfWbhzPBFSOTU6KfzMFAJZdaCz8ImDhmvO+zcwnrtyVd/0yk81vLmKW6qptojtVe7OHWf2AWZxrKdjdN5tOgn1p7t2YRYkQ/2CZxekRIkhcOeNY4hJMNpG4HGL9xbropxhRtNQf1VbzNhLdgRWZfRwVR5Vha/aM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QmTek/ZU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QmTek/ZU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3D08C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791359433;
	bh=UJx1Nbl/I+CVfsaD5k3RGrsYahWGp2qex3gUU7INQgI=;
	h=To:Subject:From:Date:From;
	b=QmTek/ZUxHwSO7luLx73DfdvAWkmF7BqnhBYIJIThT8i5bUK70a5Mp29O+3+NKnn1
	 ml/azx9JnE1757lxXbAPhTWIiktPN5zMzDUPakGTzpgdFNIzZWDTU7ZLatfQv9zLpZ
	 MANPEGV1ot6wlU0YtDup4v+goTWA7IOJtfzWy/3SOE8oowwp1nvYGWN89wuQ6vquZK
	 y2IZ6Hh80Y6RP9PrL/6ArdyRemsoqhI2IbtaKylHtEptXQG2x9/dou4/wxxFiSIrIx
	 ffasAgqm3SIB48lzTPMdM9zVusFL841emsjtqMOdRHJIw3MLzjaaOM/36mveNC3mCd
	 kZ3t/3gjvHB/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABAF1CA5FFF
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179135943369.31951.4434600122374733809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53fa697fe4a83f4d8b903eb6aa04770a22405d27f6ec1da7f27fac02807fd635
Date: Wed, 07 Oct 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791359433
