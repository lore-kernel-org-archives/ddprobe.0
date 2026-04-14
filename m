Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2062273D8F
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 16:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776185253; cv=none; b=lLDpnprqZK7E06W24h/SezL1vCCIdKbIBZq7u573GrZOox0F/INn3Z7BOvgoNtrawrgx0mxx7DytMqXkjEiMok4uqJR7ejzp6NTieJ3SNh0HowbFgbWEOuPZHXrUhZ4beA5VHmagpJiIDkc65CQE3IxlH/pfpk9isarEnAqX++E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776185253; c=relaxed/simple;
	bh=xTQ4BfetCGP0UVh43eIhPbWutheMEaNNSQVyfkmYAxo=;
	h=To:Subject:From:Message-Id:Date; b=I18hWbuV+sGF8u0cqepcubY2z9WYSBPefS3/VuiEieaT46FXH8iBpjlWbn7ZgD45C8h44yPe+pyKramuP/q7FmFlaG+QMkhpk+Q30oB0FLF/jCQghrYXQ4MpqxZF9J2mYXih/na3hLtjkvZGAdYxdHsE5qIoCISpINcQhLnr+ps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ohcvyItm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ohcvyItm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B92DBC19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 16:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776185253;
	bh=xTQ4BfetCGP0UVh43eIhPbWutheMEaNNSQVyfkmYAxo=;
	h=To:Subject:From:Date:From;
	b=ohcvyItmfvgA0JgBN2JTQ5XNYcCDsPkSli11Rvn/j1e7BXyxkyVzMjuCnf1deVEfh
	 T+AVfzZYTSvkkv/Dldh7LhJKLAYdtxdZHs9pE+9AAftgHw3OX1N5LPtrsu6x30pXbt
	 sWrz4owFsRh/jLHgJXjeTsP4R55K206SWhyo2ctkkSA63fsMNZodMSoeGkAgz142wy
	 Tefyqt6gw6jsKR3GGtEVj5l6wYHxKWWhp8bPtZpxoK7uuAk4RHS9mKjQcgNVm2MdLi
	 3wiRQL1lRgKDPHbKuloJtnS1T0ppjOl02h4jfo3wUTIUdCDTVdeSb7i1VHu1h+IL6s
	 nXkRFdxdIeN9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAEB2F9D0E7
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 16:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177618525368.21628.13807693522455958913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13401a01f75f9b3a7584f32bfe0abf1a0a80cf0d0677adca82ac72d5f374cb8a
Date: Tue, 14 Apr 2026 16:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776185253
