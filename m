Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 311DA258CEF
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 08:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740559734; cv=none; b=u80SB03Ic6EdnUcYDHl2OZ6FMUExOW7+3KEemIUb4+fsAuNCTaKENXme7YGUHZXLlu0AplBVvwgnOtsJDJw5Pf9ukQMhs9cmlzzKj47f03w7A+bBUq2EG0GHt6aCcs1pacLbPlHYGh1VmuPGhb2skPFoMZGH4dSeb5JT+wBDPmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740559734; c=relaxed/simple;
	bh=aDYKjhnLaBjbiHfUXHjGMDqmYlaO4EoBifjakjpuk4w=;
	h=To:Subject:From:Message-Id:Date; b=Oi05s27F/3xHa5Ui4f0as++z4fU+y20dPYEzoG8h5gaVwkuR15HVWGjUpQTNoGK+nf8lIuwIrhrba0f7BvAngCy0PKobJ8FjZYkf6HehZg0rLppgFJ6BjOwwCmEtmf7sWM7TDdpJkGCHQGEPU5qEqBbUWfel70NVaX+GerHR7Dw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xao20XiY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xao20XiY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE0ECC4CED6
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 08:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740559733;
	bh=aDYKjhnLaBjbiHfUXHjGMDqmYlaO4EoBifjakjpuk4w=;
	h=To:Subject:From:Date:From;
	b=Xao20XiY2G/6MDuF3mLMMIVoMtg8OkBj1Z8jRJM4T4BhvRebDjDzKhdIFzDGlypML
	 pKmPrthDOwVx7yYSrBC2Kj6BFC8om+o5dmfETq0kQo6cZ/elos/1AH/1qkhXcillG5
	 Jln+QemLdqMghkgLTwAh5wILwEgrX4rRq1q2uDlNTBBuhOSMJrfgeQhu5K/kVz2W/o
	 cOqIOQp0rCaN2wYdC/zPEa1oNIsUrZEyfeSz4lsqeXIEGqfv60RVIoPE7joinTl6hQ
	 2G92CEnP3l2Z2WTvASppURVtLnEOMKaF5AtcWr3GVrMEw990mRLmBaAzlJNi89A1+Y
	 qIIcXMtyX5zvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BE99C021B8
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 08:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174055973362.20249.3939220523463818880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff2933e75851ceea1a80d7f6446ed2952429c538f08d59dd8e16f087cd2a084c
Date: Wed, 26 Feb 2025 08:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740559733
