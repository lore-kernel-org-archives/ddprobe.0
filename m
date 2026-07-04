Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CAA42F12C5
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 04:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783140514; cv=none; b=XKvv4PtOiGngMSb186CoffpHYPqGEkaeE7eZWKCbAcJ2bt0R3jMA0DZc7W5Whr1YnW5KWODC7dXPqHckF2tIImfvMHwLooa2oxPb0ta76kqPjHYi05iskPfZaUqFn5BYFx2mbO4r8VJxnSc5MeNMdgDNfMHtd7ff8J2MGNE4Zpk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783140514; c=relaxed/simple;
	bh=KTGoJnX2yIODUS8edlDf+NPg8bv7CY4l+7M0B9BxrdE=;
	h=To:Subject:From:Message-Id:Date; b=sr0K+1jjrSm2zGFD5Gi/FfHgO78IAZVsUEp8cLKCMJshf2QKXHAFU8Hmzk4s7NIs43HKL+fBsrdSJNpupNknh88N+NwaiTyw5UGP89sS02YS0O1YAEmCnEvxSh1J/Nl3TTsGaYHRX4jjm3ERpkm5wcBtHF3upB84nAcVPVPj4D4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X11rfgoP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X11rfgoP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAFBAC19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 04:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783140513;
	bh=KTGoJnX2yIODUS8edlDf+NPg8bv7CY4l+7M0B9BxrdE=;
	h=To:Subject:From:Date:From;
	b=X11rfgoPqLA5+t+kor5wFFcQpKDAAeoGqKLYOcB33zjlYaFeikXnYt+YsboaM+bI2
	 N4HXUUoHy8P5i2o/0hMledozItC6OU+vHyDQGLBe0YaCw8SCuKeC1l+kqXbTjIdwsl
	 PiCZi/+CtmvNb0Tq91pQTpfZuJHqfBntb0pxChbttdHxLry6Z1VYrz0Q6dw4NIdb+H
	 9ao4T0198r79aX/bCNiZSzjB17iF1/5XmCLIWCqX8EYxgUYiWyHFpUI/oCz42w4cIJ
	 9/IAOkcyKpEjr/++RDyyzIvCjteLLgNrirm3CCg1vBUtOhu6Xb8A8VRyD6X5bQ3FLY
	 +UHKkdMkYL2gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A83F3C43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 04:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178314051368.11184.14105486119883878433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dffe960a585443027e020b3fcc9b24fb6d01c181474fb60b7ae1044b08806d05
Date: Sat, 04 Jul 2026 04:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783140513
