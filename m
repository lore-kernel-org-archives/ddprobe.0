Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 647B91DED49
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 01:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785633634; cv=none; b=rOHP7IGQFOIu5s6NAKjaNSb/BZ4O0Kg2sSFDO9qrZrNum4UEbqIayhewiEWTlmX0n8a5/DRAt2mZgXFxpWnS0KaehK+qI2i2IT9eS1FpkqVAp9lASz/XhjEGzrMcrlSsnByFVHSlSMAtxQoXCeHc2X4LK4CynVh/Hu1YAVJGMcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785633634; c=relaxed/simple;
	bh=vbcKyhKJ/dPjaNPAYBsgPeHpiy3ZkZyLztcW7uRaCP4=;
	h=To:Subject:From:Message-Id:Date; b=KxOHaKxSa2c4q5QGKEmqXCmestpAn+KRYc3/yEhblWJMX1Zve20wu0P8n8SCq9bMX1lV4gInqbIkEDSZ+T9lGuwM8+d7/7k0mfbIut6DOyLIVE6ATNdjcGg3pcAUdZHgnFncifqoQZ7RiWT7gVqMW6wqV5bBFGydjdAHUCyZH7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GkUp8ig0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GkUp8ig0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6D97C2BCB3
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785633633;
	bh=vbcKyhKJ/dPjaNPAYBsgPeHpiy3ZkZyLztcW7uRaCP4=;
	h=To:Subject:From:Date:From;
	b=GkUp8ig08A7+3thlHXXtBz7C2Zg63fIg17uz5pYWtvviB9JayceCrirCxgONCn0gN
	 g+APYuD7ycOdKeDsrN8xzvh5teVuhKxN41zburPJsXcwWMEJbs8tGysPNZi7Yv9/fi
	 o3772xLpBFDKylkwrA0Spf7j3u9d012ERCv4AQbNGhO169fc8I2ya+ezUolJNdtdfP
	 4vfnkN/I5luEnR5JICLu+y/faOI3WH9J6gMXBK5IgkxFn20BaEtywCRlAFcDp+W4ch
	 HAjalpmMc1HE9kR84HdroPtk92YT/mUOvg+HvyQuuvYhoWCgX7VCx/KKOKwfNKj0tc
	 m2Ik9L7JcsuFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEE2CC5516F
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178563363368.18887.14252279650950095589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fce3d4f13244f759576c3528f8a329c49d4c63977fc8585d2abb5ea79e44d3a
Date: Sun, 02 Aug 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785633633
