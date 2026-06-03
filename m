Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36B0A2DC344
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 16:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780503874; cv=none; b=ItImhZqSAymJEjnncyAGmqqi3G7VpNozbT6dr7QZdPQCa4pmuwVxNpTyQzkRecTccWDciet9lPYDeQ1LKzA0adIBJL8PvLl9JDIuCGUCZYAkYjyI0A4CsC2SNvrEN8ryPBJ33OeOkU47Lpsi9yXQeZhKy0fLFikj6VZ2yzDZOV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780503874; c=relaxed/simple;
	bh=coZCTnhiAMaKk5t6WedSIlU3Uyxx5YpvcAhBPUXFWU0=;
	h=To:Subject:From:Message-Id:Date; b=JjVWaReX8jP4P6vWOiRFn6ySzifWIcRZoduOCtUWiHlsB508Hfp0PvmTvbTNaWeiJ6Sc7Kss+ytd4165K0qeofEjV1/wexCVAaERMJOhPDEXguEIk7D3elizwT4r5sEy4Wt6LYHI5VUNZh3UDqh5a6KkqjLSSzJs9P+64v4YvtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mues4LwL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mues4LwL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6745C2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 16:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780503873;
	bh=coZCTnhiAMaKk5t6WedSIlU3Uyxx5YpvcAhBPUXFWU0=;
	h=To:Subject:From:Date:From;
	b=mues4LwLDxWIv9PR7wqlS1aS3yPkAu4vK4LU8K1U5NYTipYzICof2EF+SylIn52Jz
	 FmWD1sYBxEVAp+HWNnYtaNu92A3DjE/3LBN/W13bbizxFwfJDKtmLBjO/Z7w6LNbiB
	 A/yOSsNdY8nXKmBCstSgMnc4nq1zwD1SvHm0MCQ5nXLxJ3VykM/XtkCqrQ1bPWa99V
	 cvVW+Z83Y19jOH4mTNpz2KaBB+L6/lhUu1HQGNvf9YOATFcqyz87ncv04RCNK2Zrgs
	 m2pkIGZanGL86jrlsJE8RvgmUem7hslu9wPEGmp1RL7toU/kfyAlWfPPgnygXt7VOH
	 pVTK/BlsirTgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC963CD6E55
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 16:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178050387369.30212.4814795356992385827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 814b0546a18ae724471e84d8119a4f67ad974a20b1e551485dd16bdf3768010c
Date: Wed, 03 Jun 2026 16:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780503873
