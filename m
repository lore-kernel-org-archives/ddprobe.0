Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31D7C1C3F27
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733942754; cv=none; b=OAPyNdKQ5mz9YOrOssZCGJeCm9X8xxiGSUBCcU/xmOYUqydVnyNKM9i0DJH5mlOtXWcr8+l8nr6URFs/M/nqrtibe5tQ/jdaDD56VeacpOHpy2fUwwLEDoBwbT3Mt9sPxOlNI+4vyeZ69/KM2g/oF5ICzrm/61mjsnj2ktEfq8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733942754; c=relaxed/simple;
	bh=IQuLEUBUdEH7LPmH/X669jsne9nGSE2kAvIziAtiwAc=;
	h=To:Subject:From:Message-Id:Date; b=bax7zS4wW2K0nq7IwGxNa2xoSHUlO0D7FPZLkXXKTRHUukSHezwwYQ5m5AAbYjN9dq0//S3DivUHEBZfG3X/ymKXk9Wh3K3VW3dDIguoc3n8eE3aKSVgM34nuhHTTz7zPpEHfkLeI7MYDbO+RiOkESRVKp4N1gt9a/hZAoKtFEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PMB1n2+u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PMB1n2+u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0E85C4CED2
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733942753;
	bh=IQuLEUBUdEH7LPmH/X669jsne9nGSE2kAvIziAtiwAc=;
	h=To:Subject:From:Date:From;
	b=PMB1n2+uvUZ90vCyQDoueUM/BB8UcVPi5qJxgK4TgszXfMr0JzfAGFIanO8QJqJ9+
	 DbknCiHxErKgH4CvDuaowOpo7VAbAfxv75nIVvm8VMcswfS+pafqB0WHW1DMLHHdMU
	 eTkXblEJ9fHwsq+APK9T+PXhC9B4Tb/n2GU13Bc3O0paeGQMnVewsVVKoGVhCJJbq2
	 6rEmEPhTyTXtbwbNRzjcq0gk7LNY1BinvM6q7lfuzzFPC4h6GMmZ4nCgSBQKuy+4fx
	 fPi/wt7FmfjOg1ExuN5sRaP8/qOgrXarH5pwpELmyIZvgU33Z5yQgVd2aRsgl8xtSn
	 +j5mlk9AeHefw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 998F1E77180
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173394275362.21220.5865722857903634917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f40b15d8744d9ad0fc465424010b51ece9e62682c04c89e66f2fc75911833607
Date: Wed, 11 Dec 2024 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733942753
