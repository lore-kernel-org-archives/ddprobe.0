Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 398B122D785
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748661594; cv=none; b=bwHRDCeI/TjfuuaaPSaECvLN6d2YvWePW/5wUv+/P77ToMA1kUDch3i2muAmC8RhfUp79T2CQFpFlkpeJ233oJT8I1/va2IGUFHMBQErNXr/XMYrJcW13lLJq8PF5qlcLPuxQRPL2dVtiBSDeOaw0vNUGg51Vv97d57xwTgEIsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748661594; c=relaxed/simple;
	bh=88tE2UtCwcEonBygIPbGs/9/6vVh1MeRNSKGhBWLSjo=;
	h=To:Subject:From:Message-Id:Date; b=dGrWnArQ0zsxJ2DrO1bob59+WBbcSA6onNxovuKa6Oa1rnL4f3188nGnhkFudcWiLVUr2anIroVAIqEjkffkCScSMmWwkys0Fgwl1cCJQxmNrqmRPROoDSfLT7Jgot1+n59OoPu+8V1rj3EYEuQzezhs5GNIk9zE9T/a+snrRQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oi5i3B6X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oi5i3B6X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A53F9C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748661593;
	bh=88tE2UtCwcEonBygIPbGs/9/6vVh1MeRNSKGhBWLSjo=;
	h=To:Subject:From:Date:From;
	b=Oi5i3B6X4ZXPARtQ0zxgTIdltkosgbKRM+w94fj5vZMPr3nF4IU0OzcCBh38WmiNl
	 W1Ak59nfZRCoiuXWoaq5jFxZ9DK5FmKVBVfx/F73fpNFIZEwFjYM+hzVreWOC7DbdT
	 fNol6J84uJ/Vt0x1BCk0UZCYwtxqCWs9caoS9dA5te5gAgAFTilCreoAZNYx1sslQk
	 weAAlxcJZFm82RXrQu5gc0zQ3febOTAZWdKeWTj3fz6gEbGw+GuM0QX05sq1FS1Cl4
	 YnpnC/qLjA1fih9VPsN/QRm6VqFAGUKsLn1cpBhfk6viKU0k0hPYKmabFVYH/9nB1i
	 Srt6nWaa9LFBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93ABEC5AD49
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174866159357.31720.15729274009473327148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41d3bdb391954d551d517655fa7b0beef4f3c0a9c6262f0dd2b16110da71db3d
Date: Sat, 31 May 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748661593
