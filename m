Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 107B02A1BA
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757687994; cv=none; b=Vgr1fnKSnYUvSNlhasJ4uXh+ZZ9ajvXHTEx6Pz18qcEmZ+pNmytoFk4Yp6neK/5jHEiWiuq44LQ5w90hpEJ+mMfG/I2hDuj4OOqIC2V3fxoptc8e5EvQmffOYeJKbTMPYDt2eYRmyXyMkpHBVbceX1ImkarNNiK/8Bj++ZfEcuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757687994; c=relaxed/simple;
	bh=d1MX/InyZXgyrP2KSZlvdMEmQszDhWmKxBgE640K+EI=;
	h=To:Subject:From:Message-Id:Date; b=ggZkST4viywyxrzRnuQ65JmbNOnUQL6tWHqGyWDny03TZblBB3Tk0YTU1zOwf6nEQNZ0ABcF3H2ceHnDXSWQxFJeEpSrKC2UfS5zpjln5guUpHLsYfYb6NauCXCz1W6Kq4Xo3xw/F5ykl329RG/H9jb8x3NsiJ4uxKPLsNFO/ZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ll4MqPLH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ll4MqPLH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B9CC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757687993;
	bh=d1MX/InyZXgyrP2KSZlvdMEmQszDhWmKxBgE640K+EI=;
	h=To:Subject:From:Date:From;
	b=Ll4MqPLHij6ZGIheJR9wDfcRFrGm+jNOksR9nHVXbXbiMF/M0dt7lfYt8ttnMIQAV
	 RhkHfI4ZS4C2qR2LtZN9Aglp5oXauEg8bPxzBXQX3VueGEZ/hRCz7qKWPNo69V2OnJ
	 qWO1OPwtKLuUeR9iOGcfmLRycTC+l+o07MlNBY2u6n7fnrbn4GBD/Pz4Ia7hvHR4y9
	 HcNuMbSQMQeaOCW30twgpRqAJqovAas5B3U639HdjHTtVNZL15RGKvKUVbRQPq/kSS
	 X5INCBj4qy2PLo803cmAqYbUWN5tVV0WpS+HK9jc0X4sVmqtQKYSVa14yZVi1pgDyf
	 FRTefkGBaJ3tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4CBCAC582
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175768799357.27731.17405639946104538318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99c2c95e37530dd1b105923f5130e0379881d374f33b615ce4113391af4be7a1
Date: Fri, 12 Sep 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757687993
