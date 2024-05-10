Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DE68171A7
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 03:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715313143; cv=none; b=NaeUVEF+XNlOlNo23avdiV+P9LRibVtOjZ3nHML6qMiUNrAtIWDVh3H8YUoTB9HNlUiKh03JWA9/D6s3I7ZyKlVxiSMrDXaYjkq8e7jO4uoOgWyHgsOVlJDJMIrpcfeKKn/TZuoyvylAgoNYHSCknu5Ew7FOPeevZLULCz4mAes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715313143; c=relaxed/simple;
	bh=L/uPD7nF9j/isrTBpx9WMoDEWw9Z0TbG/ZkZNyOinFE=;
	h=To:Subject:From:Message-Id:Date; b=kJKBNpHY3vinknJOSvNf20Pw61+OKtSxEwC5Lls6F5L3h8MD6PuZ1HsjDDheOgszQp6Kr6mMidiKMEmOkJvAaSAuO/PvpTEEBMF7ooTq4LQ4HEBvjQ5DGTOCweaPNaAcCaZb1LbHJE9mcfSMWxn29R0mVa157yLSp37jhwbwNNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c6lpzRxY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c6lpzRxY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCD7AC113CC
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 03:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715313142;
	bh=L/uPD7nF9j/isrTBpx9WMoDEWw9Z0TbG/ZkZNyOinFE=;
	h=To:Subject:From:Date:From;
	b=c6lpzRxYcWKL4A56sr/1GBQp+0KzWbt/nBncZD97DYTPOUB/JZiUxUNnWCfNmlOMe
	 K/yTlnPZsErhe7raAXTL8OV51PKynpw9PnXPJOzdwaPr9AowQAwzouBsGFbUlaQIzt
	 VrVw/1rw9YTxl9xJdFZP2fEucehAk+o2WWq2kHWylHU5SHthOGh+/pLI+pjSVVhS7+
	 JvfhhPq1iS4xuWYvvc/3i1slUX430qQE542tDKRwyW9hovOS1YIUiUvtFXMKD7qokN
	 SR4lf2ohvlM61t/ocYO8VP4PjoAVup3iIqnecyt5urKecgpLMc7XRjL5Xun0x0Yqhq
	 jCGZDLBiRGT/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA4F4C25B5F
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 03:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171531314279.19807.4337915004697526615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83941a7a5f94c1dbfc596786950824da7faae5ba27e36a44fe1df3d04064c32d
Date: Fri, 10 May 2024 03:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715313142
