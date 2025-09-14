Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 286A5469D
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757849994; cv=none; b=FD9HeCx4BhvefIFZd7wAI+aGhF5q1amJuv40+UrA0i+XV0lKmwFgC67F8Yp4kIPCzIqIB30mesIZv6EwrzpE91bIL7FXgeQPE4MfLvIZ3v+rNkw1x1QDqV9yEiZW0rQak8oLRHx0VQ3Xc77N2ifnnoBV4snKwCp/SuzKvfGiAEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757849994; c=relaxed/simple;
	bh=d6a/HfWbdcfY4hfw9FpDM7ZumBQaJvc/I8ywShRXrug=;
	h=To:Subject:From:Message-Id:Date; b=qxCBH48dfYR1kgBFzFrq486AHUo43zUWUR8PPNep2drPWxkYHCwTwXwmhV3rGBx8WV0vak1WJdS+P+tSlYzjn/577r4zp5KucQrPRdjlOU2eGLfnATlKRNvovQItijGDFzP4ITU2mBv7LFm9AWv3B+9nOtophqhGo8knN2vR8ig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cu+v2U/i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cu+v2U/i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB5DEC4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757849993;
	bh=d6a/HfWbdcfY4hfw9FpDM7ZumBQaJvc/I8ywShRXrug=;
	h=To:Subject:From:Date:From;
	b=cu+v2U/iTpzGKiFmytGcusJ7Jq+WtuXHp+7hXuAbOoTxJ+Yn0cs+0oTaVES9RJ/qg
	 yCe7hQxFom5T/HUdOWQZg9Vbfwq1fSJoqduVGB8X2fojaIYOblJg8s15TvUAQ96rp4
	 wai8yU7G+TJEZU/s56HGGLBuz4nvINU1fXSlIZxZy2sr6fIWIENuhTsf31W/MwyGGq
	 LDrNkENWTd+ZPtA0Nr/dOmSxJWB+EWfH0YvJoda+PXVv0LrlF25Axs1M/TeitWXome
	 tbQD0HtN5TZfBCqTMz2Zmh6FazpiriZxbd6iW6n8c23B+eAgYjENCoygxtGt+Obj3Y
	 TTWRStkcEtoDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96387CAC582
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175784999358.24884.10012022376061873728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec2cc6a5c925b1467c2725d3bd5753e633cae6897a1e5a26479b6c29ecda0057
Date: Sun, 14 Sep 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757849993
