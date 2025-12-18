Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AD2629C328
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 21:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766092434; cv=none; b=AMTHSlrTTM6TRSt6r1Bh2IbKljfBoqm7rf5bEsMqe+sLwl3SM9hJqNzhsG79CCuSRDW7aOjLhzSoV+f2Bi7mat/gWxiHt9lMmbeoKSVkZP/sV1EYjqq8SSk9HZwTXqDcJQOgKsyySrtPpCii4lMzoLvLNjnvUwCA9pdqqI3siMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766092434; c=relaxed/simple;
	bh=2V1uxIoxiEFNKFOHmNTsiGsyF60UlW0NqCpGIQou/eQ=;
	h=To:Subject:From:Message-Id:Date; b=ryn7IXqkraylbuUumNUumBLcd26H5+S5jS0cmcwSs4nJKLYFZBI9ZolhVNAPP/oOraFh18ME6QOc/+CRhWf5kVcJ5jvcOUQBaPCMg7W28ELm177KfQqItWyjx8yKykv6azP2QBpHDAXBhT6iEobYIQPrT6hPUnTfkGPpLi/cY0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BdrEm1py; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BdrEm1py"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9EBBC4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 21:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766092433;
	bh=2V1uxIoxiEFNKFOHmNTsiGsyF60UlW0NqCpGIQou/eQ=;
	h=To:Subject:From:Date:From;
	b=BdrEm1pyAxuD1f+RCOOMkJjqFukA0E3gzMzYoDkPtc6dBZPKA7M08SHGjREOulGzu
	 IbVfy7AgPCk5yAj1qtPVk6yfOMieQ0Y13W2LQDdvTnc9Ld9qH/j8mq6NU2MQkpSr8o
	 ELWx7WN9CZn2CM9fZWfj4Bq7i29ZlO8qbEMErZvP+vbyLVOhA3VBR8ylbSSxjp5fwC
	 QJIc2DlKyE2W7OLqrdX/srYDWQbbdvWkgS5w29ErhqRF1vkWnZJESPF3Bi5nPpeiZ1
	 eAY1Sb+2BMCmOmfh35nG3ocW8eJAHQLG/Kkdei25IGO4RAgM+Uje5nKnYCaG8PDzyv
	 DuhN1O53+wrrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DB9D711C3
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 21:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176609243358.14294.2060346212338366761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c86c1eaef7202c59ea509f2f1f383b1a856ec2139c720906197a4c427b1f511
Date: Thu, 18 Dec 2025 21:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766092433
