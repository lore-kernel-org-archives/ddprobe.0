Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F01026ED53
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 21:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763845914; cv=none; b=RtlYp5qOEW+HG7goVc2m7mGPtJl0ag3ka17aPHievFaaC2p6ZHGUmqjCx/VBRqNvfgSxADSYIUTtnTDKTSP3iFDKX3F52B2ss7PUmiYbFw7H0FssaiHBlP2D5B7+lvCk/5elJr7beN69dsqFXAlrCURh9gGeyMYqytQQUpJOiMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763845914; c=relaxed/simple;
	bh=yd8V9rD4gHLw3GfuvnjrE8RjuxaAr2oLKYmgRxxSpyE=;
	h=To:Subject:From:Message-Id:Date; b=cdkloasdtXqCjCEhsCezsHvEBuZKgfI7dXibUNZ5mv7H+v2yvB0iVkS91f8O+p0wYmlYQOOTha8x0SIoLobjZr1DOJtv4JDyzmb+lc80SojdrYKrOwglscuEV3/kguxSXoLNwwWAHVdHBenI+70h+vi2iLJPZW+qAZoS0JmCzEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rklf5F1C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rklf5F1C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D98C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 21:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763845913;
	bh=yd8V9rD4gHLw3GfuvnjrE8RjuxaAr2oLKYmgRxxSpyE=;
	h=To:Subject:From:Date:From;
	b=Rklf5F1CAvgz6rXVz7cQj2yRZsuS1ImpT/GJufj92Cnuc2PRnmqzcn05VMJBNG5wS
	 2CFJqXHmuk+84n0P4Kz+Q+JRcLlVotiMyVyru5aeVvyjLMBCZp/KUZwXRyfiLZ/bLy
	 yjVNhgrC6VXIrfjCzrdyCZO8DYhd3YzTrHWd1AqcHRva5vIdx4OtJz4vWa6yBXBmjA
	 N2kZKaAx/imT6Cj/3Clj9bbfwVdeTRW7TD6S7PypWu7mRaUpIrOY80OR34R01Tg5oJ
	 ZKRVjBNGmyWEv982yqF6IyayotbJsrl9kTXrHcZALQP+8YKcrNv8mZbZ0QLhfP/otX
	 ynbbJ6I09ub5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901E5CFD2F3
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 21:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176384591358.7693.11890279715928432604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f58939aada6b024508a7b399d48242fcd8a28e41d0a1b9fc9ab7a2fbe0ac1b0
Date: Sat, 22 Nov 2025 21:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763845913
