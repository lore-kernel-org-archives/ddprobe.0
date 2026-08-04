Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42F702E03EA
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 05:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785820234; cv=none; b=eM6oE+QGqEipyfbBjd5AJbS0luJA+IpiOVUaNjxCp0Z4zbo5uhdccUvpmdK9gv5crKGFIdxP/RTdQaG1xzRzjW/+a3vBFOw1dXe2+jL4s6JByg5goFobfRhmq387NRal2lQPKvkcBeeRkp5s5f1QBPqsgLu1Q6OtLpe+zXccrO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785820234; c=relaxed/simple;
	bh=IVzhqdJ/SV4dLPae2A0X0CMtmjuI901gNh2te+5yVg4=;
	h=To:Subject:From:Message-Id:Date; b=sCCIlplr0IfbMmpibtL63Zgv4NHPpZisplmzWHCfroESNd7Lz0VoSFmmmM5zWTgD7OuIMb58EUrf7oujcsgh4mpgtcDSUrOGfggCwKYbuF6zMo6KKRKVxs+meowz092NhcgYzqKhedJiNHv6UmPXGY9/2NWHXyrJNXBqL3rLBiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LTFAvzu9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LTFAvzu9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFDE7C2BCF7
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785820233;
	bh=IVzhqdJ/SV4dLPae2A0X0CMtmjuI901gNh2te+5yVg4=;
	h=To:Subject:From:Date:From;
	b=LTFAvzu9xDrKsAvy31TB3ap7c8f87HNdiiZKlNjViR7ULQLiuSRXi3UuT0yzcfh2/
	 k/wflTzUasSiLVMxldkQUuKuY1sCkIecdd+LLLAIXkGVsCCCNZWYeaUcPlA4RX6d8L
	 bHw4XKe+sPxpZVa75vzGrqfQw2eQVk5uSH0zkX8Ky0eX1uWu1fkW3BCXoDLBMZDXj5
	 N6/342FpRnDyixhpPHM3Sa1ziXeoiXpnq+vN2CCfbpiUn7qxzHslT+KeXxxMm3p906
	 bYpPvA18WxTsdpyTIxjqjiAUTRpJTgpuXuazVBazryN3DIbCw/c3607GqrZ5Mu5Fa6
	 6kSXBcoLWKqjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAAA5C55822
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178582023368.19830.295767363878877504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca729f4a936d779da56cdbdfc42730e290eec9132b42d48749b7052df3512695
Date: Tue, 04 Aug 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785820233
