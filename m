Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2279045948
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728466554; cv=none; b=YuLeW/A0I7AmwUczG9gGbY9qwH3Of6g2tIkBwECriJbDhlQlnLVC3A6JqUf+DCE+y9u0k8c5EYI+wMWlkN16vciSpQaIIPCNXMdkRjxFrvI6X7cShZaRB+HBiIhU8wJ/qZPS4rVL5IfrEv4pxvqx7gMdrEkWegnOjFr8nnTgxyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728466554; c=relaxed/simple;
	bh=ENujgDSbtleyO87ObJM/PwA4mCbZ+OIEH40Zv6HDMoE=;
	h=To:Subject:From:Message-Id:Date; b=AnP5c1ZezvUGOimIGTF2QOaFlpSAXDnNTevAt3fwIOBSZ3e8a7AKQo0ha3vNPtK2BN3R5zRxYU1cA44pDUbTtYj++9tO4rwW4CfuouE7EmlI1wOSasLotbFcESR2zYiGddNWNqo0gQn3gipHELA61dHCLD9gqIDCthXV3pfEYYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PU5jfcMc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PU5jfcMc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA2F9C4CEC5
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728466553;
	bh=ENujgDSbtleyO87ObJM/PwA4mCbZ+OIEH40Zv6HDMoE=;
	h=To:Subject:From:Date:From;
	b=PU5jfcMcGOJJrdHtrHm8SCzFW7wPpbDsx+WIkNMgDWcK7JsOAeUz4ZjkNiT5ZnplZ
	 qGpoqz61SfPCpafCQc2/BdCqxGuzGHv80IUBISA3BQl0m8N5xfgrxaIJtIDqKoCsCO
	 4GhrM7YqRSbKsaMNZ0L2hKGHYZek6VGLbwunRMqhw96B4HCxAks115STzVXIEc2x26
	 RlAz3A13+vdrSN//1mGoY2yTS2BMkzY5PvxtlHdKF/HBe68evFcAPuKuFuiekiPKdH
	 mTdpQXnDvWVopooG1IK/jPek6aQRYyBqaQvyZ+aOR4l2h60NuGNCGHkApj3mOAEJs0
	 OJTjQwzaZdUww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93966CED25D
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172846655358.18735.1435310014505792813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4c6d78810036710a4123105471669680c32d8ef8b8bf8a4165eb24b5c45c79e
Date: Wed, 09 Oct 2024 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728466553
