Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2F233DC4A8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 18:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783363114; cv=none; b=BXKoqVqtiKUvXyJdc4gfushKg8OgVllfGDX+6/SgvHs5kp8dWj7WcTHPAJGIiE4VOsRUAKihhoGES0HG2mI+8w5kkMPjFO1SR5YcZns6ZoRSNfdmZwqnVn82usUlScXXifKltpD/mnoFB09Q5JuTFiWXiyqN0iqQqjYPCeS0uqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783363114; c=relaxed/simple;
	bh=XHmkFCmJMunwh6VaRCDezxcrm3rS0zl4fms83+FThvc=;
	h=To:Subject:From:Message-Id:Date; b=BdXviriF2r28cwes+XJel2uUZvn+uqMY9QHzUFi0H+ghFJoliH0RPOpKXE5LICKKT7suM+ETtOUx20stEhR0TuKoWBD+Bx/PcNgQfpQ6EgPF3YBG2KOBPj8AvGbhiOoLSCL4pe2T5HNR1RvpC4OV1ewcyEUuDg07ddfa3klnDTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ucPzpuFr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ucPzpuFr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1E3AC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 18:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783363113;
	bh=XHmkFCmJMunwh6VaRCDezxcrm3rS0zl4fms83+FThvc=;
	h=To:Subject:From:Date:From;
	b=ucPzpuFr+RsCVrZqK5QyhxtF0/+NzhRM+1DPtLBsHcC4OVU/Ozc2mc8a6OuPMYZ3i
	 s1T5v8xiQBDbRQR9n2NZjcuiO/oVcVfEa3eEpF5iRpvSX0xmwc7oi9CC9l+wyL1BA4
	 fUD/H5q6gTv4dJKbiIrSb/bDMOy9UIveK2aVULEYKUwyM66weofeCBbCl13QFvDEw0
	 BSZrjAJVHhUjHotX0Oj76lZ5oQmt2oKxBI5KQGsyVs9XZF3EPb6IrWWJuFy04912in
	 QaC+q73JZpD+Jv45r6KcOsFLkLyu/5f8j7mNl4NICXsqgAm6GHG9kC5jujrvQW2A9Q
	 dC/JpFFcS6yxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D51C43602
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 18:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178336311368.10809.8855744891125636875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20e0df0b23b2edd3da6e3d1fde4a483bdad598da4fa3688980d2cdc8127a9cb7
Date: Mon, 06 Jul 2026 18:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783363113
