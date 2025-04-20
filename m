Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 599532AD14
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745163595; cv=none; b=Ufal4/VUlX2n7ZAagQLYLz9Up+bO9GVNlebthTNjlbJoFCpASMfoPGJYA8jd3dojQxeLdaJc1yCGf5RljS3jRO2eAY1UC++wIxw1s6DPU0CZczYWwoHmBqVOlo4prQoyAk96aBuqJ8eHg3GM9IcWWpUkdIXs2F3z7rQ2OBls6d4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745163595; c=relaxed/simple;
	bh=s4BmGtyTl2QqotkJ2Tze7/P+xw+YVbdoU//PjYvNG9Q=;
	h=To:Subject:From:Message-Id:Date; b=LBShZ9lc3l/22iWw8bvYMtIGPZ38Vjof5MII1CCq9qq6DjVgfHg1G3ffMAJ34gdfo3QgzbEhCbZCvn2DGV0MX7RVbVUIBDcDmKYXD9o19UvwXFszauq2+S559xxUy6n5GaS79bHtow/HkozJP7KMXm3TOqQBoqMmlhCkUgWP/Fg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MN52amiS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MN52amiS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B71C9C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745163593;
	bh=s4BmGtyTl2QqotkJ2Tze7/P+xw+YVbdoU//PjYvNG9Q=;
	h=To:Subject:From:Date:From;
	b=MN52amiSJed+ZpsvAwNU5tOEeM3svmMxDHPwPd/JT3r7o6q0adxL5LdCWygr1jdYe
	 nTAvT8tOAYgOeGpGEFZ5VHS0vA/BB34Q7+RUt+Fdvqs588BG01N305PLAxHHkzoveT
	 2L564Bos1wH+oJM7D6tz7DUDFbLGpW5u7/Ne/p3Pt80RFzxJmhCIt89a4yTx8bnx6x
	 mw53k/FDP53eo1vMPdfavFALlxkDbNSJ7jMhTGEENgbGvHv/AkTmAbxar3piIRuE02
	 QG7n8XXKouT59MdawItUfLa6ZhCmUTcMkIzEb8GHdJjWmbKtezYNfJPoOv8OZiegVh
	 Barwyw5b3zPaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E819C369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174516359362.15958.5950795666430886313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15f3d40f8c7f76f61ff13c427648877b791ecfa163db2c2d7269a095944cbce0
Date: Sun, 20 Apr 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745163593
