Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41CDE2E3384
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742660395; cv=none; b=uFbuR0yh8zQwmy6WLPd7LneWGMglQhC3wcfFeMJt4vRIke+d79qY2KO1F05Bhdnqt8edibNVatAluELJhpU/2lDoThbZmkw/wplnyYaa/taAmkYfY5J2e6vWs9Kn6N/EH8kLM8XyHYtstVB2aPoS4lr/RNCAaapmycfAfXf/ZLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742660395; c=relaxed/simple;
	bh=zTL/tARTpxQkUIIfHVCV1s8qAo1ufkGuYG6EHwvV6Eg=;
	h=To:Subject:From:Message-Id:Date; b=fPADU5JQoEPvssoyOGzxA3yT7pySbVlVoNMA8KtlSVeGhQ+Hme47y3l4zjhxTThrXdoUMBz/qGoYpmxA5Chs+ThMDnqFf/e5nU2aWSRifbGUgGsajRJEmQytPM+MDubpXM9feXf3JfuPEVqVUxVmDJjmQK4hX4aHWXHzvB9xN4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uQRxWDYa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uQRxWDYa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A649EC4CEEC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742660393;
	bh=zTL/tARTpxQkUIIfHVCV1s8qAo1ufkGuYG6EHwvV6Eg=;
	h=To:Subject:From:Date:From;
	b=uQRxWDYaIag0NwJ38vJReWom8pE4S2Ou7b5E6iHR1tPx3dsF3QmFmMp7FjYCMQ6ka
	 CA8+Gk3I52dxPRs0MtLqmEUNYeqfdoekomr3s32oORysSgQEbIQvhThSBgzVfg0V2Y
	 CxmXPYWJUEfBKrsalI6VnOAFR9oWNUhcqu+OK/D2JmwtKVvssBeypLc9i43APTLd57
	 3MF2xnA7obCGzu5Y7qNWvK2THG0LC+iYpcRQCXsiEytZojcfvMTkNxXEZlirWoNuMu
	 XNQTcf6bydsSJDfxUsnMJegALR5/iW2hMtgIV3+3BE1QhUCzRJd0v2/CLu3H7C/ojO
	 ZAwKV/MdGOrIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D4CC35FFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174266039359.29153.16542031726730655952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90ef1f4b1946c79d86a2f968deff3f7e67b06437ce6b2ff02af7f6245103b37c
Date: Sat, 22 Mar 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742660393
