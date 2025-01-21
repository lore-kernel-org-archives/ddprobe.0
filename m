Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49DED1F8901
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737500154; cv=none; b=Pt/qztqxSrwofeQRBG8DG48ci/RtX4ubdKJIpPYQ/gA5z07RHNRwnpEfQhSqsZ+pjkWkj9YZ2D6ztkyAkvPLLe+pPAAJgpKsqirFfTMVGG3xKSbGZYG2Qq+UaV7RkHa2OrcasM0CsXCEhV2EUYDhE/ieiZhHZfByHYEZHo5o1pI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737500154; c=relaxed/simple;
	bh=HhU2vimEoA59e6PFAesAL09zj4YBCgiY2ujLP1+p388=;
	h=To:Subject:From:Message-Id:Date; b=YDX/1j4h0YbA1jfflc4bTpWUslkc7S/IP4yDp3cjLd3nVUMh6/1OW7UKIp2T6MIk1KTq+yJh5CEJemWuf3nABECjdjMkJ4Y0e3JvWqS3cEygrFgpLhx0YHbHISl90NI2nZjsjLmcHHodJ6Fm4ebCVhK6L4kYfXxkHP3IyQa7PXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YI6PuPBU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YI6PuPBU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB3B4C4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737500153;
	bh=HhU2vimEoA59e6PFAesAL09zj4YBCgiY2ujLP1+p388=;
	h=To:Subject:From:Date:From;
	b=YI6PuPBUjX3sf03X5vHEL9Y8WoeDTh9n4TqikdTA9FhXtsWP7CW/lL6VGYfJOUWmA
	 2rmBlmjbcMrdJMGK4OkjNj7q+vEiBFrWVMPPJDAcw8FX2W7KekqY4IYc0EASUFWc6w
	 Kbtm6+qKAz/+/GmUC3uUTA+EQRsbD7TZwDtk2HGTJsTNiLjeAcdlhHsIaf8F56QGts
	 vTvJcxipvuHBTvScFHPSkFMjWI44e206kRuQXJKvF+l+l1RmQl2tA7wxsdXZZg4f/M
	 I+tYyfl6Kq76+/jAppPH/lmOHanZgKE8UllneM5zMhlLgJS7U1Et4CnKQGDy2GZoOJ
	 7izegLBLPDosw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A692BC02182
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173750015366.3302.10633526822177102136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 052395ab99b7b262f0ed97cd46c89a0ec39ad4964dd27d5bb1f95c453b74cbae
Date: Tue, 21 Jan 2025 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737500153
