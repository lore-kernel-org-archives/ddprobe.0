Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14C4134BA5C
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759962594; cv=none; b=nZZSp5GyJRXcZZwegCUz8BqrAda7b5P0L+LvwIndI8LX9w+03MSWT5xE18IsqGEoT3QvnBz0jMxW79gJwJaC8pvGUHXThxUTUpoASzv1wbNe00cnzL22+K4qJ5IaBssxn8QmcWYkE/Xb3oFUzMvtOuf2xz7K46cjLTOLzMaYhBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759962594; c=relaxed/simple;
	bh=t+MGzgewDlHX8nR0mBGFnXvj9+26Fl+/Z1xbJgHY+uI=;
	h=To:Subject:From:Message-Id:Date; b=ZkyY9S4PpVx79gftj7UJxtDshR8pWy2i8Rjxsmas997pdeTyVLFdvh4CYYmhHl1ZpnweGlfKSq+Lf5Ks3b42ltrvGASdafyyn12wDnecy+rM0/XK/lg+JX4z6RjtZIyfEqxxEeIgXovkp757RRXsUGb+WVSFvuk8FOL057axPOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G9lS3Tty; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G9lS3Tty"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D66C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759962593;
	bh=t+MGzgewDlHX8nR0mBGFnXvj9+26Fl+/Z1xbJgHY+uI=;
	h=To:Subject:From:Date:From;
	b=G9lS3TtyWzTAj5h3J0fpGObqjV1vO/RygWVMdleSWhGnhNPcyoQ/RwvsXuKl7/Vr5
	 bcebaEJI3obE+5Z7lOqQMVwC9mvnrSYA4S5HToi38VwEtUZ0Yh80ILEdhYOtTHBsBb
	 vwWvxtTPTiSqqgxxNXteov45paCUQ3rx/9SlnI7udHMdzcd50w5u6/b2C5mGY13VhI
	 4ibgWqsNt9wdY4lp8YPNTgWnLI2DWxWK+3unQhQHAd3Z5b64xTHZ26GOEYWZwwApDA
	 M2iymWvHneuZMUS1Yf2SGwhkTEo2qwo3cEpUWz8+2/Sj9xxy3oz/85wB0MaxUHvED4
	 cyvd00oulmD0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F825CCA470
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175996259357.1190.18030714714068592334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adc8952ac197dc103c3bdeca1f57e8d5ca109730c66d12bcbb9bc912edf01f1b
Date: Wed, 08 Oct 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759962593
