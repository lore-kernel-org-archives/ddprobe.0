Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41EF14071DF
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 07:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780817674; cv=none; b=guG+DgXTmSReHgJWyj38tPv105bVsaNYgadCkfCE0URXf9Owrwuy59IlxpeR6hU4wYbZj64LqM1LkQjymCMlw/RssKY7QVRETktmJRXTaD86NDdDRVRPH4blzI1ZdJyYFmu9oOrVXOtOPiGs5CpVqNqWCdRXn4bTDkWrjYqOSAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780817674; c=relaxed/simple;
	bh=0/ZUeEP3UA5u5YYjk1N/Ip30BotZsyQduT+Rak5JAOY=;
	h=To:Subject:From:Message-Id:Date; b=da7Oxc3WlwLj948rsTDEIi2tP4KFBO76AqjWn4T01esQudFZRJzENYt4DPVhyCMZ4rNDyiB1t022fWh44wX1jb/hUWPODbkihg05+wpKBVPbbrzp+8Ddt3zu1cLNZNz43sxC3XojvtoYffv9St1ivHTVBz/ovsnJvtA5+T74Gz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d/uPcfyu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d/uPcfyu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8C8EC2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 07:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780817673;
	bh=0/ZUeEP3UA5u5YYjk1N/Ip30BotZsyQduT+Rak5JAOY=;
	h=To:Subject:From:Date:From;
	b=d/uPcfyuO3Z8X6d4SAFwr1MIbeNwdLUb5v7wlBas64k8l7QxaQKBLQ5p/ZiN4B8EE
	 xXjmZODYYO4Rvt1zP7k6jV/a0vgg7Xic0oSNiNRLK+7YPvElkbN3W5iYAy4QsG+iKL
	 ppRIG9bYaC9OtzrLkUd4UDMovKTazK3SLwPMoL2gwWfCpgYmUUJiJSKHrum6Fxl5ue
	 Bcv5qfS2JWTPZ2cWUFuK6A+/cxhOxMnvrYQwckScMXSe9KGxzY2ROKnWvlkSIS1j9l
	 ytafjUyCkoYBOlyWfCH0jyX65E+V0zao9YUm5lmIyRIMs+YAMa7IAQ7wMNECd80LB6
	 TTTYxnFINff3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0994CD8C8C
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 07:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178081767369.2728.11873034969847381027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef0da24761c21161ae0c900b40d5c3ae7db4f67000734b4cc86dd9e6a1c92556
Date: Sun, 07 Jun 2026 07:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780817673
