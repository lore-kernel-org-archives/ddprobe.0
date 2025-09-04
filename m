Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 388952E8E07
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757026194; cv=none; b=hLlSCtoLWLU64RObl2scB3G40SmDM+pPIRr8of28QSsR1659yrlKbzmoIb41Ii8+3U0Vhf5XmCl81ckyV8lmf1OfAJEY13/xbX5VpuPmeHNdR38MaRkG7ezlB7devyq10e0mu3PE86NcDP4FjDugprpyOlWHJH5lyMuYff+0930=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757026194; c=relaxed/simple;
	bh=5mPftQGR83fK2nB9Z3TfVnml6j6MKhNHy7iGh4yY8ko=;
	h=To:Subject:From:Message-Id:Date; b=q8wPzywQW20QNCpByUG9TuAzaURb9jB0YxNTaZ++SLRzQdcdgr3DQXdkPAkVUdLrbCEN4oCZ7Ffp361g1IRxReI4fYRKkHma9Umm1RlyMALu/g11Z6gHk7++NHqhbQ7szVeZuQnpyA3OesGZ6w+NhL5Vn3XrpyIwPLW3HardOvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PW5DcQrZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PW5DcQrZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE16FC4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757026193;
	bh=5mPftQGR83fK2nB9Z3TfVnml6j6MKhNHy7iGh4yY8ko=;
	h=To:Subject:From:Date:From;
	b=PW5DcQrZuc+Xt/yHREHKIbaQYtoe2RbqBQR/zYwB/olugHMn4xvVXRiDVl0Dshvbn
	 4IfDC1osGq5qNli5vasg/XhbCUcHe5GvfNTnqyyRqyPSzBHHK3sUTf/Mf/wcVoORbw
	 bZSvmm/rzzWy+FZ8KTY4FEaAR4GwMgWNko1awJTdCf/yJsL85sLxHDjiqhAJh7tm9N
	 SPhy6R+QwWA3l2AB3re4IJ/6Wd82bb4hH2Kwi3DDuy5vjBCNgui1drCZhxZAN0Yg8E
	 rvNegCgJPiPHDix25IIw5ltGWvSz0UHBlGohNNNYfZkzZBce/w+8clz32NRIMMfprd
	 FQD/TRg4aTptQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9318FCA1012
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175702619358.15969.14647134143882307694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0871bae7caffbf542a0bb33ad45641d55f6a8b98e9cc4869ab22cbc8c91267c7
Date: Thu, 04 Sep 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757026193
