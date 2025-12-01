Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20BA4244694
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 19:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764616974; cv=none; b=AN2LXl9EZaeeMZj1XzexlRiiuKC0fct5R1j5rKmm5IfimhFWQg9dB+v0uKNLDTWPAIv/tbDWG2PJA01Ah5qJFqrO3S35aeE444f/KCCkJWh5S9XVYTH238uKcbFn09RjjEaFRguGU+BFmeCnE9gKc8TICcx5KjjzVSJSOmsiM14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764616974; c=relaxed/simple;
	bh=uGuOEIqs/pIw73/DhYu81r9zpQX4K0Q+qhWKdN5NNk8=;
	h=To:Subject:From:Message-Id:Date; b=SMC+J3k8gvp1QUgfN1n5bEniqDvI66fN4ba+N5WPweEHJUYcv4KbgBbSvXVF3RD+bIekuM6mlQACcf8yAOg8yJ8Y185m0giiuZ427A6UkmzebNr5+2VrHdRKIBr8NPDfkvGxKYOBMKLFfM8oBtpj+bxGrJ8UYlBJd2GefFT43JY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rRflX9fJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rRflX9fJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD632C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 19:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764616973;
	bh=uGuOEIqs/pIw73/DhYu81r9zpQX4K0Q+qhWKdN5NNk8=;
	h=To:Subject:From:Date:From;
	b=rRflX9fJykLnR0kjUXGSkUyG5RHPvrdFCIB9vJLziXVh9dXoMXh20rlN7twfvzcee
	 I5lA2lSWiHjTB2/X99njLPPXhqsfz2gFWZxM/wWmSVACSNjUUxTkn0gxLx/JX7N/Yl
	 4kN+khOAWc/etPtr3hvUQJfhc6lTbv8ZXiraYcfrzB1J8WG/5hbB9ONSTR87aOi1eQ
	 Bht/eoclNsjb/2+g8EKOyq8MyR3qdnqZf0NDpeq8U7gm8DrTMWPFdXpUjnLucAdYRD
	 5dwfX6lw7eLjSb5CP9bTDNuDjUmXdRy2CHkg8zzTxSDmDPO6r3WJq4Rs51O7J2eUP9
	 pHIDfjddl9NMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F8CD116F3
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 19:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176461697359.5805.4659879269694439133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02fde4b426dd36e6cbfba356a715c3729753bb8ecd23704db4a9f03902dad10a
Date: Mon, 01 Dec 2025 19:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764616973
