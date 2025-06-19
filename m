Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1776023A98E
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750317594; cv=none; b=EM0UkebaKOyTQQ2DPsBZ4uVP8RgIXNqv/pUPauFKeR9HxNJ2tJsnMAysN+RgIAvM4n+Pon4WGbRwiSNUjmMWc8saLa0yorYKrv6CC0HrvMc50u8Hy7yUO6GFMJCymJ/RaPtp/2l2bHUyK0UIzcCdKb8biSGTW24MVhEDYgiQHgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750317594; c=relaxed/simple;
	bh=5WU/4xeBoBZ4PzeqjS5Tp32gqs9P4Tj5zfls+VmmzD8=;
	h=To:Subject:From:Message-Id:Date; b=f4wcRVN2C0mEJ8+6rfLbK+psuvCxXJKTvL1fBHhHd+yLnof1alWFO642hPFwaeTDmLypFwM9kRS8TkJMmaebYu5m5963VKho6+bYfAvNeHOevZboyQb8Qba6U85NqAuQbQ225099HH12GlCiEsfDQ1gBoqQrk9AHlH0/R2q0pUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=caCFJM45; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="caCFJM45"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A308FC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750317593;
	bh=5WU/4xeBoBZ4PzeqjS5Tp32gqs9P4Tj5zfls+VmmzD8=;
	h=To:Subject:From:Date:From;
	b=caCFJM45gWiF9FeuVUW2mTD999EY0HyODs02VYsMsRbGVqdIXmVfOXwcSFtnQU+fq
	 kpk8jnErfT9ataINeSUrrmpS8GKWITV0zkaRU0UwwzL1d1Zu/kPaLAyDC64lq7zyiE
	 J42wwS7pSJx5laQUZLUYVb6Re8Aw9JDO4JpVU6y9qTJxVyZ+tY8xhSsw3qA5e98yrn
	 IcF7WiRsZ9YrCpf9iamCrQl9HIGVzxf529fM96UwxhV6NF+9iC9Zq2ken2wLI5zyy5
	 rQROym9Rvnf3GefYVw9eEYnC72F9+On2rDiCTZA95oxzB5tl69lzIPFM6IoRKMrhKC
	 pyKCNKaOfxlKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB3BC71136
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175031759358.29469.1044534797079400823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1d38e022c3e629a19851ccacac66689d023bcad58c3378b8c6c4ec0224bd292
Date: Thu, 19 Jun 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750317593
