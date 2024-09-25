Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C7AD1459FA
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727277954; cv=none; b=nqEYO0cwSRRKv4y1f4ORDhrZ02TFvIxs4ZuDANUrC77EldUNFdW8/2dsO1eXl10MmUIYnSVizRHI4INkTRTYOWg5gVMJjASSJmE2jzRQ/39k8upa3ehOFfsEfBoNMdurLHffi/XvDGrO4mSKRYZzJ7MALP4McZlkuqMJDZHrNWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727277954; c=relaxed/simple;
	bh=9j/O7HTD3dK5VGXwu9WxyD2MNOXKO4opkZg6JBZd5WA=;
	h=To:Subject:From:Message-Id:Date; b=kdWasvkNVdFFHJaRln3ElAffvFmpj8fnZxYuAUl5B5r0X8w+UVb095gRgopR3auL2/795IQnBsNsOyIjbG7Az6DUWgawLh0bsOwP7vvzQDsIhVCf7Kz3sR1YAsAEfG/7+qzI+ZtgmenomHRiMpOrZncIazPTysj76qdQMp9BeJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZllRMenI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZllRMenI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F40C4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727277953;
	bh=9j/O7HTD3dK5VGXwu9WxyD2MNOXKO4opkZg6JBZd5WA=;
	h=To:Subject:From:Date:From;
	b=ZllRMenIBhGULmz9PoFwCll/9jM5Q71RBMlh3V6UDIIjX3GboXxxrd+7463UlEWKk
	 3ifoPubFHRvNHAWMipYsubX7XyDn4vs5mOeIGqHudw62EwAJxs7YN33EA4CeV0LyS1
	 nuqA3gga9JFT3JSfouGx5Q2pxtHo3qnGcutKjeig99nd4DgRb/WoTaFOR1wYqmef4z
	 qevlG1EE3994pGd1grpp3mKTYjw1n4g6fMxWHFqo/BA+lgcAQ5lqAdk98DUvC59LDo
	 FgxvBSAPL915P95041GkHOTacC9elWD2bcFi+h2/X+5p5d1SiVohPkMPhftny3KCOv
	 igokc0C7xy+GA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91715CCF9E5
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172727795358.14701.6575344407517448669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9af51d4a857b66187c949e86c826653ce680517be3a1037f1773c68ed15fdcaf
Date: Wed, 25 Sep 2024 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727277953
