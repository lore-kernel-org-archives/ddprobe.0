Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33D381D5CD1
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 01:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781661394; cv=none; b=P1Kk8xUxfgpgnAKUwFsxuRaoRGNkePKZBhKffdPQyjLLw94BEWpDYTMtpaigj1kPDKSzGuRrgY+WPOyksGNEqkpJTq8n7p8KpI/XUv7wRzBhkz6HYbji8VVzV4x+av9xUBfN5AvbyAZScD/ob43Q7bNHS7FMx6rXLU68gYW3nDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781661394; c=relaxed/simple;
	bh=tJZKgN0HQiThdjczdUTbMQv7/Xa27kK6X/JPyyx94HQ=;
	h=To:Subject:From:Message-Id:Date; b=feY4/tqx9Oq4COuB9kmSqTKZgsbbzKKaoycemIMtv2QPBQ2S8/Cbih5l0FLSRD7hOFMlyFetcv7Tpujoxu7ZSE+jbKsjvkT6UDp3rOaK6+B4KY0Hxdi9OInG0r86k1RmC32rf/7lQ+NYJMfSyARUnoMZU8N1IHGrJLzdoufGkdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WwWcdpDD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WwWcdpDD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C07BAC2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 01:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781661393;
	bh=tJZKgN0HQiThdjczdUTbMQv7/Xa27kK6X/JPyyx94HQ=;
	h=To:Subject:From:Date:From;
	b=WwWcdpDDH8Z02kQsqeqMb2WFC+liApj4WenTy9mwUT7qaZW+Xti/wSlJyrQAs6Js9
	 llqtGiTUxMVbbs8JjGqlhz3pW7HSKHg8WmkOpkAXhfA69/zDLBGgCnoMoHSFWmzi67
	 R+Nz5+e/egd8r5X4ijWJj5HqNHW3Ndyz+eHIplQaWWGFPoQwtc5RYyCrJcl0sbdmuM
	 wKJ1VNLycQCvFEhYo44XaaF2vpiNR9O7m6+BgIY88Pk+G4QLOQEaVF6MLvEOvykOIt
	 Vfecw+oMMHNB9PyuXCKa520eHiIUsSyDVBxIsyxy29K99lmo+p24ShpEiLWTwetNqO
	 MJmBSJreF9mZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7295CD98EC
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 01:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178166139373.506.13756985711436672970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b682c418bdc19e3ee2da0dd8e3f9992274b6815f17c188f88466b91d97408db
Date: Wed, 17 Jun 2026 01:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781661393
