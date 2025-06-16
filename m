Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF7542C1A2
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750061994; cv=none; b=NZuc0yIJZZczXdAtZFoH2DUGMBQ8M9v5WEQMM1o2m/548vRxR+8+tUZ1jfGEhsPhQVnkMyyN2ksv77OUfSSLT4CvgZOkpSzUSA3E0u8hHyWpdEF670BNfuf3vfHL69kCTzNDWgoMZUwZpIbSjoSl4VWrg4bFmVsJuRBdg8s/b/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750061994; c=relaxed/simple;
	bh=NcS+mA0TxrL0uovP3rpOSmh3eI1NEJkDaOLN92dUMIs=;
	h=To:Subject:From:Message-Id:Date; b=P6B0rDPfcAmDoQ8mHz8qtGAZNIo+EqpBHzODZ1BJ0jtS0WXaoXZIky8BHDaok+yP9mHugNuXD7E3vKTeWYnrn1zSEi9wseBsa38V+yLjXk9Qy1ZdYhQ/DR6SLYu8onyf3YcR3o480uwJ/1+j/Av4UH5CsbpvAdhSqSIKVzdzd0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y6sWsQdM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y6sWsQdM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0ECFC4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750061993;
	bh=NcS+mA0TxrL0uovP3rpOSmh3eI1NEJkDaOLN92dUMIs=;
	h=To:Subject:From:Date:From;
	b=Y6sWsQdM146GCvOII7+hZ4gr/4hKF2BYdi3s66lY9zcZOJOLHJnNO84f95932zafO
	 4bv20KtpliFCTQifp7j40gKIDdoeQ69zgl1oOcWkIpglvb7C+1BCTgCU2FU668F3aZ
	 GUefFmJYZLMfGNQreePjieSUggVSJKqmrkFMNwUzX5CMT3uynrcqhytPHKwhp+YagJ
	 XEn6aagWus7DOqlIw69ooFJ+btZMtwf/vZ23m4WZTB7bgfPnRQtGx9o5DWoJ76GSQN
	 yEA8U8HDESLsvQUwFlB+hMeEPdbDk23VSpoH4WYLalPdaknDHJKezbisaYatqKxpXz
	 dHJ+bR3O0lTWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90735C71136
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175006199358.15570.18235252151503021137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 577aad4f827260088be3c7ce90e1f35ed9efcd4e9b31968d57ee17815483d429
Date: Mon, 16 Jun 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750061993
