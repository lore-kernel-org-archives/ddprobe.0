Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4395A2FE0F
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 03:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783914514; cv=none; b=XOUnATbf/YLNSvm0XHtMYP5mXwYt+559Z9Zl8dHFfX3NfUZrkiYjOVp2MnNoTN4SmpW6TGHxaMPyOpIbQSsgD7/OW8NPu1eD2TRQfoT57FJCGGH9rIcwZnApZTqB/LnhTNe5cda06gZhbzgG1AeoRO/cs2XiILg+8oER9y4K0SA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783914514; c=relaxed/simple;
	bh=zboyYmhaN2fYPQB5JO5rzsE22n+MJXWPRmlkGTcoK3I=;
	h=To:Subject:From:Message-Id:Date; b=sQhqqDuuaMRLB2Zp0Eq1ysOdihnBY9DU+99+HTYr+A9luagNkFOo4HxRop4c8/I2rfWRfrS6x0pHOdgwFCVacPUo5buPCZJtkJ+/kKR3Bq8bpfmbqsRG8t7SZjyCmAI9BNukbfDkaWLkQ1s0GmHeCPqMcgAnnkby1snaVq6zNXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rSLVDQkv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rSLVDQkv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFF4BC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 03:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783914513;
	bh=zboyYmhaN2fYPQB5JO5rzsE22n+MJXWPRmlkGTcoK3I=;
	h=To:Subject:From:Date:From;
	b=rSLVDQkv/IAJMPx95RVc0A4+xQeBeAQiL2DpSyuRaQNrN89bUPqCKdtDvNvQNPKdV
	 7LY3zmdrecWpXMCe+yWQBRt9L9WUwWMjt4xLHsx8Dqskf2k6D88IwA62sJaybmeakU
	 S8CdUca27Mus5pt1eF8byRK0jtK0NAIK4AR+4VHN3L9/E3kXtT46Ql6LHVet2W5h2a
	 f5a580r09heLhWnZ54rQ4FwhSnmGNL3mA4nfua+CQ8td+7lYc1uPU9pRf3Pa/CMaLz
	 hKqJE79zrvTYVEHznhTB3dyyvssWmoxQwpfRsNHgWatn7EKyGzmgxspsPKAMHVAb8d
	 cdOjfPkSeGufw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2A1C43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 03:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178391451368.29496.17507663725952583880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 184e598daa838868b0f1a79253701dc36c5536f7b1b054a1d3f021467d40b7cf
Date: Mon, 13 Jul 2026 03:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783914513
