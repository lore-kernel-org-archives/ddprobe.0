Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33180846F
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758467994; cv=none; b=fG0WEJJ0V3gDXnmjz5mfIdEtEyopygJ35w/MRt4pkPuzcIMvo/pMKkw4I6S7XtaVw5DxDvJsa7o+IDV+iLKPqwuHOBbgf2RbKv2iz5lT4dC1YB+p8GsgmF1zTtP7eK2tsPcpwdx9Qp9JbivpxTyW2KLaYvemxmqtpXpIy9V6f8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758467994; c=relaxed/simple;
	bh=e0Yrs2buXbQ98YGpDpN5YAtxNlPwG0npv11CyQEsO1I=;
	h=To:Subject:From:Message-Id:Date; b=dX3o/p+5Zm3OReWXez0WFw1vPV/iwuAqou1MktLJHzyIOY/M/ZC/23yJgegu7gO16YCG8Cp9qukCgm9kvUleoivECiGxGNmmHO0TtFSfSgpFgoe/hJde93g1rxs2jntBvBsSeCG5vVW4LShV8+v6N5vv28e/MyogQw/aZkULy5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rLULntkP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rLULntkP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FB1C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758467993;
	bh=e0Yrs2buXbQ98YGpDpN5YAtxNlPwG0npv11CyQEsO1I=;
	h=To:Subject:From:Date:From;
	b=rLULntkPswwzc4hXnRVZd+NXQmEqFGOXikQojZ5EserBYbSVoPeQ53eas1zoTX7CL
	 4G+i1SGVeu4r8DV12QQwpnl9mzgdsCRbp+pVbAdC5BtDLKID4IgJnZ0yTEMeJijkAA
	 pA36qW9iXF1+Fg7hUC7oW91IyeuCWTl7BcbwzB95TG45HPf/jhFAZBEIZ5YGT7bxEy
	 j5PCz5a1m35iDqAhCv53asDKsAzLIsUXjou+7bhhmEgMmq+ZSpS1wQRM75ktP7VQrV
	 sT6tfwoyi25kQjZFUlyKFHqH6YDDNLjq4sqbVLOIQBsYtrFsXTfMdH4Bnn9UEne3vI
	 BD3O27JLlxE0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3D5CAC5AA
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175846799357.13288.12304538192491303864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24cfc18dae7b5381fcec70ce13c1b91a25c95d259bb36f660e3be965385d0dbd
Date: Sun, 21 Sep 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758467993
