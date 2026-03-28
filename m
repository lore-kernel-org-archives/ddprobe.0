Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26E50146588
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 11:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774697094; cv=none; b=NqJDlHuOVpuWIlOmQ+QVaZw7BpvaE97Rob83rmE+3RkodD8JpYEl3l71OgtmkmF5vEwVF/bOuUUOy8L2GkgBt439G/ITUPZwPg9PNjVU/NEmU2mf8fWU0I2dLIRn/qdtArA3BkgijnZmtz+AZdtA71nOeJYeei6X56xoQslEfRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774697094; c=relaxed/simple;
	bh=aQfejHNGDrGftqdrHBkrkIS/qQd/RlGVouCihnZjnM8=;
	h=To:Subject:From:Message-Id:Date; b=Qn7iCRFvuaIhuu46cvJ49Llc/rwSwohnp9bu5ZWprR9+m+QPSrekEir8wq0SDx0qnPYAY/ON+Ny6VFx/3i9Rsuh9KPHxYHKltTJ/tRPinSsCaez2SDK1pen475uBe/lUgCLSQ3/Wt7qukV0B5SbVwcY62hO3/YACNt7KDTbuH/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j/rrdRtp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j/rrdRtp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A99B0C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 11:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774697093;
	bh=aQfejHNGDrGftqdrHBkrkIS/qQd/RlGVouCihnZjnM8=;
	h=To:Subject:From:Date:From;
	b=j/rrdRtp9bhyR6naOJepL0FNx8fJiHGXYR/m5tGSmiYBYWvFptwx+64yzb1sE4nCg
	 60jhY4yXpYWJ2B0dohhPGiJpZ3f9ysshvPl0KkCpIap2/cAJnQ1B3WXJjQKJbCn57Q
	 w2lEfUafqxxUdcRIwCEUGoE9UijGf0px3oAAIllFey5Or1VoFl+6LwHki9z4/H1rHf
	 +E72h6quX9GAZtMf26hQAD4FkFbG3UpJwVJNehRjz3SRQ1O+mqbwTYFbgKar2hq6mT
	 c0s5ABZoS/qx4rdO5wzbqwWm6TrQYcqQSx8KX/zOrenbQLcLmFsU9b5USB09SL8BDw
	 RgvghHx5044LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952E210F3DD9
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 11:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177469709359.10406.12274261897361547536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c958c47a65f3c0bc2104ab5b2f01ebc4c214072a109f84cf724cea4376b2256
Date: Sat, 28 Mar 2026 11:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774697093
