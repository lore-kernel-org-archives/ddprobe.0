Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14DC318030
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724898954; cv=none; b=ATC0gG/QVEZ8eCWFVv4AjhstAmNIHDmYdfV72MLUdI7Cl7HR4i6X01qDxmC0ERSfEeQJWbRQvWQfdoEy5ehSjha3GbcEgYnn0SuHwihZHEdbh7340pOkddKRCqzWQNGyMQt6LJawuv7FM2/3zOSEeqpsR71C27D0hMmOQulnhFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724898954; c=relaxed/simple;
	bh=GRPRX/D6zGsPdYWjKBOg1M2wpICNF/cq+UaqcLZIlIg=;
	h=To:Subject:From:Message-Id:Date; b=TZI3YRpu+aQGwA+0SglA7Ufid46IRYasFdsAlBGDpxdsrfWeFnSy5TQNFD1ORy/3zbKK9dlYX/D+yfX/igiUszCm0ea3n2rn/a/etq3hk9e826fAT2u+flGeFG6yF0/hJ+ypGOeQrE/aZbD2T8lC7pLq71fsJns3DsuJusdbuFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DrWtsIWr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DrWtsIWr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A825EC4CEC0
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724898953;
	bh=GRPRX/D6zGsPdYWjKBOg1M2wpICNF/cq+UaqcLZIlIg=;
	h=To:Subject:From:Date:From;
	b=DrWtsIWrGBHRKs8tQ7bjhEtRm6qAflv7rLAWaB/BCgdu27R4vQQ6xdfdXVuSMYvaq
	 X7UkGB1E4myjbUiTh7afnI/x4izEwTD6yl5CphKUpZPAnY4NzpSUtEVmWWje4i82HM
	 frnSExl81Nfd4PQp85jvXehYHMnLtjwJiE8sIOt+Xw8EcjA6cr5wKFl4leKUl1kATI
	 +Yxl5zY8v2z1pJaplvKs+Zqp3iOtf4KQXaT903xJ2iz9zse0jWG1067Dr8b+c/gkk1
	 XRbCjpwMb5X0hWALUCfgvd+1CyoheF9erXPU7euqWGmyQnHCMcSIQFHQ31g31TTjYS
	 ayhh99DK9P5rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9603DC54FC6
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172489895359.15571.553806935340002772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25628deb6ac6990832d9de5f022f30bdd2a73dd22162593d5b7ae132b5d34960
Date: Thu, 29 Aug 2024 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724898953
