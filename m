Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 650A119F
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 04:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714278743; cv=none; b=EYCH2JdqC1BxBuk3b3Yaarhh1vvwoXICtzjGLg56CMb7YYCht882jPvX3bnN9lpQlXgzeGEiOeHDg4hvZuCQxpuwUNxzTjox+EpPys4PtA8veWiGKFpu4Bk3uTiRJLT5zf/nEoQVYZwBPgCc4SuSUledwPvZue1spzc8ieon94o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714278743; c=relaxed/simple;
	bh=YDr3RKEiq7SYRx70HWBRjqlpWnKWrSJ4Lowd992nk1o=;
	h=To:Subject:From:Message-Id:Date; b=NpTA4oyN11ct7qsjBxp7JgIxXTSLfsJG/olOKaD9NzIxWFDGi+rdENBIpE1Wp1OIwYg6mCw5YDYISyzheY4AkFTOmU0wDFQxj/oEx2Y9muSv6/u8jnpVNgripWya+0gJUDaxNSSh5Hgn2NTgRSpIsqdZhvG8YFsll5wic+rVvEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YGyA9/Uz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YGyA9/Uz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D76F5C113CC
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 04:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714278742;
	bh=YDr3RKEiq7SYRx70HWBRjqlpWnKWrSJ4Lowd992nk1o=;
	h=To:Subject:From:Date:From;
	b=YGyA9/Uz7xizO0wmoF6EPbnxOGwMjW9SL2r2mXxoaeY79KW42CK0mcUfGvqbrn2Ek
	 v+3Xbrqkxfay4NBtBWsvxxenxx6hb7V7KfGTJWKaoRenEBMKb30gPBBdMuLV/2Wwqo
	 809ZjLddJyVfzEOFA8skUdPOHzaPHdyfR/SEw3TsbFvmqBFw8gKkcyAy+vUL7ICtdY
	 /X9ybaxVF2SesSQmhG5dSmDufuEIQQ6WvUuWc12kuGHi0IT4WnhhBNvEjNZGJ3QyEZ
	 pIs6IosHcg6gTGBfWRIzdEIJAxvLanP2heK3mULbSGgeeqOkDg/OJQZhoYoqe79lQz
	 TyDl7EXK9IznA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0441C10F1A
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 04:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171427874276.12646.13170230274785481069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e94b1229c74beaa37deafc0249b2a1a305d0e721fbbb50b7fecd2e77814af08c
Date: Sun, 28 Apr 2024 04:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714278742
