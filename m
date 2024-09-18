Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BCA0136A
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 04:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726632954; cv=none; b=Ba+jA/7681dGsBIsbYxpXFabzIfo0ac+hr2uhrXKam8/3vAwKYebX8O1+yhKLjTacfewFG+fJusdxvVcJs96BNNAufkrvCbRsMfAePbT66IpiahddIbLUyYYGEpz36Og7dwRg4zP7ycOB/yphU5EjifHKF+BnZcfrc74bYxR+Sc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726632954; c=relaxed/simple;
	bh=L32bG6MXLrgQB7KNZH9jihDXFwwsB1fcYlhlv1miAfc=;
	h=To:Subject:From:Message-Id:Date; b=I/ANZqSglvTIgtveMAzPNi3WA4CSLNigWlGkw5CVhBOxI8p8j+3a4UQm/4Xq9DZ8L5GmiJVAQzVTCcvbEZhaXRRHqp+jGvyeroHbRpZFp49IrGYRJsN8JkL331H8IqGm7XQhA0UKbKWZPqOKS29e0Y6opXT8/+rLzQk0Tcv/y8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qnbee055; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qnbee055"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B83E1C4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 04:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726632953;
	bh=L32bG6MXLrgQB7KNZH9jihDXFwwsB1fcYlhlv1miAfc=;
	h=To:Subject:From:Date:From;
	b=Qnbee055LQT7oJwWBW2uR1n2zXZpGIAq/bbf5DtmcMSNX3/K5/APxsZl6fqeXIKPT
	 RoIcgVfmJpmRCGMZqtbTUWzcaVSwJwGOX0z495ecIoEnTBqbZRfUv+g6fa5WueBvjV
	 WJiVHNCI9AO4m8Z6X/WE3mGCkB7Kc1l0iY4NJB8oMlVoWFVB4vH+a7fjFtbmlhsfTu
	 FeZa1Xrt6YrTDipTPaxHsMOEClkkWtpIGC8sIpHHo+7+PC/Zi1eiyenJCQrUsceIcn
	 L7dhASNOSG7Pa+NGmcaxkAGgoyYqORhZJjHJHwPOhygeRgysAeIB8WlD18VPA7wNv2
	 A+/VjRFuzWXdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0AD8CAC5B7
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 04:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172663295361.4763.5334089174995132534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 889357b4c0ebe0d4ef554c686134e56595e256c5f69a071346508cc7786fa442
Date: Wed, 18 Sep 2024 04:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726632953
