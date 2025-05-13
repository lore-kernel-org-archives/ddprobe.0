Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DF1D2A1AA
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747145994; cv=none; b=iCLc+JVmipHeC+lLi0hkQ3nckM07kHCajsRHYt5Qu15UvztCWYTSqerGMLTOmsH3N/7crJmXyeWJhjMeSMSZBKAyBNMcn4MSe0B9fV/vbYcaKckEqwfcZAhlztlfgsjS7G4e1uVQQ3FDXTyImZbjsxKlNEE4blNxE5uULyrRGhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747145994; c=relaxed/simple;
	bh=3psqu+/LRvx0lJc6iqE1CMzEltLwOvjE0xMtQmlv824=;
	h=To:Subject:From:Message-Id:Date; b=a9nn9SFl4xlSrNl+3WRFHKgDs5bA1wchmqTlLSrtk0+reefIseHDEOu12fgE3B5JuIR8kQbsvbUQjCvsxuTMQ4yVgzbA8Q8TnESVF1tXEeugwbepeTMaSp+5kGKL1s5FwMXbBezaj9qGHsyk0wFpu9ZTWpaRTTHlConhLFWWEM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RBe2tf93; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RBe2tf93"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB1DBC4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747145993;
	bh=3psqu+/LRvx0lJc6iqE1CMzEltLwOvjE0xMtQmlv824=;
	h=To:Subject:From:Date:From;
	b=RBe2tf93HVzpi9mxaScIPiyTF+/w8FW1BrMUVMxGDzd8zgJ64xhSGVcB90nrFDEt1
	 i7JI6GpjeNog8/AI1g3d880+kRvCftxtVDJ/L49mGwqLvyLlgQ68GDIq7BQVxWkGx1
	 woEZPioL9xU89GPme1ThDyGL10et8F0cL/QaG+0dkKV8EGWXSx0ffBRAkt+uf7NKQY
	 mDXUhdIDbv7iuzeOAex1K2CgWlZA5go22Itn4WdJftfYNqtEMg7goGoNsyHggGOFHu
	 wsgI0NgB63vFnV/R0hxlpw3AXBLgBvLmmJauVuBMkJVDuMUGPFGkVGYUZDRh+xmpB2
	 zOi7CSqQ9cDCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96FAAC3ABCC
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174714599360.4714.14700403652642328819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef2eb3d28992d720e23e08e89e1e5fca554c7ab9f37df864196a7258a6a169a1
Date: Tue, 13 May 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747145993
