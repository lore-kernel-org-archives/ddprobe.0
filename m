Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22F9823B62B
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 06:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770530634; cv=none; b=BD4nc0VkTjYtYQ095ROUi+qRaNys1zPz16GylwqLmSHl5FOHhIuvgDHGNCirDSFwCs5nOg0WH9d2YVJJnnqA/dTQViTwNKo1KVMn3dVR7kRmTqHsOqwg8gmc0WHosva0NH6dU0YNtK4xgATL8kOBIkL2aN/EeGi8KaU+llTU0AU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770530634; c=relaxed/simple;
	bh=leqLVFe9VOjZxJdafM1nmTJrcZs0sKz/nkokBmEzBxg=;
	h=To:Subject:From:Message-Id:Date; b=oACEbMeyNxICGDO3UAg7rP0RdVfMbaotNPZvGQzdudy+CYDenY/7v2njP5IpNkjn7hO7lKrjrCD9xY7Gp32yXK9YXbcPo7ifDnm32MO6cTgoG8lJy0h5CgROFsLLhGHZmbq5/PehFEL1aY6rT9Wcgi4JzqYewCrpUbLEElVgA14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T8IgsaAA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T8IgsaAA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD62AC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 06:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770530633;
	bh=leqLVFe9VOjZxJdafM1nmTJrcZs0sKz/nkokBmEzBxg=;
	h=To:Subject:From:Date:From;
	b=T8IgsaAAt7Ge0usMmrr7NyosePJ+2JB4nPqye1krKdNXfMgBWPwov2xMPtD5RLM6Q
	 xUBxXPersi3Z2tdGr9TpBfVtPCec983gbQRULcY3NolSLKa2akKPBz1l0MYOTgepms
	 x+kvo618YyEEOPtfx1BZ5uZZmbe84+xIkD0MrvMCYgeWvH7PMu1aa3pONLLm+Hhc3B
	 h8FGgsImg+9JFZ0G6V4BeQXMnAS5j7QoT3BFdSFzcj/KZdUEZFwIzEyKormPdEMTKn
	 Q2nNrc68JWFYDnHQ5Iix74Cv0CrUAE20vHbnCEtxJaMXg5/wE7sD3RJt/Qh0DQdwQX
	 i8h+OWMmav66A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9775EEF06E3
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 06:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177053063359.10633.16759689620422397323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78e0d347dcce00c6051504f17065526862a0d1d7012ccec959593fb810cbb6d1
Date: Sun, 08 Feb 2026 06:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770530633
