Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 207B22147F9
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760536794; cv=none; b=itkMIfKia9itfaAwq2bI4Z7z1LW4zGSOqWVCCdAVO8DmGjMUqZQjaDQpsH3Uayrc5ixRCUu4DwqAxTA7ySFGOYpGTF+/u6fwjthGo/PBqpEzBpjtmZzwbcNvUsufOx6QeStRNE20bAZa5hcd1DHI87RoKfvLX+qbfCMKh09n0yA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760536794; c=relaxed/simple;
	bh=4pPLwqYX05Ppw8I7+NlBZueShCJf5Tfg01dyiolX8Q4=;
	h=To:Subject:From:Message-Id:Date; b=F/s5ZY4aGAgVGHpsop5gl/NTMKCNdhp71V9yIyHDgm9thkAQe/H2soMgRuHzFXzNHKaB5blc2m+h79SDV8X1RpaUNDdbDbdlqdEzArIR9bvN8SJ1kSe3iEYW8WQO44LgkDTHIbzyl6oIcy4lYs/QYK04toZU6/dw6knK7N/ieos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SgsXWIYn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SgsXWIYn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB8D7C4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760536793;
	bh=4pPLwqYX05Ppw8I7+NlBZueShCJf5Tfg01dyiolX8Q4=;
	h=To:Subject:From:Date:From;
	b=SgsXWIYnisxFglnhq9MePvBEGLBSUQBTvjaiH4qUiPlMob0slnd7M2PM328pTMLbO
	 Z1eCbMmojlAWMEjiE6g5TEmxsK6xd/kJEtgm4EJ8q/1rtfDfEA8I7B4P3n7cY2+eFp
	 xKKwPxR0s/ophlMv2KZhtmuOoVtMRrHpTX7WoqAm+LxnuRAx0UIb5fSPTxJs7N6JBH
	 mcWb0/lblBFkni7i6bz5HrkrCLcr7YUb/KXJ7ph0qTsetU57dLlJnV0bSaSdBPNW1F
	 5PWJ+y49SXvdl++13Ajq33KsBWM3k9Kdd0THGdZBbuT+HwL6sAkMslIIhFMaWwp3+t
	 KBeyh9GTGm23g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BF83CCD194
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176053679361.5564.667082301633524429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d195f511513f5c0dcf1269ecbdf28123030c40a4b73f9e8245d5a19478aa3f0f
Date: Wed, 15 Oct 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760536793
