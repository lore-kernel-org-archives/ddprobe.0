Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 320A628F0
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723338954; cv=none; b=TGmzv9OFRQIBCx20ZNt2dgacdFCPOrRH0iIATfJXxu/Uva3ld/JDgRL5os3+ts2ShQGj9WAaVJJZvFZRWOJ2GVClRI5MbOo+u6vPWvFdgB1c7Z7CWudB7WvZxd/Yn9CLY7ErF+2P/YAsGazDTxgagxRQGrr6BTv3Cy4XiEKhnb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723338954; c=relaxed/simple;
	bh=M5RVW6CISsmf6rSA99mKbV3g1Vd6BAKSLJJXDQovYZo=;
	h=To:Subject:From:Message-Id:Date; b=JbRq8Op0Nu3R/Go/lOhCYOsNoWATLKP64Or3Adozpum6NdDkXOevz6H9T7XiPeW3b8+hmZxiYo6wlG7GQ5EDOojLdOL0FJwc8/aO4YNfBiAANkfrEIhv4IvmNHKudrG4f5bSmVcqICDj6RURuWPH/zcD57TfEZnTgCLanU/AWmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mAIjVhu2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mAIjVhu2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE380C32781
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723338953;
	bh=M5RVW6CISsmf6rSA99mKbV3g1Vd6BAKSLJJXDQovYZo=;
	h=To:Subject:From:Date:From;
	b=mAIjVhu2iwv6KEbrfqeaBEMXMkTki9BkQ6lzLG7WNlIrXCCHtnnglD6pwihOkUP7t
	 oSeIuzB8n2ljeuQednFmVmqRL4T3TGM8cGjyfk68khOApbrUamUF9p2qG2poWcG8bJ
	 x8mPTlmSYE50lGtY5dze6zBJsaTPH9MO8tPomhM1HVFrMVkY4z4F3F8hBxDrarHCC6
	 Ydh1HvObtnuyJ1BYfy1zqqe/Ouq4glgKuKbKxBvfSi7X4PHtcRdM2XK4plBdt+EZUv
	 t8mGEfhFnG5seUkoTn8JRYqgUzZd+5HuQfmU/pMo+uTWLcVEPv4aImXNugXrbO+rej
	 0Zu8+JoxBzupQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A78C3DA4A
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172333895358.5017.6819306581121237401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 524c3b8017ef31b4471308dd336ee6af5799c16e3aa13f01ed42cedcd4485eb9
Date: Sun, 11 Aug 2024 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723338953
