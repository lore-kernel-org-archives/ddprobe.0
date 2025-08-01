Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 308311925BC
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754031594; cv=none; b=qP4sOxGk2yk3NsW3GmaiHMyS9EJEGb/Tjn2SB92EPlDKB6rmMsbWMnchIIFrYwv30lTDowsPUjXYpHw79lX7lPukoCA1au0f5N/9eanjrj8NexnSzrBwEaZKDTFXCbENiR4ShgU5IxFN7tqZmfAFe7r/RoNLRqfwwWyxoR0u2CQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754031594; c=relaxed/simple;
	bh=El0LKkvy2IgSAQBZ720gE9n7pbRfnuMyytKneqprHUU=;
	h=To:Subject:From:Message-Id:Date; b=jw987KbRIPxkKuImPN235ZycLA2taHMVM8dEgxNf5XlNKBotHxKNZa3PByoIY0/QwAusQmHmJpG+ylDrtYnqq7Cf0DhWXUW7WYl7aubRW8/svxwve60O9kCxpXYKxOM3FAaJaaoC1n0pIEtwIMDDyzSefYdPVBIdInqbfrJY3No=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ve+B6xKr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ve+B6xKr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04E8C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754031593;
	bh=El0LKkvy2IgSAQBZ720gE9n7pbRfnuMyytKneqprHUU=;
	h=To:Subject:From:Date:From;
	b=Ve+B6xKrfX/+x4428TrgNfSx8huIxDb15Ey4l8+yfKNvlyxCswJPNFqZoSs+DNA+j
	 j0QOefebU13qpqD0TcMpJ0zGWJcutLOmS3NWRhWh1HqbTpS0dQaFK+20/vksuw/RlC
	 du5Ltpy8pYkWnPASjK1srS0Pk82xvHCOf5T4FpZjD/fKH4hi8qE2oKVfxM/ZZYYf57
	 nig91OfUrEjo8+ZfPXtxjvmzpkmoAdux3mkDyubyCwzptiqcVuWnsgqbRWdDGccl28
	 GiQzy64O8b12aE3fPow3lRT6kvKiIdc7qVfAXrw2rELV84ZeIa5lU8YQSMAyFfFDsO
	 XZs6K8RDXp8fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDE4C87FCB
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175403159357.5934.15287985459898589811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32d7e6a34c48d077fee27b6c2320bf64db039e6cb34d34b1e5657dccd7c0db6a
Date: Fri, 01 Aug 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754031593
