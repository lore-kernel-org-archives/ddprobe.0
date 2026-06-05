Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42567409111
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 06:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780641874; cv=none; b=gmTXOJvJvjtnA1L1BXuEVa7HeyKTwy6tIQX9T0a20s8tJAxCnuR0aN8YX27gwSri6F78NKGcwthBloRWhBcUglYfztwOTFJaDu7O8Woi5LJ/Yp6+tUEH8Ci+gtMr7x0cwMKWErbZZHxYN00bgOx4yhi24erI4c5oh+abb2wlVQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780641874; c=relaxed/simple;
	bh=ou43+bPoVOC8jWHi2k1m7hf6n+tbDrmxK/xBjy1DEOA=;
	h=To:Subject:From:Message-Id:Date; b=nfVcCQ58TN8epYL5h2zdLIdaiH7tRRuYxlxAospjw9oAybSLabVOjvN2WO5dglAVLkOzZYrzNMAMQ/DFfKuczes28fsk9N+Vs603cGKnea/Oex578DVakX6gGNzv1H7O9E770mNHNs3bzLYoLe/BA44Xf4EfGt14V/HzfzgiUxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vPFgSUSO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vPFgSUSO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0EEDC2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 06:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780641873;
	bh=ou43+bPoVOC8jWHi2k1m7hf6n+tbDrmxK/xBjy1DEOA=;
	h=To:Subject:From:Date:From;
	b=vPFgSUSOhKvaY0c+A085QswviPYo2ttCFTXi7UVBBHAtmcrmBFQFcwQjsltwiLWpe
	 M/Rk9Xl6vE5XKNeVqC3BFrBe31SDvf1Hod7n1U/butjTS4mBeSPJLuXIciwi4hrnpU
	 NVQ9sCUGttBtGP9fNbfZCkerdZO39i1BNGevhUlb7yVRS64qS3pz8h/+zpDlvUphtg
	 X3Upy9tKjJAttQPI+r1xiu4QojKRzPcfq5KwobxcBMkp16B7+HYq4lVli7L0Fe/Vzr
	 RoApX/jhy0pPZ9dpGU4b0G9H2xPqxRBL40hxghho/9JOnMKlmgyL+oyp7ZHcANgaGy
	 dhspXaYE3+RNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF2BCD6E5D
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 06:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178064187369.27225.13383289867518553530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e01c6aca2ad768f524fe0061fffc2ab03bbadebc9023cce8fc6c126d88d8b168
Date: Fri, 05 Jun 2026 06:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780641873
