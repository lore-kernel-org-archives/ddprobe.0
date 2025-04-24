Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7ADC2701AA
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745498993; cv=none; b=HX8g0i6Y92WsFVPWiLzxPxcTk1TE1wNY6k0Qzwk9+xN2gfrKS1TweDYk4P0717Vd/FJEhK5cg1vTTjz76jvPfB0l5UvrKj+auI30Z1/ENhB6ijwuZmaq//YJ7QUr90EyUXqt/CzUoOhKmGdcjsIkfZzWICKAYkF3Ubj9nZxc438=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745498993; c=relaxed/simple;
	bh=1inx810J3kw9AN0pfrooa+64IZrDPD0+E/gZ0w6fd2k=;
	h=To:Subject:From:Message-Id:Date; b=LXuEm6vFnep2kfEaHhaDhOC4AZUgecGKU9Rwos2KLl8UIVIRyLJl5ZjM6R3LWwy87CMDe+2IYZmWuqpJTZ3EW4FbBxSlbwGD+xOGhlgQTE1QOzVHw40yaYCYvWR5NYJHANkvMDUm4uolKnsOI2nGNhnEoj7ZDcsny92nCRMYTSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lAT9raLL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lAT9raLL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FAA1C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745498993;
	bh=1inx810J3kw9AN0pfrooa+64IZrDPD0+E/gZ0w6fd2k=;
	h=To:Subject:From:Date:From;
	b=lAT9raLLk0mmNV4yton/kZKvPrvq/cLnLmiYpZZx81TKn8nj1tcGlWu6scha9IpPn
	 9OF7kmopxOS826Ddh76c62qDhfLywZ1SebhnqYuPMuVTCBODa1gdNlAobjdf+61eYD
	 uBDEciZ7FQ8j4EndMEQkKWH4cwBe5PVhjwU4JCm3omwVcFuS9xsioS+pmWJeqhKuvS
	 FlXiTgsOL3/RqFJsIrHhxqoKI7puF8sI7qDMZTUyngxRIKnhnk/OjNV2jqBpUR2XGr
	 sTE+uPy8CKwHGaA8Yu5rFxKexkaxLJLGBbU25Sv42QoVgN21poeQTiIkr7ATT1T9yx
	 qQOaXh7FCbXow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9101AC369C2
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174549899358.6793.10427929334108717096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbf922f3167b18b5e8e790c37b1bc584c7ee331bb556edc14bf9b201dd554e1b
Date: Thu, 24 Apr 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745498993
