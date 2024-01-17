Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03F7122612
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 19:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705520897; cv=none; b=q8c1Tv49hlQS2vWOQtazrcExDK2/v9fhdE8FMtngoxIotO5MOlDl37NBY7T9ru0R6fHez/p5frmG2+AUTuFrfMntOdYE5WIa6hCpOM8dkMk4RALvIJDQWL2HIe9tkKrpXP19H8JLCQp7jQ/lMez7cPEKa8528FiFqBNuO/75pmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705520897; c=relaxed/simple;
	bh=DT982vgrZEiRIJfz6T/NPo7OjleQX6vX/rBZrDnhmW4=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=YMH5GAmcer48f93h8Sy0D+pl7NNuAnHPzKakkbMOkB3hajW0fLcvkD8V1bhoSuX0PvmYdKofnY5JJcholPI4ABeb7dT8Az8afDL5WQibIknbJAIkBt4fYjmrdtwLO7Y77pBbicIxbqAu3EwCmd620JuLE7zVuW7OhCNBxvNyieY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f7bhZHmg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f7bhZHmg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AF64C433C7
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 19:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705520896;
	bh=DT982vgrZEiRIJfz6T/NPo7OjleQX6vX/rBZrDnhmW4=;
	h=To:Subject:From:Date:From;
	b=f7bhZHmgjQfa+WhC3TINU6ilZ19k2/g29Gg9NO3WrhvTgOP+lQoR2dnB3qoH2lnDI
	 mKcjYcuBRBVf9gZxbJh2n/w0CfhPeueFydzEl2gDaPAFU9Ywycuu+cQW0bHen39O+R
	 CcVby2T81yjwDZbKaSzY8TUvWXoMEvkqOWLjQn7jfb1fPm4jbaMQzFJIx6IUI2jZmC
	 YoOPmm+RKJ4RAKaKwj1wUn58Q/mbzDZgt0hPV1c5JBK98k9bu9GPi2T92k/Rpcu/6V
	 t65uFZutc1SAWlKHYtOeicPtLuEfRVMp+EXiF/La6e+DaYoXDVGG/waMf1KiwTNPea
	 das7aGu0INLSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 619CBC47258
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 19:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170552089636.21934.11631665743383189489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e3649ee3380084c82fcd13d6c27ea2e6cf03fbc75f37e447c568111375ea40e
Date: Wed, 17 Jan 2024 19:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705520896
