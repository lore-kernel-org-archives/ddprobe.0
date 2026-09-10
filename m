Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 389203CE4AC
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 10:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789036234; cv=none; b=lHsBrIU16wy//9tVYd8BFZaRDWZbGnXcE25s63DDnbRISj/rra+vg5N9HyUJOzl384aO5tXzdsiyaca2jStBWBu9+NH8br5JjP9d0ZIMRcehTapqHJp5vcnnPlOC0OA/RQ4EL7ke3amXT2k9wd8RwHFcpbG5qaOvmN+Z9tSvN5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789036234; c=relaxed/simple;
	bh=TIs5z1WZAPdGhX4pe58Gj9Nc5CrzxJD6v27h78EUj34=;
	h=To:Subject:From:Message-Id:Date; b=Q+uT2eiD7q1h7IM0jTG0Fs0auOqV2GXzHZygct1Alp95j5j2KD7x6+a97S6GGzEAnIY0wrdsj31hTeVvAXYESx2HqmXG6eMsOMgTbZK7NxSVjTa/CyfvD3Ps4+pU4y3hK9/Hx9Oldle3ev8Zbw6UX6wlBwEiRg+jwaNxBUo28CI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pz2jXDfg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pz2jXDfg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0E4BC2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789036233;
	bh=TIs5z1WZAPdGhX4pe58Gj9Nc5CrzxJD6v27h78EUj34=;
	h=To:Subject:From:Date:From;
	b=pz2jXDfgaMvTKCPEN6IPEjANGR4ohhJgzFLIbJIoJM5hDaYPO32P4iTzpRzeUlign
	 rFPbEz2mM+2cVyoxqGkR4sfLXsTsz/CdKmgZ0FZ1pzzbPH+syeDIw6qsyUNQuRjjhS
	 clHR0H6+XFIct8uUyod8AzBDfmwEh6fu3JOp03yRGSmcNR/RVjw0a5jvVIDt6g8SIk
	 TRRciyC6EBp7SjC7SxQ1KiPD2sN0nxdrz44Mx7zfD3NFeG+0K9EYyUPaGSXAdLWCH7
	 6j/ktqBt6122CRVqG/fPWYsCZSId3ml1CGaHNRHaOozJ5MFF5fdMEDivpONkNKWVdc
	 SpBfiYJlx5Drg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE4A8C79F9F
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178903623370.11710.14465013650325916592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 721d2f906a2a602b5d3d85b55254775f66a27155bd33d29c0082cdd35b1aa7d1
Date: Thu, 10 Sep 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789036233
