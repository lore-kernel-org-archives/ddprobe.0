Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14997A47
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729301754; cv=none; b=IaUfhVsvxnA64NS8muQb739QCZFywAG+XQyGm8BsKY5fVUACErrNT9TLiy/QolipnMd1Sn7dafQ8k/zj3oImIEgKpsUAEUCnLDKYNc58JbyabnnotfRCdKR2yx3/PXfHiCrSIzydYAE5YlZDiN72r+srdbSgdFqswnxOXdmbRU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729301754; c=relaxed/simple;
	bh=zOIbqLbil0QWq2Zkv7mlm9yu2L3OFsWCK5UwDJxSih4=;
	h=To:Subject:From:Message-Id:Date; b=PNHeDCfyXQZOfIhhpmI/YxYBVnSLUVNBcbIEbnrJm3tcpGURxv44nS/LmzAHZ+wcUAs9lKIcVCGmaM+BYgoQ/uyCdgRLc/1FnBaWcE52KnaC5Mz3vQuX3GnSrAnZiX0+W3pl/FQRw9tHptsj+KiF3qijMZfxFE6RRht3nU2DYAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=myUImu4G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="myUImu4G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5750C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729301753;
	bh=zOIbqLbil0QWq2Zkv7mlm9yu2L3OFsWCK5UwDJxSih4=;
	h=To:Subject:From:Date:From;
	b=myUImu4GMmwiUgriizuPqpZsp3LQ2F8MG5awMcp5IoiRAojSCdqfF3P5Ny1u7Ptmo
	 YPdbs/gse9cHJr6tZKVIKIJ1MULYxN0werr5Y3WJDuDDqIrzZnjXh26H8BNfmrE3AM
	 VZR74JKxZAEgACluACddGKorYo++w1z75Dm1ewKGPB2DtBF7KzvJG4YD5xrAUntVZU
	 aw7HdDcivMPVyewf99At0dokaiIUYSogNRezVb7KsAdoFIvzWbdBJJF1BlivLIwRFj
	 rggxk9SsOyXptFzh5ovYiVNCVtCm7EXbLpIlAgzTvMXjvsvdft19otX2y40CcnJk5o
	 Ix1eLNtYHG/5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C9AD3E194
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172930175357.16101.15555918539649868373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a331ce2bea72611e6d49ee6fa471d5f64d63e2b155537ca411c77e3347a8c39
Date: Sat, 19 Oct 2024 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729301753
