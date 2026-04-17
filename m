Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31294345757
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 14:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776435454; cv=none; b=uYG3I0wG9NcB7SKu8Hjid2bBaLNrAw4t0c16zuT8ZpVmgN4+v+P15fMtxIkHwxoMuvUnF+yRThNRktzX0xcmdnh7WsS69b8bgOrdG+C2OZeRwNzlxu6Qf5Mlr1ygNPKjmAZE0rDkDocXuUO2zqWwg3mixXIxnpoZme3TVjifyKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776435454; c=relaxed/simple;
	bh=MJReJ4V9+XliUqTvgf1zIxgEfkHSGHLGHSETPUx+Hv4=;
	h=To:Subject:From:Message-Id:Date; b=U+pgnCKqA6wRdPxKc63CZWw4zjrCxhmUKvPPijd/ikS12N8851MLpdsFukXjjl67lZC50vc9VeaO4j+jVVMYzzMvfG4y9cuf1zPXmN9zb2pbKlMmRy8Kd8GPbADOaWP0aRN2MTNRwHitfnruOekBChWRx5y4WL6z4XC1gJ9VGYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QiZft1xq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QiZft1xq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB019C19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 14:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776435453;
	bh=MJReJ4V9+XliUqTvgf1zIxgEfkHSGHLGHSETPUx+Hv4=;
	h=To:Subject:From:Date:From;
	b=QiZft1xqeTKssx4WJv6BbVFnWIwumgM9c0C95Wi76elKgIiAQxE96mefm4Lo2V/Pb
	 /UDwlB9ypcE4/BzfxuHh9eZoVwydq2nl4o7D6/44BDwEHBc7j3gw0DnhztIT+QjGic
	 R80HO/jo/ItGRy5jiVn0XWd2zN/NQEcXz370ku4OAvRDKLs6NINF5gG+DQypekC/vA
	 4hD7lUS5SurFuu6+NZT3WO3IoUdtt7Bixez9UGhOK7SqCXVEmQDBSp0lBUviz7jNgB
	 C21f6ortgegTGUHJAcAMGSnX3GqVCUbSsn015FTbTMTA53YVHbQSZWl+zE5dhCf18R
	 zSVpmVTX7M57w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E6EF436A8
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 14:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177643545368.21685.16782245248270469968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bba2a52f31e55ef951d1f48b3fad31bf6ca32bc4466323129ee8c066b4bccc5
Date: Fri, 17 Apr 2026 14:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776435453
