Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 528502905
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 07:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730013354; cv=none; b=a6HKpmNroQd2W8q/gMksTZW5+qpYcSfCfEXaVbHhNPHafHwVhOJsgAXa6gbuNPnKanNl4HyQ8MoS5weaYGIWzJTWVGgK4u8Qzg+8hkr7uyrU8pQL5w2bRAISfW096nn/T8+2mGDKJSHfnoNntsRoKudtAP18+oDfv80Pli65FJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730013354; c=relaxed/simple;
	bh=PArYBIKJZmou8iimqcNhmCKKckfgqY23BPcfnnlk7+o=;
	h=To:Subject:From:Message-Id:Date; b=u+ddEwjCv6s6TuLhIokMKEfV4yC8uKkjm8wCT4addRFscc7+2E6gdE7GDkjDwMm3oZ3g40IYt9gkCTCt311pPZ9rytrgLISOzbMkq6ipX1raQVhRFwgoDACmPDWOs7d27VpCsreWbyrsLG2HW+DngLRUZWmyIyfVf7W7x7iwn7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l4lx/8nP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l4lx/8nP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB69DC4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730013353;
	bh=PArYBIKJZmou8iimqcNhmCKKckfgqY23BPcfnnlk7+o=;
	h=To:Subject:From:Date:From;
	b=l4lx/8nP+LFYouRMqS+yGTrlz1DbtptE5H6u89423QY1737FuBwxDKHa8s/+nA3b5
	 sB4fUuWyguQ3WSC25PdkBwToBMAml1VBe2+dzmbU/q+s8fGBDWpb8wQBLQxJKjXLBQ
	 KyzNKLNOp/N+VSjjNTmM85NuEoeJfupSw0pFHMrr1Kbd7rKLU4pgYP+WRfG2JIk0He
	 jdrXDooytJtdDS0tgRN1M5/D0MTdVmyFQOP0K3VtcCer1yMAcMFoinJW21bRw+GfJ5
	 Q6fXQ52qotvTWs1AvJEJLKo3QESWFng0NNFmSwBk81sS0XEZ1D6cgDXDXAgAiFMNI8
	 2cYX+JaLGoavg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1576D1039E
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173001335375.7345.15197867823736885133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cf88fcd3a79eaf491a3aef6eafc1909c7fc9a5306a39ffc53f22fd8fe8514cd
Date: Sun, 27 Oct 2024 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730013353
