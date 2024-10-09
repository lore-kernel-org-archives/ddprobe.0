Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D78B19C54B
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728477954; cv=none; b=IgLIJekivMYN2h7ml4xcoPJMcC2TBZzPOQPCFwRBNg1VWnYr641ZKeyg36q7/2tgho2l7J6aofD88a4Qjl8xDFoC1cbQSZtr0FfrbnLIje4eQCmsGxy2Bh8In1POtS5qPq6q29g7pHcYA0C9pTPXafHyMrht9/0JO0NlXIzfXh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728477954; c=relaxed/simple;
	bh=6lkOcyT+gYyo/TbMjMoC3L6O6JeAvekeZpiK2ADQXzo=;
	h=To:Subject:From:Message-Id:Date; b=fMlaaVtEY8vKuivSJNSoAqgO8YjEV4rt5Oi6oyCQR+QyRy+0yr/OOKd9NUVpBP5YroFsqEToDVzzY2QNYNPR/jT5gWRu4KHjkGtGoUqiFyGMxprSenjW8U0AOLcAmcYQjn0PS/0c3Z6H8Nx1TaWAJOxZKRYA5pB1CKgi/ryyYgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rRF6j92M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rRF6j92M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC612C4CEC5
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728477953;
	bh=6lkOcyT+gYyo/TbMjMoC3L6O6JeAvekeZpiK2ADQXzo=;
	h=To:Subject:From:Date:From;
	b=rRF6j92MBSoqwUOQsu7DmpuuYHRYWJN9bkhpboamFVIH4ETkw+zV5ZBgdr/Ejdgyr
	 ZXPaovEGaodGa7N6DrdgtSXy5KDj8LF2mevVidVLsex53vaVkVFDeyxUxopS9fFwOe
	 nOgKlcQJRR/BGOVDH/PvveM3HL1C/JlXnbgt1jvUZaYVk34X39bTQ3lRjpuEFSTvgj
	 wJ/AmqTw5GhuNIshRRtT82ZEwYim4MwJHxrf2OAm8wVlXXDVj96Hqw3PAWX/VRjPDl
	 bsWhAdmTizWmA0NNUeetlZV4/bdi3dB2pntcO8Plocp154e2ucuAy8ojVGhXM3vw+n
	 ZXaVsS5hu+e4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A669CEDD89
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172847795362.17954.9323392266670767169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e76663831677c5db07279e088625d89af28a5d8387f8e23f1e1807fd35df91f6
Date: Wed, 09 Oct 2024 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728477953
