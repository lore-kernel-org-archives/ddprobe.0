Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 360CF3C6BA
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727480154; cv=none; b=AUoTjyOmSTPyalOyJxJ8mIOodYr+NyZ4JLc45LH06MvoJj8LPFc+BGHf8I52HVxOX22b8E4RRSZV7AUXvG+b1jL0STtl4WPEYQWRtuzrkdZeh/6dXmjZ7H+ihdR6GMp5DwWPHrW17CkACl9rrpDUazDljjUPoRWp4cMbcfFcvIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727480154; c=relaxed/simple;
	bh=pWJ4H1TP5rROhrJGIwB0N0Mh4/OHk3Rzoh9LGbf1tNo=;
	h=To:Subject:From:Message-Id:Date; b=LYfvxdo6dfHR/HmNi1Vixy+IxGjrYyaTPNEqCx67poK+UIrEGNmKDV9UOA+yZSbLWDTPfdURSvVof8gNnt/d4OZ+vwYJ6A/+I1MF0YIY6tDYu24bLWjbMGD7FmyT7X9QFjipe0i6yPyvXbETA6FIrFuS9pa0CXo8cv8QkhsDHXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ku/acqf7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ku/acqf7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5170C4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727480153;
	bh=pWJ4H1TP5rROhrJGIwB0N0Mh4/OHk3Rzoh9LGbf1tNo=;
	h=To:Subject:From:Date:From;
	b=Ku/acqf7yq5rjCMnihqIMKWm+y3J8t15rrMuaDTDuyfg0n0eG/JWCEsFOroh4jjqz
	 Uuebnc7gPuVeujeaC+DREssMbgXbxwz/S2na/gfEm/AlavYmc9TWyMarjUf+dspQSO
	 ZQ5TieZzezhgiI6vUcoB2TBIW+wQV1M+JSeva1rUViikJnMIKuBDrZthw7Vh93smOO
	 5FEruze4a78sKgPKyolVBq/Y05cUjSobAKnXnJhHliMSuiNfwD89dIO0ZRnaFhW0Wz
	 hbjP2N1e5mtP5HETcJhADSi+Gvf5c9FbDSLpbWcnCQHnDK/2UCcamJI0BFsVsuor7O
	 2TGAAsG011XkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90972CF648B
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172748015358.9304.15098887533839631418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbc1386a0dcbdbd0494ef08b22e8ee33a69c87378d62cb6a46f442917b725fb4
Date: Fri, 27 Sep 2024 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727480153
