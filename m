Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62793331207
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 02:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791771034; cv=none; b=ELIqzhSWh0G9Iy7OeRImseFjJEChEvnoNKaPMIC3q6ldeppUA840wLqaM2LJppWnrBdoJPK97aoW5DpeaPuWaWjnj3mZAp8TwYlIzY5wrUBRsBgYdX3MaseeJjjYP/RCZ1SYx7d+uFOp+GHis6LvJYwOdSaLrlqVHTn4peCdHXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791771034; c=relaxed/simple;
	bh=qeYMkaeuVVFwYWR5tnm4wajaJJoiz1rqQ/69XYPQ/Gs=;
	h=To:Subject:From:Message-Id:Date; b=DzncksicifV4IbF9VakOnEskBF1UauAjcFeZrYglmqwzZWGMyW/X5ezMFiVZzMSByxvbpoHo7BryQuLA6N5WKmDgr7uyrOV1wgx2/xsNEg7t8Zpa7sAwzN0ZTum8t+XrE6xzAJJxwENV1zbEf8b668jKBW5PcdJTckuXgcGTqfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WBo2EVgZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WBo2EVgZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4623C2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791771033;
	bh=qeYMkaeuVVFwYWR5tnm4wajaJJoiz1rqQ/69XYPQ/Gs=;
	h=To:Subject:From:Date:From;
	b=WBo2EVgZJl6/XZHcMFe99Htwk6y8jRvM8B2AxWwEoCdVWBcqo9yjToeJbv/Aeyh5S
	 ltEi+IfoINti+6nC40AA0/qpVV9mtSeoZ1w15o72YO+X2bmmWAi+rHkqZiBCUVVR9d
	 FuVz2Vo1Mcxo9J43tnFFnesS8+K5gTwEma8VUk8nbV1m/bTqtQRCRBdEwuouOLZPIO
	 pBxZiIWE/obkIIuVOOV58BtfjcDKxmoq29DAPjuTHEJJ4xDc1Oyosnes+e2dKYLPwW
	 HjvtYltSKy9Aoaf+BLT4NbaeD8LRYCKdjyW3jqHjGe2BxXYjq8/P4pu69QZDlbmuyp
	 SQOgs0zN4e3/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD44BCA9ECF
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179177103368.26945.12995089692646083344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ab863c2d46d43f75cce689fdf8549171a3fad3dd9c1a402ad6719c6b2edc838
Date: Mon, 12 Oct 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791771033
