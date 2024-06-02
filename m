Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8783B625
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 05:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717305323; cv=none; b=ApIROIY5FMPfjHjN9aLgTFtdFW55/CqVkA0liS3e/2w5dYBZ+sQLeU0kMDjK5PgrxSfGJFMZ2jyZeMPuivJ4mdA05nw46W5lH+SqF7rs01sR21IvLsuKue0Kf9czWSh65z0/WPviTey1eyKSad+9EoNSackZkN4ortdvzy1ND+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717305323; c=relaxed/simple;
	bh=3QC89zX0BcQ+JounO1SuFN7Iab3NYM8oGxUAnzQOyCg=;
	h=To:Subject:From:Message-Id:Date; b=si9BOWemOiw4FjkFhJbIO3fz3/d1BPAUfQZTR7whCwDxG1zj7/vgcmLihdMVscSf3tyjPPd+6jKzmfjY5gnLqE9g29OVzI6labNvFK5pZFKRNAbpWbOyrPsoGlDjSebODjIpf16lSB6opW7r7YwzZpccVCnHjhAKkEgk7oesGTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LDohN6nN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LDohN6nN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBC05C2BBFC
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 05:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717305323;
	bh=3QC89zX0BcQ+JounO1SuFN7Iab3NYM8oGxUAnzQOyCg=;
	h=To:Subject:From:Date:From;
	b=LDohN6nND+an6HADbaAuugsAv2KD8pMIh2CflDnC9ZSlpNEK6n/ODfLvdbHWb676V
	 Qgkq2S9+1gJYBEKzeSvShx48GwRAp9W7cz3n/jRNT0dCxGRXD0H7pb3n0GjlffsWeL
	 5cGKdj/q0vynbKNZNJJ8SQV5GeNTB5F+9ZWy8hI24guDbdtHQ2/rSTkxua4ol0Pf55
	 e7i2E7KBJU3EGjrUQ0UobM4APCD+o2DbLnjeRCL0LXZCVrsRrGK1x4t437bwaTvVuu
	 aRsHq4TCwmblFpqDIlb6zY51+DfTOg5NymRSAIH4vooCL7U/AArHvSJjqChs/OwMO4
	 SUrDxsIN8EsXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2B75C25B74
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 05:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171730532283.17387.15350440197496597453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd1f9c9cdfb1a2bffcc427ce251515510e1126314d596eb54adc5e3c1e064800
Date: Sun, 02 Jun 2024 05:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717305322
