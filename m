Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C69C2D541C
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753363194; cv=none; b=QWzC5cOmv7EwpTheS1OdMFt2f6lPZfVvxFRS6Jq7Ia8Ki0z25eG1YPdOSVETglhlCKEVH/5/NqGyB2/jFXMT3mZSw4qhEnQdhPS45VxMyt63DPUrFt93DU2pJoU3osGvZVP+jCZTQ5ZWsZFeEYrCp/3h+TOSIdV4c/EMha1kl+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753363194; c=relaxed/simple;
	bh=+HGEgkVkTAxFaXAB5m+wTpYsyv53l6O2sy+oNhxD2Do=;
	h=To:Subject:From:Message-Id:Date; b=d00TTjILiSdPc098Wor4DkE5m+YR8BcSPurno2KzLesQXNdw9Mf8FXWIYo84jRs4cHxk3PjT+0yel8LfmmGr3W2A9iP/HTNpIEAGzgFAxLT0TOFRJ+S23p5NTMetizZi/M11UjscrhtSyMR/Xl8D711tZitcw7u8ZO/BTMcc9R8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QxrczWw2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QxrczWw2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DBACC4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753363193;
	bh=+HGEgkVkTAxFaXAB5m+wTpYsyv53l6O2sy+oNhxD2Do=;
	h=To:Subject:From:Date:From;
	b=QxrczWw2nGkF9yrpnjw2EmaSUttKjyhXxeolsMDA5yoo93RhqH1MBNUAQOJRxGcoY
	 ap+w3jDzgB8LrEciQWC7xhOJ4UJJw4elo9ahZWyq4oIvdRFxHc7QFPHNh+B9ILX9hD
	 mF6PKkXzFBOC4Qk1g6Q2OF8IWbjBrKw4EV1vqk1xNAN7gElc3h3O3sB9e4l4ayiXRN
	 BT2+/UQ0hQhr9uPlgbSP80YmmdEumqRpzEQr/V+Ib1A0KzS9xSvY+FYAJtJblqU4Ep
	 7kjklwblFYdat85w2cBpvo4Kdy16UkjtPD22OnEbSDXUSvM5S4xVP94/Zg2fRsA52G
	 l++Ud0jce9KUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC38C83F26
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175336319357.29161.3471160340578090280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c9278da1d3c7caca26618565989f3de5c26a5205100ea6e7709798ba69c6f68
Date: Thu, 24 Jul 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753363193
