Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D31529DB88
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756115394; cv=none; b=Cz2srRsIgkKg31HeBbgRw+VItrdc8c9QDTROBOk9Or7PAbrSGcde1RJOtGWsOlhj4G6Yg7UkQqfPO4tL5Z7wh3/z+rFxEPflIJXF+yiu6KrbsZleeupDCqzR5bqhz+3PDQwNeFGSep4Nkj/GzpmG9qoBwTE94gAkKD8FBaGiyRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756115394; c=relaxed/simple;
	bh=SYWfFp7XYx7n437b3ld4ntPh9bly27LNtLbT1Vp8ppk=;
	h=To:Subject:From:Message-Id:Date; b=hM1aRjA+yB/m15gQypBrjYpeWQ/3PtrLMPfo6O4qteG+dUIBo4zJLQggG/MvBsel8XOzJvbKh9m+hqCgl0mS8MYk7ktdDnlp+bW1hyXqJnv38i1NubF6Gx7VU23zlLmFdbjgryjZ4BgkioZswahCPx4Kiatanh9TD4pvygl5P6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sDmqpHa7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sDmqpHa7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F57C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756115393;
	bh=SYWfFp7XYx7n437b3ld4ntPh9bly27LNtLbT1Vp8ppk=;
	h=To:Subject:From:Date:From;
	b=sDmqpHa7DKyTGevTkIYZVFqTSghG9Kk1hy5JeQbtrGxYv8seydJ8m6f0/221+GcHD
	 +XMrr/rhJ5nNZwTyP2Ny9KMzQWTEH6nOcTsBcUPx2E8yhky8CgbH0nTTKqaa2P3tzY
	 ZEAY4zjW3HsfDdMKyY4ZLvrBl1pBa0zhh7dpsilo1P9yA8Zylt9qYxXm0NLYp7zLk0
	 UNMn0ycYmG2fhSMdOXnbAFf3R+E5EAkxjU1R4AtoFwodsdqw19zD9p2uxhQyneOGKC
	 oM6zsD13ibaSweG0V9K03kzNFrANBOMB4HFrNwt3jF+fCTjWFqWhmBsep/umigY1Cv
	 thrUSmnRFkidw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA40CA0EFA
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175611539358.3677.14100114667542718324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1877c537f060cf38066afe269d646c0f9728adfae3c79fa6ef4f8114065e2f7f
Date: Mon, 25 Aug 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756115393
