Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 498D640A937
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 07:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789629034; cv=none; b=uuiGQEFmbJIg2C6Tg3lqpKPfaQbJnCeUHvQts55eNxMK/5jdMRGJFTQwpw3wUeDNI4FUZxGrnyuHv8ZpEB7Hjz0DhdVEaUbOUzkwpjLd8uncaRiAVh9xQV81HdYgXph8fFLLxn3MA44OWN+enbSj7gpeiAIzEBoxtgupdapBEDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789629034; c=relaxed/simple;
	bh=rjs2FkrDF/fsTaYxPy7/AddaG4CUwlPEXUTjJ2RCJBg=;
	h=To:Subject:From:Message-Id:Date; b=opQkQdqZRYWT60GJHQjclpxp3I5qyiZqi7/CG48zuuxQDUOgHoN0H+/H4tu2fcXTemhkjHFJTUvxxYWpnERhq8QwGcpChl7MaaL1zgVkEqQGFcNXLbjROcn8LdDyMRmTjrRkuIoeInmlYqjaXJTZ0MeFFHUjL1EES4rNzeyC3Gc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QimTwuxl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QimTwuxl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC8FFC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789629033;
	bh=rjs2FkrDF/fsTaYxPy7/AddaG4CUwlPEXUTjJ2RCJBg=;
	h=To:Subject:From:Date:From;
	b=QimTwuxldgQx9KZwEnD6nfoMxFEoZ0WvseVz7SwcH6HNIjuovemOnuqtGC+B/HLTj
	 l6b3AJa4I+ct0UhE3GdkAvjJ9bWx6LIBPV17rbHsAx8ote2ph5lSeGuxSL0h62x+4f
	 vlcZyItsAQqNPQFea2/xAkF3fEzMTDmkwj4uxYN1uCSYEVkIcgZF96jPCnZwbZcdWz
	 0kgfXAz2ISNNxg6MtiyZhMI4uP/2f0x+F+5XTceZ5XyrWVzi8pssG/HK4RRgunKIe/
	 QzRnTAnPhfDfY50z2YC/B0hwpGulq+zNrTYd6TsnYbaxZ/QL/dr5Rll0aAHWmCe6Uu
	 KV2h/NLFlIDqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B60D6C982CD
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178962903373.6534.13089453010359095230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52541e304f9f00360d7050d7f979855a24e87f8072a37cd1d347dfd7e0e1809c
Date: Thu, 17 Sep 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789629033
