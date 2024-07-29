Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27CCE1DA24
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722272754; cv=none; b=WbdVw9e9tQulp6TApRvFcB5l+pqtp03U1FyH7U8rvZDFUNzjMRfQnYy2RGgd7NRIKr+sh5jwwrujgHzGKh3Mqux8KTLt7cgqYALVC9KlUO8cFJVKa8Y/42M1e5X1bKM0lCLUW83ZHrUb23f1InkdeVddQmLbiwDz1/EMbU3Kt0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722272754; c=relaxed/simple;
	bh=2nTUa4OVsZrGL7BQGK1nAnhP+ejzjP3qTHf6GL3r84E=;
	h=To:Subject:From:Message-Id:Date; b=aNHNEiZCUXOoz6a27v4ImwqTsEDmsxHIG2zLMsdgAgunU7dPApPMOawvBsPNKmA8MujBsyECnwM/0W5QRQhspAVlJigrOgAKz5ltuZJX1vNfsdWW2+22UclL7Mua2DoBgsLKCiTGTQPRxByP7yS49ybBPpYqbNZpjclF51TX9bQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bMJgSdEq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bMJgSdEq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A55A1C32786
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722272753;
	bh=2nTUa4OVsZrGL7BQGK1nAnhP+ejzjP3qTHf6GL3r84E=;
	h=To:Subject:From:Date:From;
	b=bMJgSdEqJZg4I5aYNR7dVHG3PJO6o7GA444eAv1MWmWN6hWNz8VRGzcNglwToNbuo
	 Q5WwPYFBPVoiilEk3gbNup1kvEu87+jVZYS48859vzJkMwPwkSJwX+J/nmEFfG9/dq
	 sNCeQUtWgRnySICaVOfGapQgTRx4YtEhA6ccv1u3eGuy2ljFSf7etgd8+uclULPamV
	 zblA1zTVN0tC/hh14hOPu1ibu14OSI0tXcBkz8lDSlwBuewYahfexaM6AlwUvcAwFe
	 oOfXIyceAkJNamPavLBl4KJM5rFdqgG7g33F5YEfym/aZwLL2BOUzDVtC+/F3pQGVw
	 nERRaHKyRMg+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F42C3DA61
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172227275360.3851.10306667074191390183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebd155e93f8b7263f1c7464e7e6550d94259b7f6194d246de240e8b886fb6ffe
Date: Mon, 29 Jul 2024 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722272753
