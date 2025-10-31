Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26ED92459F8
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761874194; cv=none; b=ay/5yAwitsv66CBG/GsVcHMvg763VSMvRSKBvZavomGGDf0O9me2SEn1adi0J7Fqkz88wceela8atF+DRfjws1cvIzBZbJe4Z0sTclbR9qW5jIAGp3EQ3Dv3N2imwwD9wu+ITRwKUgS4S5Qz5GfxAXnhAqcCYMiBnonvFPJ0xXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761874194; c=relaxed/simple;
	bh=oH6bb0ffwPyUhu7X46wklI/3Vdiem3ZpNgXcDsWrG04=;
	h=To:Subject:From:Message-Id:Date; b=bYTWgB8nS5CwbIIg12Nf6/F/5yLUX/tq5jJLkWj6koih8yblKHLs9miWnZyyE0pwwePWjjbaUpGlwoNO3brys64Q/GJc6naCFhpCkL69c9Vsj30Eqsd3d98WcPUOcRgfqIProXK8WmWCoqvgAgCtlFoQDqMOk0LtwC1Y6eN75xk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r9B6maKZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r9B6maKZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABFB0C4CEFD
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761874193;
	bh=oH6bb0ffwPyUhu7X46wklI/3Vdiem3ZpNgXcDsWrG04=;
	h=To:Subject:From:Date:From;
	b=r9B6maKZdRNVclG4Bz6l32iPgs2wpb4r/Yk+z/xKY/ldGu7VLhjHMXMOEYVifWrNg
	 dlK52vA64FyhdkOeld2PzfdgFXAJu4CZzYtqAXAi9v/bzzJahTEb169Tn0SIPQZg4X
	 hSmkaKEHEAUkAI0FVNQtANfJLtz6HhdfO6shJAdiTul+4MuupG+8r2/duYSINdCHrR
	 1ZN3LCaMgMBZnYaFlSRNRObz0LfdrypH4m9hM6h02gLYKYXYlHc/n6l92EpUuio/1p
	 hNop+N9dssYLQUJ2Qi/B7u3GIUxnMFd3ZsKOnk036MD2R69JQil9gLyMi6xspsa1DF
	 8o/Kqm2jdT5HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D220CCF9F0
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176187419360.12937.7515418869578976589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7ac2d3ed7fdf5b46aae1b49a3ed62851879dd4ef799e01de973ae4e49156f49
Date: Fri, 31 Oct 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761874193
