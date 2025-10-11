Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EF073D6F
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760154594; cv=none; b=dwzThhAmg5ZpkkgPdFPNupAKJV5GCWu1vpd9X9faaLz8HtIGAqhF95KEQczde1EoYLK1/PfhZY8AyQCJdP9Yt3kkn6ZH8wU4LH7ks4Jfif3i7f08R/mRIDlQP7H9L7Umfa9haxapBm2gybT0ldy0ba6225J4dNiLO94DlhhrdQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760154594; c=relaxed/simple;
	bh=nYOmUaNOq8oyM8gbrOSwtXm7nZbF990Vvp0nRylBJTY=;
	h=To:Subject:From:Message-Id:Date; b=dAM+xMYFj2eFSCsDK54ZhgIsBMtEpmIaWMHILJE2mjbN+rBARKFiXkpqjru66EfxdZPjeqh8d6OHxIRiYAzZC1OlgXt89CvQo1KWTHizKbNjFSqA9yfztv3UWpkujhKWJLP+RycpRvLJR8UDLfSVamnBCuTMyhILbUDC6hVUU98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K2Wo8yHN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K2Wo8yHN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6454C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760154593;
	bh=nYOmUaNOq8oyM8gbrOSwtXm7nZbF990Vvp0nRylBJTY=;
	h=To:Subject:From:Date:From;
	b=K2Wo8yHNfk1bUPT/iM1C0JhxDTwbF10y2nFktJbHCrp2MQU0gdtxEJyw/TFdDsjos
	 2062ygIq+lSacgElu1CzCAROzUjyoTdMrcmtm4HAyuCu1sr8BoKKZOoTSaMBK87TK4
	 E0I7e7ReIKlQZJp4Zy6gUtULlioDaHXOLHe+GPpd5dkVczx2ZoX/FqmCF1Rku0sxtu
	 mJy2oIx3rbYnDaV96IyNx3/zSi/3bh3sEiRzlulUVIeIOvb02oSr4TdIf84ofSQTy8
	 jRqrsXmS7SCIvZGP2DIhqrJ2PLvGD9MvnEJ2Hg3JhnpXAMf1IVdZrSIBqofJmAgpAn
	 qUJ3zgRNHESOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B58CCD183
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176015459358.22656.17504904763446519062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 336a0434617593329fbc719a28d1d5e389467c9ee2dba7cd3cb853b504f1cf38
Date: Sat, 11 Oct 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760154593
