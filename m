Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6405E18E743
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744064994; cv=none; b=JSqaivojQXehEWGqqoO2Ydv/SuFzWNn2fMjHtIJyC+PtqpdGK+4jc70NgBevtBhxgZ1MYsoGDAJPWvSYW6LCgJYH4VxsV+AOhyCSuGnrcIAPwIONAq2LyKK6HcrWZnLYoFYhPYFDZCLBiVdC9edeDt8A8QYd9Y6DB8M4k9JFsOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744064994; c=relaxed/simple;
	bh=iFzaJ7H4iX6CnpXfSEYniLPT+94R6XtR0z2145Q5jJ8=;
	h=To:Subject:From:Message-Id:Date; b=ADA9hF0aXNk3DpkFAqeuZsBCaHujJjYwTd5LKw5BVO0cGHyN3uQfmJbVI1i+1dVyNWtpRk2ifygSem1knaIs1Ce0uAQDpeVCWJ2WVMdU1SXVT275O3AqfhS+x/iMBs3ZWVfYQHeQswKn6YL8VDkpBRm+3j7HvLimymocKicaFIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bvw8QU34; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bvw8QU34"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C768AC4CEDD
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744064993;
	bh=iFzaJ7H4iX6CnpXfSEYniLPT+94R6XtR0z2145Q5jJ8=;
	h=To:Subject:From:Date:From;
	b=bvw8QU34A52HKBlUXoPSoLkSyYJC5kQho2QTbela8PIBi+hyqGI0HXl7mPsVNytPM
	 DWGdkpmpD3lNyAwm65BOUNgc0yqZFgKEROTU9MDbgp0kMxf91T4NrpU3UPcuNxPx8j
	 MVrDb+NZCc7LHNYy2CaJynmqR84z7P5AgqXlIIIPo9YrFLFN5ViV/r0aC9OVsrbPIc
	 6PxqUw9Xff3RQ2lW9t4O4UWoeENI3mW/WRDpmlAq8//q6vqbVHQQ8Tv6IaRf75iBFl
	 Jdw/fmgKnGVTxoZgIXZeFtG+HwHKdiswu8xv65S7vpNhJsNWG6iWfRIP7lJmf1sbyb
	 ug3KzdHbt15XQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9212C36010
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174406499364.4443.4095752691641511396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a63039c5d098f45bc19d4b2bc7821706730364b7d85946cdfc0cff97a0adde34
Date: Mon, 07 Apr 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744064993
