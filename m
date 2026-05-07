Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DCE91EA84
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 03:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778125054; cv=none; b=A9TM7w2x5xgnJLrRdDyrKV9kBdsKEsgt2Islghuz4Y8v0uQ9O0iAeNjaEtjsNqQnyWko6ySq7CcvV0J+IKFoHP+yAlQQ/s7NMDbUDqMT5cAz4wNEQGT+EcjfFNb8ruoaELl3p3ZFUsEVZj4MfPAToBg+N6TObtDRQil+e1B9Z9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778125054; c=relaxed/simple;
	bh=4mof5wEZ2K9X33I+93FG3yvx7QWXbtQTy1eUEC/0TOM=;
	h=To:Subject:From:Message-Id:Date; b=Y7QSJv9Of0a9A7IcKWvqD/z0L0nLOHfquZvbjyJfLLLJcgI/uARAudSmT257M0BdiIGF+Wbop57OAmiPdD+32JHpmkZxRYz4ppz1jBP5oD8Zc2krhfbr5BPDfIUaHCx22yUEzUpoPRF3aNae7NzT/EPMlvoA1a85QwX8KDlbLxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qmox+WdJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qmox+WdJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD2DAC2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 03:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778125053;
	bh=4mof5wEZ2K9X33I+93FG3yvx7QWXbtQTy1eUEC/0TOM=;
	h=To:Subject:From:Date:From;
	b=Qmox+WdJYREaEziMxd525NnqrXo0PM9KpWJN/HqdhZ71Qk6E1/R2xyVBK7YTXWIG9
	 BxTtGTyF91OIChqNstrEXfyDutM3ktVeWbpACFadrer1TNF3LTTQ8lwMdgav5aXRyK
	 9+0/Jevj8UsYs2YH0QNqKUWurjTRMDE39gcKI9U077Jtd3QuwobPDKYFd18Ec9FnUP
	 L8Gsxr905PFbZGiP6JkB/BffVjK3OZ/hB1D+WNFwQ7SNwnx+ATGheMbUNHaeCj4iYn
	 HIYBeuZ+aT7HQgvG++W49IGFdBMc08ZCK6y57uNS9BRhDSNUX4UfuOo2Xp854sF/ly
	 dU3ODKTnBh5Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB4A7CD342C
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 03:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177812505369.12741.2797527056974910335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce1c0506501cfb7cbcc2730eb795bdb5ea0bac783abe73407fbb96c3ae7d6cd6
Date: Thu, 07 May 2026 03:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778125053
