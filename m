Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 253272F50
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753016394; cv=none; b=AZXlN+Dgu5BSMUaxB5aUE5hxFVw5/F2zlYCMOCKhLXTUw+Wn9C2auIXMewNMGPr6zVZ8v3RgG8gxvkC+/vEy42lM2eLFCBQP4bbq3li4Z3ANmuT+gTeFUFjgRPoG8f6+8rD95flWGrYv4fhe8sXsRRL58PFGfk0uzoefuUrK80w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753016394; c=relaxed/simple;
	bh=oMmNPquqiWJ4Avloeg7LS2q32qQaAtZ8t8Ldhn0FBsM=;
	h=To:Subject:From:Message-Id:Date; b=VNg4zXE31YTFC2xmA0iAu3HCVogKOZHadJ0uPJwiEzMqqDWnTFt/ZnsHWhUmzVhgCcKC+00YpnEt6be6WSljUmiSPLxEAodcQ4+IkArYDWCox+a9o/fzPy4MRAqqsbOUeqeU/1k/5aLKSTrcbTbCaC1GsvNVHfDTo4ha0FUOFGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QwAL9oi/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QwAL9oi/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3349C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753016393;
	bh=oMmNPquqiWJ4Avloeg7LS2q32qQaAtZ8t8Ldhn0FBsM=;
	h=To:Subject:From:Date:From;
	b=QwAL9oi/39lWsWDiPLEkvunwnlkh7RL9PmUwwYoBPVyDiWfBaJpdfE/8CpWS6iB4O
	 zXmsVDAsfNNlfM3XAi04ghnFkmvwemRAfeni1Ynka2CsagNcTyzMh/u+7LPw9gnFl9
	 WRo6h6m21gSgYlgLCD5t+A0/Camc6Fqw4uXntUMJ/mu9YTLs9j+a6j4pufxerJ2MvK
	 5AWgMivAJTVLAmOGGmkt32VamPHVbp5OJzFe58+Y3ro3Wj71b21uBQmSVGtEqY2j7n
	 9jEYN44zWLONZbd3sbBX1ewW/OCWXr4zeE2ybUSrljIMiPoWVJm6di+kajHmYIT7+F
	 V1WLkxUO8GCgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE30C83F22
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175301639358.28622.2104643307617266479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25e2c5dc4a77488a382527b953dcb59dd78c2d343aac2669ac2672fb947db1b3
Date: Sun, 20 Jul 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753016393
