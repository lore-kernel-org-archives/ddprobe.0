Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5451930E0F8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 15:00:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788879636; cv=none; b=kGXMGKR/KDkV9GK1NKgjm8HwZ7O38IBJcSfBRzzggw+wcYJWclRqImKonc+xwxCqZtUUKY1mhfz76A032Rw36bwTpNGouYwLYGrutOoa8++ANs9vYXhgUPKYexaEaBjM11T6Mv2HNY7LY+BQcTTvAfrKS63Gz5+/5VI9xlrR5TQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788879636; c=relaxed/simple;
	bh=3ArOt0KNQRB2S/ICIt/zKF41LpZbRc0JZjkqwZzd9SY=;
	h=To:Subject:From:Message-Id:Date; b=qEpuDQg9WnZ/jLlWaaVgDPvgW7QstuTAJH6XCYid+67Bh2tRgcwEuUqvRAHWJ2A6IirzoGiQKUZjQutuOKHoobkBJ5f7jRRK5gxLDXzYqsNaOgsCcTH2CSG8AYxqHiQpe5Id3CwIOHvok+L7WeMUE8wPTvvM3GuvhmkGI9a+Kvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rbZGm50a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rbZGm50a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E62DFC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788879633;
	bh=3ArOt0KNQRB2S/ICIt/zKF41LpZbRc0JZjkqwZzd9SY=;
	h=To:Subject:From:Date:From;
	b=rbZGm50antuBe4CKJv2QrWMveBU9j+Rym6aZcWiMQZJWxC2Kx6KzNDiNuUrUq/KjW
	 4s3JVPozrxOMClvxEsjDh/ppzwG/TprZcL2k0qJBG9CjfJGMwn/kofOI0OFVbR1vN6
	 2yzc3NYf4KxxijnW4+U73GgJXmnChA3385ad/igeVxHOa2l++2N2p9YVCAOjSxr0a0
	 X0xFQYTeAHb8DC2UAOBVrH7je7N3WgiLiUqtpIRON+HV3piQeAE9siTghr5GPMYefi
	 xCTgTQQ2WlCGUGUrvzlPEQHoK9sNBymMWQg4KkFpGRf57x8dMUdxorLhRazHoSNRYP
	 Nc+FSA9U6UQDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAA66C79F82
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178887963374.4927.16099938249869490921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 630659ea4b6008ddf0e3d26c205655c9e92fd09eed3965a92a53adda52ad5d51
Date: Tue, 08 Sep 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788879633
