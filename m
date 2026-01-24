Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2836B3EBF0D
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 22:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769292234; cv=none; b=BXFi739uBdvM5h9mvY/FhB6woV3Y3/5pYMfn2rG9SWbEjR1XB/vorYAsOvXksE78h/CJMxYY8pQz+ChXhyALmComKW6x3VFh1yj6cgA9ckv372QdGL1FKEwNoCS7rXRGdcDx2rwISm1BjWNVLF8htB4mng0eyDAgLWuNgfGcZwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769292234; c=relaxed/simple;
	bh=/5WSPK7vkk8v+5+aoB1yzCCakOtGt6Pkor5TSghPaK0=;
	h=To:Subject:From:Message-Id:Date; b=H5bg9f6nno6WsWxXyTnBd0PHTizZ0jVuMcd1d/st9go4sdvHGAQgDbyTxTRFGUKJtX7fQYs8VFBsUuKbifEN/QlseBz/V0zRyrm7gSaL9cgppk2WstK81bTcLc5TZCpv7lZ+bixWNId762ukn9XGfT0THq10MzcBIYYlgFzDWxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LIx0RmlX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LIx0RmlX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABF7CC116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 22:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769292233;
	bh=/5WSPK7vkk8v+5+aoB1yzCCakOtGt6Pkor5TSghPaK0=;
	h=To:Subject:From:Date:From;
	b=LIx0RmlXITaLdMJprTt0lUUTL9U8cOAIvYAs6eBq/bjur3IXq3VsOCdDgDpNcLbiL
	 B2S5f5ib1JCAzkt7i6annTiBFV87/kf6uulPf6Ovzk6Cdzukzr3erzZeDlnHI0r9bI
	 tRr0hXP35Wr9/CCrrXnvcVuAhbskmmkyl/iGIyeFE2iIFudBa5i1BCm2Cn/EahIvAZ
	 C6EePS/hf0qSqM/mwSNqy7paYpTKKu8ttY7LwFsBFTAYmd8LY/xTaKSvRuBTNZEAOT
	 Ju/EjHkQ7JYQuLLDdQVY4JAScFjNI6dgR54QfEz40p2Ral0Wh2Nhx0+kYdMar+CdfW
	 r/nLbMK0GcQSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D58D715F8
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 22:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176929223357.16551.6285177230838339323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c8887b9e3b369ba10900e9d8f4d813b4c0beb5a32898a7e9e2d195a0399b6ae
Date: Sat, 24 Jan 2026 22:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769292233
