Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D8F71EB2F
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725972954; cv=none; b=JakgaXcWjbvOGXPnS/TKhEOq+cOKelKLLvuIrew9K6xv44bpinWCWSoiDaDphqJiPJGWxto3p4bvsYx4IwbBfUrp3X+TCchyFtsfPao8hl3Y2ABW6QdvKDLOw1udm883d6MaR/2IKbuK9G1yyzsyp5qjy/Ffn9u/wKjmiI6HTzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725972954; c=relaxed/simple;
	bh=nHNFimv9SdGwTh8/HONLHqBJzuKl86ziA/4H4Jouhtk=;
	h=To:Subject:From:Message-Id:Date; b=o5bIvl8s7aaXkYdZsB5lZynVBx8gP006MDNRE5eVMFDxCHllQjB39ksnssyj1igmd/RLFJzYbA2EZE46m7CH/ZHIzYTH2moUK0y8roTf8AVP2PUcV4c2Dz+FLmgJCexn0BmM/3iZhI0WfGmTstNkTqjdysPP3L9wFuCWub5VgWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pl7TcY0c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pl7TcY0c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0CC1C4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725972953;
	bh=nHNFimv9SdGwTh8/HONLHqBJzuKl86ziA/4H4Jouhtk=;
	h=To:Subject:From:Date:From;
	b=pl7TcY0cD1u+ezeIyffzUZBuVSZnLz7dQDwQofzTg4Gkx1j8MuemE1rBS19upX3w6
	 TWaRwCVR88XDK/+maBfs/I7EszaewREKUNG0aHE+KOmf1Bysc1J+wV6YDChBGFznne
	 glONv6B9l34BEd+1/r8jSDXI2tmhtj7wd1UGbGZI7zO8pgldpV2nalIirex3ruHGgS
	 l+w8AJdOayF4C74UwZrhJh7QhcpLMY/ySS1cWriluSOJGXCCjtIoxOghDvVkoISP0t
	 LFx7VGlVaxF/fWH7a+nPXByWxRJbTwusCtNVx8HjWvE1JNv47EQtU0z7DwE/kNVaef
	 O7n09dgm26pEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D9DECE564
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172597295359.27659.17007483965146771668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e272eeec3d8e6bb4501cb6e7ce0141d24a0036507a6fa04c593ce83dc88125a
Date: Tue, 10 Sep 2024 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725972953
