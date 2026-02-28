Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3EB1379EF5
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 18:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772301893; cv=none; b=Wfp4RkIWeyCi0QkKUKR2XaPffmxQhemAp3ImHSp/9yzI2dFtL0qr6jA7vCkG9gvPSVdg9Pn7imVI2gbyJ/Juvg8Zd5+lVLTzyC9MywsdaFDyr3QpYxSWb7x7k/d46KMgasryF2Dwp5GPybRzrrfs49mGUTEZZoxtWGdRlRPpLok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772301893; c=relaxed/simple;
	bh=bMcqOz08abs+IuPxZgiBgnEBNB7iyL0qHl21CBbne6o=;
	h=To:Subject:From:Message-Id:Date; b=qZ6tdLLVfjKEuxg4TEwE8bOqDASSv8eniHLMZuUb4ChmpPv8B8dM6tqyICn+QS6pdIGQWsVQGY/wbGMmvxSo8lIzyIquvSICWFttgjuR9T3W0c9S3TID/qXNw1rB9/HzpurY00u8Ydop9amqs7l63TzFOBZlam9lr6iVoWu/deQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sNby+hNI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sNby+hNI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA2D7C19423
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 18:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772301893;
	bh=bMcqOz08abs+IuPxZgiBgnEBNB7iyL0qHl21CBbne6o=;
	h=To:Subject:From:Date:From;
	b=sNby+hNIi3DBVv38ZkNc3BzJ5zQoAH1vCR+zcikUS8vw+NPCE2KKG71dtY9n2iw3Z
	 Xg1Sd4HsfE7E8hYrpwHs3UalIfwwdHWEkQG2YSBoUOkf4Q/n1liyoRZZweBPkU3ZrP
	 P5Dw7xJZMmTCd6aKojGPab78CtHVv7zmd4hat95Jf10Na9pcstbprjhsME16cEexXH
	 HeYk1qUS0pBdXzGyImYjavfLKJML/SA/yvBuRaOanqA8Niyfd8oxiunluiRHZprJIQ
	 HVnYQwqi38xU0O6vf3a1SkuC2ytFpA9pG60W4bJw4RjVuP0JhbOqJbivhctQSfh8DE
	 dcOOz+8lBXx8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945EAFEE4EF
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 18:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177230189358.28901.11538884199754743862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40edf27cb5882b29e06e6db0cbff46fb1d24705004faaaec1828911f344be33e
Date: Sat, 28 Feb 2026 18:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772301893
