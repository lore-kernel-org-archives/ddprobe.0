Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 498C0154425
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 02:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791166834; cv=none; b=a5WNMGIwxR468OORvBwXTDmw5bpYlzs1jj5aTOIOcl6/5SFMyjQVb9HnENouyQFEu3ADToZagzw2Hr2LHxLjvEfjX4+Uj0YbsCH6hoxtHqqP7kTURyeDgCQbbM8VBHJ1RZYWfEMcIZZPoywBpkijAniBk8QXpGvTgrKELhpvwj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791166834; c=relaxed/simple;
	bh=LD98BRz93oshIKyWUNhpH9fThnQ1cdR9+ohNPRAQq/c=;
	h=To:Subject:From:Message-Id:Date; b=HiJXFbVQNtD/P3KjMf2lJunFHPXyZ/+Z1ralh8sbxFoa1QNK/N5OIfADNHxKDqhQ6f/MqysXUJUKgNj2jD5Fij67DFHvL5WyIH1GbK3H0Mz0e7QF6BySa0dCm3Ng8ndEwmYO2h2vWVM6Ox1p/+8XI19JOdnTz2u6gDWumF893y4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=noBXk/W+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="noBXk/W+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB756C2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791166833;
	bh=LD98BRz93oshIKyWUNhpH9fThnQ1cdR9+ohNPRAQq/c=;
	h=To:Subject:From:Date:From;
	b=noBXk/W+wQQ773Urk6QF/pQZt0IPUjJA0q3EJEKPNUddWDBEOx+rc2SSNoa0TzO02
	 /W6ceV8hdjSNrs7HGDrFJFCK7pDqHnssDWLHZ1C9HNUfpIWu1XDeofS6rznHmQRmfN
	 I+gV9fZRhrbc1zIC3T8+QODTN+jrdjZIVf/HgD9JyS/rBGKZ9wQwF8UTuLOVBaNaEr
	 ErtKGpvrjgnIOI53kzMiTiJp8713aBTy8lgJGKtaM0jMNHM3+naT4qgItZUGkarGFJ
	 uGdhJiLbNJ0oyu7G1Sll8ctxpaLwzqWspGhHgCpd8WG2e/Dlj1KPVT/LIA2qk08wcd
	 tVf6sTKwKwrXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9979CA5FF1
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179116683368.8398.1009993568292414056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f3582cbdded53fbdad94469b4a0382bd499a29b16e51c2b4c052050645ef499
Date: Mon, 05 Oct 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791166833
