Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D89E913A414
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 19:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712776096; cv=none; b=NCbn0ZufwkRnHkNpr8mUlW/1uiak0h92XiKvT/TnsriJX7tJHMeppf7wovpiGX9c8FQ+Bqt5ui+brwc0hJN4i4eAHYLQnfyN5vjqNinaCGwpwSb/6kG2e1U8fHnlgQzqvn1aiAmdUCOTGnDH6H0b3836U/22WwVl+6TbGdsfobs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712776096; c=relaxed/simple;
	bh=l47FJscX6jg7Tx4usmvMp6AlQmAVP7XR4JBk679DR3E=;
	h=To:Subject:From:Message-Id:Date; b=DPE/dLO4VEP+D0JNmZla3anw1RsStiCd7TUpbiDDbmINLj7zaj860Uq5WTbdVV8O65FuYp8ujCEkGEoFC/PDCOcrTT3ny7E7YmFBZzzpeKj8qU/v8tvtezDsKcM5+KLqxmBYo2jYaTf3sncCx9J/uhEbjz+CciEGR2RLOI8Bzac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HM0RBTmz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HM0RBTmz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82B19C433C7
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 19:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712776096;
	bh=l47FJscX6jg7Tx4usmvMp6AlQmAVP7XR4JBk679DR3E=;
	h=To:Subject:From:Date:From;
	b=HM0RBTmzHHqQhrIgxaL1phwd/7wA4rUXIojvlDnpi8oVUAFdOk8FCECc3BQw15PhF
	 Q7lCuXbaYH4iH0nc+A7y/S06yJPY421ZceAMpI50+2RPtS6IYy6AoHX9S4wdYldRX2
	 jNo77aAqvBziKaw92Jee/e/o7OQfPzpseXriC6q1Xt0q3CtsMXLOqGpmZ56LvpHxm1
	 ZGaiKxkP3V7MVpHTeE43mwxYIV+TPoq992BW8F+gBQdHdwC1xLQbog+kEhwJYIxQAW
	 vG5dLIvD+vkqCI3T0C6SUQEZH7BHmJOQrRjUUdJYINFDt+9uBAKjJua1BIEy/K/pDX
	 zKOPfGY4wJP/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B208CD11C2
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 19:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171277609641.32089.18441337394347586880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c78a91b2ba9a20472fab6634b5aa4311aec676e48ec1c260c5103e7105959c41
Date: Wed, 10 Apr 2024 19:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712776096
