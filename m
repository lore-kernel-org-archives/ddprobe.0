Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25022289E06
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755689994; cv=none; b=Gj3mYq89vqEfvb30S3EyLnMgkBe/Nufz2s/kAm8L3cDfnh26LMDQmkA8h8LzLYYGaLmEfTRPX1G5TF9+irgUh9CdnCuiE+x4/+afGMMr7VKJGLVXz1HgdKF1CXBEZ5TNNlqbOh7o36wLH2WoWNBN7AUbJ1R3nIvLxXM9zqHTkRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755689994; c=relaxed/simple;
	bh=DNYJNH5NlNzUL+aYGgn4J0T9Z6oC7zAWKWXRLFiA3ys=;
	h=To:Subject:From:Message-Id:Date; b=WPNI9ta/3Jz7n4KQE/dvZI4w6Dn06SNSc0pyKGr/rqcL85l0+/X5yI5etGyp7WllGGJ6DZwFyqdxqinIKssp6Y+/S19m1RQMvzPGQsOe1H5WK/SVNqD3J96EAS9kvCsKJkFSHlhYuvFYXfaDdSDkgn5LyFInXL2hGVuNPD5RwKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qYIjnYWV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qYIjnYWV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A00B0C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755689993;
	bh=DNYJNH5NlNzUL+aYGgn4J0T9Z6oC7zAWKWXRLFiA3ys=;
	h=To:Subject:From:Date:From;
	b=qYIjnYWV2lXmf639X5EgOLUuBKZWd5HwxRFAubPDlX3/2kOdFCRGXZbaNK4lN88TX
	 2gRu6Rj2hU7RRA3CyRAd1GeCS1JVX5nZhqQgXBHRpYJdD0BBgszDf+NTTQkHvIEd6x
	 HSyjBNodeXzMfNpZO/kKC82qOo/0ueYMLiTziqz83m4XH5R25scoJ8nmSF5skqJgsn
	 yplki3yO++I3KnkKKf8y5iI0G+zo/ZPpnQCHSIaHajY7adPThmyHJ1WMDpsM7HPpEU
	 qP4SLtmTUfT0ZJ2sn8pajB7OhnASzRN9lxH4IIuo82ftLe3gkEP5UJ6GqohALDBKbJ
	 B3/tgdNspeNnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8D1CA0EDC
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175568999357.17414.13197992676380799061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e6ae180490e9dc0c0c5631a0662b7766f6c6012e4388e5f4cbac69f37922d5c
Date: Wed, 20 Aug 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755689993
