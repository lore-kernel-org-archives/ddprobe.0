Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 568441C5D5E
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 21:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791753634; cv=none; b=aMjd4ZpzHhUHjYDemEAP5bAvOdlxYJmfJbnkz5kEPixRuL5QaMsoeUv3ogxeFr66sTExva+2/pmJ7ySKIzLTqESnE6ecjNCRmP7nb2FYXYVEkH6rxcCJ66KLOiJvfKNp9mOgdWzg9lrPnf8+PKHieBdQJNs7TN7NISSLUTu9170=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791753634; c=relaxed/simple;
	bh=DKGceYi4NMqS9iCCQijiyY4INJHSaSLjv0NCO2WcQFc=;
	h=To:Subject:From:Message-Id:Date; b=sEh5WHaGS9LOULDRWEWLxXB17HItEBr9N0DELlE5pZBaDgbYqR1ZdOpLxmpln6XTsZij6tViFVw/fzwbJKx2QHMEzyKBYtlDvxKvhITE+kkZmY8nTwZdVXOV0x954FdbT1muPxSrQ83+fcZFRdAj/dwAppVRoiSvSKvIyXJ5n4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RIgY/oHw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RIgY/oHw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9E87C2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791753633;
	bh=DKGceYi4NMqS9iCCQijiyY4INJHSaSLjv0NCO2WcQFc=;
	h=To:Subject:From:Date:From;
	b=RIgY/oHwQswU5whWpmQyTICi/gPP2jsQCO8AopAhy9lfziWGhIgPF3Nt4qrPvz7Ni
	 rkFxhfmFGpQezZlIcn3yTJQSREWMzIMAuSfLfnXkeDm/YLq0z4IkHFVBsqz0Kr5Ls/
	 HI8/c6EIZwcAFp3I9d25lox+SOTOlAaJLO+nZySny9TIMOk7LJu0MdwckdFGVwbuTj
	 JqHHwughpRX1Y19QyC2NBDJOKkGcLw8OPhzVX6wKZDOHdcYDTXCBk6jDMfXc0g4SXD
	 ddVOPITk1wqS1Avi3FtYrImux3yiHk5oFZUVsErR680xefEd4MrJsJizAqoQ5vrb9+
	 72uBkXXApxWgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE07DCA9EC7
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179175363368.10631.8297731053494081628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b35deccc801fa88b86ef28063d7ebe69ed619b9891040bf87db6be87f24e24b
Date: Sun, 11 Oct 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791753633
