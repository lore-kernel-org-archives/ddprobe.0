Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61DE0420494
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 09:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786006834; cv=none; b=oBSHnqiPhkbVLW7MsUI+iY/LGrolKbH8DG57++zl12p4FVuhGlaOnIvB2Vk2Iy2foZ+lkPGXjk6+iDILO5FomVapPV0/ROBgaXKkvtuspSIjG6Ee+G6eGgsTjNw3f91BU3g9yMvgA+rJWiseEocW75J8RVcdCysSd0PFZdzVXb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786006834; c=relaxed/simple;
	bh=ep0/+uv0P8lpzupCxESq6s5PkhfjNATlrMstjfWbqLc=;
	h=To:Subject:From:Message-Id:Date; b=S0afyceEINTZzkYZZ8Lxs0YNXyJGKRqtmmA51sazDm6EGJ/8X5lS24UkDZPrcXGm+6nEIFSg8bsSVgKu2saPnuP8tEyBdsoQ/PPSfsje5zjN9yygmwQb8s3uBaEMwnemB2tL1egi+djbzcQdrNSaI2hS54mG+PO8jveRUhYBgm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q2ZCMefg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q2ZCMefg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB509C2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786006833;
	bh=ep0/+uv0P8lpzupCxESq6s5PkhfjNATlrMstjfWbqLc=;
	h=To:Subject:From:Date:From;
	b=q2ZCMefg5n+XQErAaOOrHoJGksrIL8xjBm9/OcgCr7Ym6WFW0XwhUMULfTxo6devf
	 L7PBMiS98ePY2LaAlXIVCCIUS4zFAljJYPGD4N9hbI7O8sj1N6zsy9cC2TrTX7ah8t
	 pR/+aY5kmyrFmbpzdqr6SmKX5MOWt2tjdwmGItAtU26T3CkT5AMc/RzViPmMtpLkJA
	 g10r4XpDa1HfcoRf6sdLx33q0h8f3zdibnl2uc6iLpvYzdBajVu0UE4eO4CGijYG4z
	 1DmGH5TLWyPvm9RarC2qK/Yo6TLQNnWjrvoi5LhXumY8sxgwHoUxx4MtvgFQv+MDyY
	 wrHzcKUX0jFNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2CD5C561E6
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178600683372.29350.13137849855963085089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1beb7631f7d77567c0cc9d456441fbc782298bda444574431b27f9ba2954971
Date: Thu, 06 Aug 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786006833
