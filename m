Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DC4060DC2
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 17:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711130296; cv=none; b=GABvf2ba3ZMKRXJdpwt9sdFxbraPRfvQGU+DwDJLIwMysUb70ZLwamrTOL/D7s+5oCjPJ7Xm/VkJJzmsftHoocNISzgCwm68CygVpkLM1otLRUtvsOtpp0lciA23qMv6/hlcNrPZhBvLuBMczfX4gfc5Kj7IjSzenPLlfltLxyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711130296; c=relaxed/simple;
	bh=STgVWxguRNHiHxtJTefZFnnPEy785i03E2Qza2/AVsY=;
	h=To:Subject:From:Message-Id:Date; b=b5VQoK+YuvWjuxiJHMiS7p4M/LDW5HE8Fb44wMbDyn9EDiOIhXkGItk90zX4FC7tsmY6dVmWxqehOF/9G0NDSMpjVo1TASKXpVgRMyW1R+vkBtZj8+uFVRGA8ACdQWM4AT75P03VIvVf1/cSIxlyOENStlm8KiTKrBuj1UGhY7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ESHaDlTw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ESHaDlTw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71B52C433C7
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 17:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711130296;
	bh=STgVWxguRNHiHxtJTefZFnnPEy785i03E2Qza2/AVsY=;
	h=To:Subject:From:Date:From;
	b=ESHaDlTw+MtymWwxCdCjM0+0rfkA9LqhE0i2O4Rj1r+xt2T/Iz3kNKayATeKcC+DQ
	 K7m7Vo0qExUcMVoqXUQ/mq9vTP3YtvomhmFCogr/ijIsvnoaPG2TofnxFa7UIfm50a
	 V2yhUgJ99BP6F4/vqlN+YKjSgC8CmIpwUyNqrTljg9DYtgUpLJrY+WWzlZWHCCFhfM
	 mwUdl2dxoVgLR8tUN+UyWR5wCyXcWvwWdeKpbHsKh6zRioOPhNBscWLK3XaK1KKZF/
	 v5EVuomqICyXMpThlRYJAshZboVMV7lOaYEUqLo4W+JH4wAi2FVhtfTnElBH8oCFlg
	 l9/piYTs9HG+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6265BC47DD9
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 17:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171113029639.763.15655942918206809901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbf90e7c2739311332e4ef11072fd7b3ab119e150000e9c418aa6c1cd125388a
Date: Fri, 22 Mar 2024 17:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711130296
