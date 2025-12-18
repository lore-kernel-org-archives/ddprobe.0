Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 125EA28A3FA
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 17:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766080434; cv=none; b=K2bLembiiq8MnT2ZII89WizVpUj9X1LpgbrlOoWm3NlNE+q6Uf5aeYawrCwDjsK1fETFWn4tZV+ChUlMA5uL/ZEK0gT83KwtV/+Cb3ZaWkhhVchws+YH1D9oxmcexxyxR2SEFEOwu96yWngTJcMXgQ6h/UsM1DB3jMKPl3QyMLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766080434; c=relaxed/simple;
	bh=k2qEz3z3M6hNA3l4tvO/1qDQn99/9fIfKqg/U7XXP00=;
	h=To:Subject:From:Message-Id:Date; b=bH8BuDxPiFYGYbi0wgvBbm0/Hg4zHhfsiS7gENBisOqt5fpo+F0+bGnHCfRnYdkmseKkOur6w2/SQDnEH5jRS0mHkjiDQ+CeGtWeWp570EATDUz0JAZOsOClrs6mijUmSCM26Xyoqsv7p8IUI/TvjCyPZUb4/8Wt8SQuaxuEG1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=StdU6gSL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="StdU6gSL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2936C113D0
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 17:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766080433;
	bh=k2qEz3z3M6hNA3l4tvO/1qDQn99/9fIfKqg/U7XXP00=;
	h=To:Subject:From:Date:From;
	b=StdU6gSLzm53Kp0L5/SfZcdxZjn6BT8XfTZCLATpJzVRmkUCR48/8Z0dpyRpUSMqZ
	 n8s4rJFBY5/+q0KLD8VzmSZpyMxhdzzEGorDP8dNznRuMSw8TW9i41k94CoP3vXKjE
	 i16evNyVKld5t1mEI28/6FgzQr6Xv8VGkBJgxQ8INDdERKfOQAW4M+to1KylJTkOeY
	 hxMT1drr11Ui/cubP0eYGuBOkjKLWW18uNX/+S+0C4Wi+wX9875z4A0HnTuWlT9wig
	 Dc+IgUvGTFOAk7zGcd4WIZFEapnc2RV8LNxXtr0oDQQ3PLMO0h7uFaYHl1EQRJMBq6
	 ylKjhtQjS33lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9490BD6E2CA
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 17:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176608043359.31453.7865297485134942669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b5866ab328d912ad86a40f47baebcdbf3f8d648edee8ca1db46f59028eb3cbe
Date: Thu, 18 Dec 2025 17:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766080433
