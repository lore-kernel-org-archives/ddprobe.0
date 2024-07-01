Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59DF16E619
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 10:34:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719830063; cv=none; b=W543zeSN/fVhLnx0isLHShoxjhDwLrYsFOiH1RHaXohzN/frKUjB+f7/n4ZhMu/I+Pcgjja2K+tlpcq84IsvSKyT6dsL/FowY+fV9CcRBj0HoIPGBJmLEIoNHYAwMSdCm70r3ep6KK63MVSw7egrHpCa02KSBLlwRZbYCpdbCHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719830063; c=relaxed/simple;
	bh=2vbxCMKsVJADEOsPISYHU2fYvou0xInYVLZBbGUBBio=;
	h=To:Subject:From:Message-Id:Date; b=KsuieYA0Qzehvo+acr04dljCmaV7qX9HuqNyLXs2JNpRX0tOGNIvtS6fAD0dz1zELBoCxfA0RA3VRL4DX0WiknFcArYyDnAiFmhQRuvUbdhrOJu9WEHRpzJbX75wzdB+yg98SBbAN8I+XuNKsZU14LITCgurHVpjMxsCUUoUAW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pIzpfs6z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pIzpfs6z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5BC2C4AF0A
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 10:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719830062;
	bh=2vbxCMKsVJADEOsPISYHU2fYvou0xInYVLZBbGUBBio=;
	h=To:Subject:From:Date:From;
	b=pIzpfs6zpTUMcc9KlKnz0Z60wI6+2yLo82Ticm10gPLjK8QGO2+y+MqZaC3B7BLxa
	 wjfmezIuMEbvTOyKPjAN668wYJjKM9bgzaS1HlpdDfwbLw+rxx3slquQwdNregQzxk
	 ist8/OSQyt8CkJcVThRByBhOWxj4uxrHIHW4aw9sw7T/8nwKFo/KMyD+iZ92XKO6Fc
	 DGjLZlQw/NthHWwlPFZc4qimzyO247qYcH20zXH74Yr4Kkf2C6+zPIrrxs3qq6TTe0
	 OGL3Ro/jHxriv4t8csTIpunDGAp7FuEjJvDqHDB6gTO6h/ueKfCExemnmm2DITVov8
	 OFa6Br4qiRARA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFF84C2BD09
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 10:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171983006277.3778.9544843154049888034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ba90b075f10a872c5723f6c488c9f5d50b410814086217e09da259e3ab5fc32
Date: Mon, 01 Jul 2024 10:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719830062
