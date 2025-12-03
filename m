Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1766A274FC1
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 13:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764767574; cv=none; b=deUpBDk+bHpEdV1hpM9ep0dIJIbuvM3uwmtuSJWMODYAcVaJVGf01KB9CzIL9TIIkVVc0dLs9uCYt7s+4oeNcdgz9YOvKsNLiKbEWuLUlnjE9Jv49DshUB0yV3oW/guVkJ+vvOjjY2/7bIxP2v+VZCvpFYiHGfQ8d8NvJOSvX8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764767574; c=relaxed/simple;
	bh=1GdPsQISPX9QdZagWpcA0zA+5bidhA/MjD+J3sNiTso=;
	h=To:Subject:From:Message-Id:Date; b=ss7jiPaKOomopPe9no7AsUZOR/7lpmWmps/toIdTCmPFbKRxpSwzVjpCGe1+bMaRs9sV2opu60wIX7CsKmPunoxTqDpVh9IZz90sA8zgpZTB4ts2EO85424VZQFQCoIW1o2CUxFqnZfxrxXzN1yIXNR2LMuWSze9jrcbDE2a2mo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O2T7QPE6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O2T7QPE6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D6CC116C6
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 13:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764767573;
	bh=1GdPsQISPX9QdZagWpcA0zA+5bidhA/MjD+J3sNiTso=;
	h=To:Subject:From:Date:From;
	b=O2T7QPE6yUQ7WlvsDxiGTJyX83/ZAOXGgmytdAGrjNTn8BOTC7zM/pQYDI68pDO0K
	 2WUKFOOTPkIkr33RJ0h/7SdoBCBEB8HjFrz1o9kcmjbN93KmEhqZJQ4cnIKTZoLD31
	 hVxuBBoKSzYnuQ82wUaKV6Dxuev1EpdhQ1ZZ3Zb5cD/fe6rm6S4rfkb2MKIG+uD/BB
	 iXi6BbxMR4ZJcUZDz5i3w7ot5e+u1Es0pIX5w6GKJcW+0qcgIlL2dPfTmnUoViRD50
	 tkwAIY6zYFfjcj88dpUc06FgpLwVBX/0p+ytkyxOysf8/nXDyWoe85r1APWOtMidHj
	 BjmyAhN1SNFNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FF5D12D5F
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 13:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176476757359.3758.145944076850483761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6b1e89d1d800c529f970cc356e2af40d717f1f36f989d120ccd8776baa7dc61
Date: Wed, 03 Dec 2025 13:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764767573
