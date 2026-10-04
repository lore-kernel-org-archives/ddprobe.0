Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FAB53328FC
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 05:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791090634; cv=none; b=M/oHiIWseVmabC29o0fMyXz2VtAar662i9IdIJyYIGdfQiAeMoZtfBXKKQUYKAO4fPtZ1mYS4EBeHVkwlfKvg0nV0Ueios4SJqw/sTS4jRTHnfRjxnlw+8TzZ0gnSOowTun4Sp3Xo/x88G3FjXiHvI3PNA63zQtw3JGPwu05N/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791090634; c=relaxed/simple;
	bh=Bdxa8T7YALNOektZs+upDj4mTLK5Vd+DAJGKMODiAT0=;
	h=To:Subject:From:Message-Id:Date; b=u1tXh9ijtEjyjgxv5EpKNRiw2yc/YdyQxsB7JNVJjw8JE5jJnvJ4LtlG2p/CE1TXpC4XS8cfGHpkRJnj7bqqwfT5XG0H7lMbZBUFkIugFnwInv/ZM/DYWbCyfmu+7wx6P4BV8AFsxJp4kTvilkF+00HnHN5vdOenGDZWEzAGI/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sVwy7JfE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sVwy7JfE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6E67C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791090633;
	bh=Bdxa8T7YALNOektZs+upDj4mTLK5Vd+DAJGKMODiAT0=;
	h=To:Subject:From:Date:From;
	b=sVwy7JfEq+9w1v6pDrjsRalaC0Zjtv2kaCQrtzJdXXrDqsFFdHMXHpmRa7gVIzNqe
	 7WpkxrpAwq8WxJp1jBa5aer7tyXZO9mGcmWn+wIVvyXy4SbInYGnY13FvrickklOpZ
	 /9xqAJQLkU0aKgYAYTERiC0SDR3m0zBC7okL6pGf1ugKGN4DuxmWIALFerJ4HEyxVs
	 8/Ux3anjAgVW/R8asp7qMTq95n8Ym13jxkxTKMN1lHT5ApQUb+G8XAAJw/ytMDM3aq
	 Rwqm2QEROhjRJExh6Zrzp4cAPp4DP15vWJZPfUXOPU9pdF3gZKGzeID3a21X/xmv2Q
	 thvDCxFhFA/Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3406CA5FCE
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179109063369.27433.6460233333005992483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e06f60736b64d7d8845edd7d6bc2035677b8d870196dc19d67a951ece0a730a2
Date: Sun, 04 Oct 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791090633
