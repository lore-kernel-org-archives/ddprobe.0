Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FFDD7F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 06:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713595223; cv=none; b=GfMiFus1aUGK3CVxMDG4xiPBFW/wtp2miTMHac4vvADSNLyvHZ7rktHVaDSaZdcyn1VjXUJyc73IEcODlW/t9+TW93iiAspMFAgukwDVmnTzVvKQJMy+DSXh/bzSvcPdYgwWpMP4Ct5ScIWqnFSci+38gC9BfJWlbFmsnJHjv6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713595223; c=relaxed/simple;
	bh=F9XKqX5GLdYID1lRR3HQblLahfn9spAqmR5mVRXwiRI=;
	h=To:Subject:From:Message-Id:Date; b=Uug7p2jYQVSjUN0OBGk2mmM8EJ7U7k7yk93OjJA61f5HY4F7w7Bl3kWHzIYZWGADwmAT5tQXzTNldhCo+vlrAB8LM8zjkigRCJzZaKDzIDPPmpbBAwEljQ8bICW6ETBOOI5UiWoSbRziUAXlVwDeVmdPM6h8sreoNGsxg8OJc0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E01PUASG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E01PUASG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0D03C072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 06:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713595222;
	bh=F9XKqX5GLdYID1lRR3HQblLahfn9spAqmR5mVRXwiRI=;
	h=To:Subject:From:Date:From;
	b=E01PUASGUkkCefpzSH7GXSVXzubqUy6KJuweNHnZZpGkBi4SANtKjP03dcKOOD2Jg
	 6K0OdPPz1uKUyr7vsm/ZZZs1u8Pgt9JwBK1ihglWlnQ6n3vt/aTyVCeo+1ZKzjVHDr
	 N0mybF1pw36O6Ms3QlxFXClDrylCk0ffFJZrtZ433NQiatkx1CldqfC0U9hKNXrae3
	 x7fi3QEUg7Vr6bC1PQ69VaGllRWrVBX9ovxsB1OsPMu3RMuMNQpVj2n2VyJnNbT2ni
	 kSrYfe/nsG9+vtNEWWwt4PO1H5joCrgRUhlxLbI6WXGHGlWDHtBcJdn8zJbbe2C8wI
	 wp+50N6kbMJ2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6AEEC4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 06:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171359522278.32415.14762791568130150180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aae108fe1c8f7cd015144586f306419f44d8427e8749f14ee9249f51343484fc
Date: Sat, 20 Apr 2024 06:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713595222
