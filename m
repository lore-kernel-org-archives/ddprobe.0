Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B27D1EE01A
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 13:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736255754; cv=none; b=OCW8tuLmaY+gflRxowh1Iyi/KPON33QzwBOqNlGdIeNz3ViV4VN1xNTLcaZ5h+g9E9SYGjQurlIZ+Gfme/jQpA5ZG1Bhm+EoljmI+uQ/pc0MVF2blQ0ZExSYak9ecYLyVoTjs44v89/jOE62tNvvKwZBuqnW2ERbvBGxxX9gc7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736255754; c=relaxed/simple;
	bh=SwspwWRrHn28wjT9a+YExYLEj0ar10nsOjmLRF6sz44=;
	h=To:Subject:From:Message-Id:Date; b=ipMF9cr5Uq04AcNxMF/43SzOcilus6KH95xJRaYu61sDvvWzePjdjgzNXG/spvU06k7csUxdQqo8UTPGncfkmJeCdDhIfgABqXNdiKSZRwMaCEqzO8tYF33DkhKRxEEOgbuZw8matoSy9PxhEtqC4xjknnaeOQTYJtsDarbHymA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wzva8Gif; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wzva8Gif"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7DE7C4CEDF
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736255753;
	bh=SwspwWRrHn28wjT9a+YExYLEj0ar10nsOjmLRF6sz44=;
	h=To:Subject:From:Date:From;
	b=Wzva8GifLKe3OBe4bP+AoFjFZEJo+Su6OjdtNVoIq+Rpo/n+0QEjAuba2VWl2QPrV
	 MXo6occSLPuBiTO7mVg1OHYLW/Gd5jisOH6G12Dr4JI/+OQHt9Yz92RQusYGDI8Qvn
	 85hV5chH5rlehRqUKegTXE4JCg/8hB1lYck3ZcxJ9ViV1xEP6Z6yz03z3vUlU1t3+/
	 HkYh4TXxF0keNAteeKRb72pL+1jX4T4CAwbWWX541xdndz9mX8/ju7uK4HlqUOwMvI
	 JB8HEhWOOIgYfcvtn6n+6L+FP4Oc3f8EV4caU4SAQzi5kqhSypaAOvv3kdoHqER4tR
	 JeRcTWdUOg0EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D70E77199
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173625575361.3345.7863173481295801945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fa84c1817bdff93d601df97fd2ceb323ba3d43e9e988dc1f64cfb94108a8970
Date: Tue, 07 Jan 2025 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736255753
