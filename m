Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5474820E6
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746404994; cv=none; b=FYJ7n2Kd9WKWDacWKAMuAt3Zx8tx3vqn0PNOaoxrOxI/2lSzZjR44ptLELNxBq7a380KAJdx2ZvKoiVZx6VbvQ+NkHeRVI3fNoMHZ+dKH16bquWUC1sql7GnPwFOBqvfVGZv92e9NHtQf1C1leN+vrNdeUus0tAUbrNR76XanLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746404994; c=relaxed/simple;
	bh=Q6ytd5XBjefoIlFAMogpdAPh5FUFVE5Yw1Mqgfre+No=;
	h=To:Subject:From:Message-Id:Date; b=YscEPCZxv7Yerunfy460NusXH4R49BnZVneGAL6ZhJFVFguGAhEDwnWF7f40t2CPyL1XeUGoO0MB6uJ7GFhoziNp+YgTRsgU5WAqnFiGnuoRlVrpoozvmTaIcFEstYTzxVfPa8jqSS66xEoVjPaVaNiH3UbtlMSrCq9Nclf18Hk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o/0TuzSS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o/0TuzSS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A631DC4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746404993;
	bh=Q6ytd5XBjefoIlFAMogpdAPh5FUFVE5Yw1Mqgfre+No=;
	h=To:Subject:From:Date:From;
	b=o/0TuzSSb4EfrfOCU2yL5v9aVZU0gOFxEWJkKNK7CczpQO2/0883I11ONwSOYJWzX
	 T/LFh1mNv8tp6P50CwWEu+FkvTK0l0+EnNB5ZLGMmepx/MdyEDpOey0jOcRIxPS4Ni
	 sqyB/TuEZaLrNH4H3Z7on3zVmY1yuo1r4x3lhi5XxLyw05H9ys4i74J1sHKmldpQT1
	 PNmYTPRdO5Y5jOZBFyk2DmiksTQ2ZRz1NwwI8wmt0JkJjMKfzsBfPOfFgJ3wwnYjPC
	 JjCfzoeokS4ZLyqlKyyVEgTPzFaA2xl+I8AoR1g5iOuaHGoNjiCSWds2Yv3dpVRQ5I
	 1eZco9P/RtZ4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D65C369DC
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174640499358.15570.345921733004941529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 754d62b632f68ac4d89c13ef1e8693af84d1870dae6ad0e0cc87d9b9fd0110bf
Date: Mon, 05 May 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746404993
