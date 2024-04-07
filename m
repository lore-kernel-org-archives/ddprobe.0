Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8F024C98
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 00:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712450296; cv=none; b=E5cGF7wsoCkSlXlURXvfHYYgBrNG11gBH9VqGd6bhEGdn3X5Oz4sLsZdFm4AifPezrig2QTTDeHBtaKKg5NHV1Ntdp+Gkc4UVpytVff0I2oGiOCs+HXoWgfhthH8ii7HV7Ho0y57Y46ysBAQnWXwIPMndGm/xnIP9K6+v6ie1Nw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712450296; c=relaxed/simple;
	bh=HUHLBrNjLK6TxF0DEm6K6i/CGmeUKpduSu9WmCknZy4=;
	h=To:Subject:From:Message-Id:Date; b=N2J1MGW+kaa1iwkNDphug0eFPoQyUXfQS+ddKlJkdyaqhYjN38cl1P58qh0EY10dPjCYVpyhLkOe5LQejLB3C431M5FQYCbOCb4WLtlgE5KMa1myrfOvPN8vBpj8uoRPsQBj3KdKwf40EflqqXHk0xWs5DAEiEsUYQGV5dK/7ro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mq10+vXp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mq10+vXp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73347C433C7
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 00:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712450296;
	bh=HUHLBrNjLK6TxF0DEm6K6i/CGmeUKpduSu9WmCknZy4=;
	h=To:Subject:From:Date:From;
	b=Mq10+vXpyYQxBgPXC+ebXNA9lryKnczPp2lCD9SV1qFaCUq6axY4HLgg9WA0hja+X
	 NGaI3l7BQ80dYVI7CcgiDlVfuP6Ty5+sukI9jTJXPCSMtaLjWIjUknG3a8kv29IVsR
	 C4dpY50dw0V07At4dF1jocKUPxNJrOy9hVEIcjXbwGaVs6LYGb2buMB/MDnLd+CnZJ
	 sw7mI1jbaCvzkICAqwP1kesyF5NfD8+C7TnFOQaYk2igNxvlQqrlXpwSXOGqrAjCSU
	 ykbnhA1lRRmjUJ8t+w4yiuKKN7q0WEmZj8PRTUfO1FO77iQEbKy0xRGJJByGLNg+qL
	 Lp5QHf6FCZheg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 621A8C67861
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 00:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171245029637.9045.16475706645775215848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b23a5eaa0650dd6d4953d2f4dfc651b00220de4f1f68782ddb4c86e3ddeaac36
Date: Sun, 07 Apr 2024 00:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712450296
