Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F70F352003
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 23:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785539434; cv=none; b=stDnUSBGo10IjczWvbAnd86vLbb1Gj13Z8IlttHj8MKE8PV1EZ2lWiy5GEPRGB/9idH0BM7RR4Rk4PI+Yfq/icrJ+cVJrLNkIETEADK02WniduQQNEtD8cUF5BXdf/C2JYQabnJtKf/y9mHriTKrW+djV/0wir/VIkUJ1SRbfAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785539434; c=relaxed/simple;
	bh=lWTXcIXVhHkSO9l7dWpCYB+R0V1jqskOjFP6jRpUxG8=;
	h=To:Subject:From:Message-Id:Date; b=L7slUW2RaSQiwg354YHMQSjG2Dd/jjDocVSNK48updc9QQrthnGgcSfwoMZi1H3uFa5WnWxTEqnvU3oC4a5ft8HwHG05HN8OI/1LmKrqiI1n6iKTFlIMT/B1V+unrtqzTgH9+spKXpioG8mQXiUb9MaSfO8c2WaHqsDHRn2f/J8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=atGf+qiQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="atGf+qiQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDE28C2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785539433;
	bh=lWTXcIXVhHkSO9l7dWpCYB+R0V1jqskOjFP6jRpUxG8=;
	h=To:Subject:From:Date:From;
	b=atGf+qiQ5joM4OsIVWyA2XQodIn3K2tkJuAwRkh4yWVLTCBZoxCLIKRQfb9G/N3+1
	 cqtNN3cYJl9Xgc6bbrjcIpxL1UuryGxuOgEYwetpWNBDTB10UFoRIzByfCvumGse1D
	 S2Kc+ZQbCqO0QL25EHLaKa4DpHy1fZm0GB2nZ0oiH1yl5J/c2TJKD9Q9vmLZl1YO92
	 OaJ5opSKdf7ktQh2f+cG0pjFBc+B+AYtTdpKz3lq7WwMm4vc/WlmKvqt8GhxjsWkhp
	 0tUQsctgYoU65D9y9yPaXkOILmdrEQq4oOPYGYm5HBZa5KdtlTRGIlXPzM+Ho60wIT
	 PPz7U8+THbkWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC37FC55172
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178553943369.17263.6896469805830562930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d64175780944ab68bbcb3df5f0d92e31444ec05d65fa0e5ac8fbf486f13b59f7
Date: Fri, 31 Jul 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785539433
