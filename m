Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5336A33CFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 16:57:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717779443; cv=none; b=KnCJkpbsCs3A8Dmto1435BsIt9zDeScqlZHZKnMER6ZFY2FBl8RV1IV2s7cVehqRQ5ctWe6CHMAvyhGpUJlQaKqtlUketxfbIAXZOLfkowOxhevZn6Aq97n9saPa17zH3H+/r/6a7xG7Om1Ws8Yg3ABy48doGKyYxLNqATRb8hQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717779443; c=relaxed/simple;
	bh=uUQNRTezXnGHqN2+ZtslluaVot4tmQHjetlNEjiQ0sc=;
	h=To:Subject:From:Message-Id:Date; b=EOziC86W7NqCRt72VEGvzcsBfNDRYxV5yFgMAt4rw3eEaCJl01cMOhc5fxMrRuGn8kTPvKtSfyqeOeyTBeO3voW9pGWGMD15JZGsZHUMhGImIrQhj9+gFTEfUjuFRehg12G5rMP6+9WFZYHZ77jGi2wsGTvz3lk+Ks6Z8W7wzak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RzfNHZ5y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RzfNHZ5y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB457C2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 16:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717779442;
	bh=uUQNRTezXnGHqN2+ZtslluaVot4tmQHjetlNEjiQ0sc=;
	h=To:Subject:From:Date:From;
	b=RzfNHZ5y4VzH6UOEA2wIVUyg6GbABrNUmtIUL6Q/KdhnqDqb+q1sQkrcYgwvKErhr
	 sHhcw5FmG1rkCp92WIezhGMPNs2y8pLKBrNkxsUic4JfVNaKBgvBJp8gs5kk7ygetv
	 ozzaHSdjwedXnjODwDfW1fdaefaRaZZOjQDc3d1zJaeGK9cgPg8L4zDCfFbpqE2SBn
	 RsUQjt5FvKer2p8H25lGzh+NiKv2Fw0XrrO93CDHryvDTmu/Rcfm1LZOfeKLt+iZ/x
	 ch3lgGTmnJ60tqM5WM6OFoUjkS3Ns+n46Kobkmsx/dhQ0fEcvC/sZSe7ka7k2D/bZ3
	 LbTKJqsopUEhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE518C27C53
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 16:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171777944277.6954.14122021155617289788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c0823c6aeba45968e21da476f265fc50857e4347117cad2a238986be065b5a4
Date: Fri, 07 Jun 2024 16:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717779442
