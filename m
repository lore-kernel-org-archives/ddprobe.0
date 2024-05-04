Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63BDB1E53F
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 20:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714855943; cv=none; b=gw0VjRp8o8LIKg6LwJiMnLNKk3pGwUtkQ2Gam9YmSx7LkzYejCPINFlg9BaTv4sr2c78vYxADyI5xYTVcc6OZT79hU/+cWKIoA81e0PvgcZGb3CstFHgYmFLHq/gFicirNo8icSencbMIt4DLwd3y7ItyaGp3f7KtwMVvdiuyZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714855943; c=relaxed/simple;
	bh=NK67TWhGN1sL+A0BaD//gTI8n8mISvDfFJVXM+YZQbY=;
	h=To:Subject:From:Message-Id:Date; b=nawtw81JNXydu3zR11+D03B7C2jBZ0mQalKBCUJ89RMJY7lfcpTYwxo5Ur+wJeOu+4F1ZYoip8See5rVzdeQTofEno90I99NUAGaj7TLjaNLzS/ewUD7QJo4qh1OxrodRvh0UIyna9nV57aKzF8LqHzIf8jf7oCQjpkZxdDKfeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sOo5Hkaw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sOo5Hkaw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC1CEC072AA
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 20:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714855942;
	bh=NK67TWhGN1sL+A0BaD//gTI8n8mISvDfFJVXM+YZQbY=;
	h=To:Subject:From:Date:From;
	b=sOo5HkawLyTOlvFfGHH2DT6g00YtgAR6rl64ASCtR+uvVLmCMFegfoNT+WAZVi2Ke
	 HpFyuWuxUznyimPyK7FJ7yFddBydmlvs9lkbM6UNeFt0r6u5k7UHFZyC8sFgGxlLFC
	 1iGvTGU4NoJBgkUCTBL0at5h5s8rCvo66vNIN/EoJWnab8fS5qcz4EqJaHqDxofzXu
	 0l5EyrWhkhwbARjTHQSOWcXIC+JNUnkzMCLssSsCNqDfVrI5lsyX9mgDZCvB7YX8GU
	 mOFRfDTUIwiXNHNJw5Y3mDYG917Xk8CY3IhUY+bZjOEMVGfsCX3EnO3zImU3Ac8nmc
	 7fLklsc55m1ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C70DFC4345F
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 20:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171485594277.30091.15292011903207781711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a15f92de248cd2d5481f8769ea9ce32cb2f4a91f3272aef078dff1bac53f6351
Date: Sat, 04 May 2024 20:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714855942
