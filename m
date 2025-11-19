Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1299E2EB843
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 21:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763587314; cv=none; b=tGbZovrkKumPWt/2AjKAFcCRNd0v3WmLC4NPb3Zbi+nlZmWkhel66kf+ahkovMKBr15VAPRN6LY3ML6uzrmQpDvRzcNi2lCoGy0ApTYAq0MtM8F0uUZJxGWILebkCtRU7FG0dfjv8wUsEAUzkH0f9GoI2YhSncEAQEyY5OEu9FI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763587314; c=relaxed/simple;
	bh=vlnE1ynb7iN/ZazJ9gviiH4ZFXy1aoye9O0z+66NI5w=;
	h=To:Subject:From:Message-Id:Date; b=HfVmsCtaQiB1s6XwNSpDtbRJcj5yLP3YM7XK0paoINCIBAyza2CoxvVLyO4i8S6k7J4DiKBpmQSyk26CgRmA8TF3izE+oTQtUeqMMUQtFCzpZ+rAdwTZDRC31JrSFIVIosuaDY8g+wJfHBBv9469hAl4B9JZvXeWk+TGt+XA4WM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gCuW1Ie6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gCuW1Ie6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0604C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 21:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763587313;
	bh=vlnE1ynb7iN/ZazJ9gviiH4ZFXy1aoye9O0z+66NI5w=;
	h=To:Subject:From:Date:From;
	b=gCuW1Ie6mghQMCnNdJKpu6wgbiIj4CcruSdPuy0Smt/WwmOc+sQ2Tg6/8jKIMW5+H
	 rq7YiDYlMX15UXz0QacArxdp+wPDYitiwe0rqG8a8PyoPAEWUdyBrJfmOFw1yuS5v4
	 gjYqF9gpDUoUh9AB56PPVyNRq53TCsGHZ7Hj6hwYkvEbDi5VuD2N8qKtx1pu+NWyBg
	 koHHSjgqXUYk9HYLmp77XMelMj6EoMoucrzFvxcrqnG+0Si0nad0X/1BZZukIkxyXC
	 Z+Xllr8s5A/27SAKWrcgCg4vdhIF4MdspnuK89KLGnPl3Wxe45cEotNxZXmtUQQH3b
	 hi+dvQ7zRu3uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EC7CF58FE
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 21:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176358731358.14005.1329780202568813201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b004235d6310b864378e9d3f72f888e3203ef413543862d657248b63869c9fcd
Date: Wed, 19 Nov 2025 21:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763587313
