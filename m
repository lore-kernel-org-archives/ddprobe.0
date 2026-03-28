Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 082AA40DFA4
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 14:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774708494; cv=none; b=hrMSZJH27rjMCPuZgr72wQqea5rs7es7C41r3Z/MLir340Ezstd5SnY+J4s2abVVXJ/cGUMoBkS8NM7uwhYvXWePr2EGzv3YmEAhC3Lv0myd844q0up3L+YliEHGt0Rp2xjvIe9eaF/1FTfhpbGxu995IkKoBNBkrKMLZuxqbS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774708494; c=relaxed/simple;
	bh=7NqmKwkdyTJcPRWIzdOnxcObvMhpcrki6LCDI5xhzS0=;
	h=To:Subject:From:Message-Id:Date; b=VjyfY8fA0Le+P/ZwJV/SV94iHsgbE5TZW0lU+ST+13Ied2qGudD2WKnwuVqcny8GMcFeUO8v2ooIrlx+KEk52AECF6MBu6mM1lDx5C+yBjzCuP446Sw8PPeALRuRXxiKhVoi0BCkQdogEEB6+l544Us3RiBAyjisyaxKoJ84tNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NkoFPw97; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NkoFPw97"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3522C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 14:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774708493;
	bh=7NqmKwkdyTJcPRWIzdOnxcObvMhpcrki6LCDI5xhzS0=;
	h=To:Subject:From:Date:From;
	b=NkoFPw97teAoXMqf6FkKOBO8zlhOW9Zwb1Q0kMKRiuMTAN2R3mD0i0eIG1532/rYz
	 b74i5K7Ovi1zDRdjfwhN9PKDFY6X0isE71VW3WhFB8via8YxnKcb2ffCdrswBxcCKc
	 yMhG9QTlkW4LVUB+yCw8h7TvAG9fXp8e746m2zADncYvy9dxp1QqVFkwgxuvsFBMNE
	 JD+pR2BWHOezUz36Gi/EwXyTXkY9G0iGQT2HUyxDvUIWS8B7yfQrEUAkLO36mm3USh
	 EAP1oOc/9bSI3YKSNwYdTOvD2frJjB4HtoZC/wIpRKKGHGyGteocqtNVRBxCuECu8v
	 HnVPubhjORcBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F6010F3DCE
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 14:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177470849358.18357.16510400845226591176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cb94f5bf1ae97de1f528b0cef5ef3190e587750fe5765ff3f06974caec302e2
Date: Sat, 28 Mar 2026 14:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774708493
