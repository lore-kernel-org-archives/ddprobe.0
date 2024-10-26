Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D3AD1CACDB
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 11:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729943755; cv=none; b=r24aPfU7a0l20UhMeI8CZ15uynUw3NsQPfnA6QVZOYzQutdbszwrSDoGK3pUehsYLUDNhokBqWaYuqzvOIkVkamNbK5Q4kx1WZV+zr1uGK6tJPcF2X9zxSB5RjPlezwZNSxcEx/ptytWNR94Qk69EXeVw67NBI2sQG2IKtChxqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729943755; c=relaxed/simple;
	bh=sYO9uHNuxsVGZh9MWi9HnrQ8LjPjHjMyV1x93AYzexA=;
	h=To:Subject:From:Message-Id:Date; b=iVqNXTyLRZhMKG6ODJM+RkV1PNaeWlIbEx4ifUf0L7iKc3LVOtY+CTCNoAZ7tdlZZ4TE3Vtf9BYvG00R8JpUzzeidzrzHm/salAo0X3ZO9K4RGRQ+nsqzjM96x2Gtm/H5WFQG0IV6zVMyBdopXE7lmO3WParmoBgtVyeupSKPnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u4BIu+HN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u4BIu+HN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE480C4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729943754;
	bh=sYO9uHNuxsVGZh9MWi9HnrQ8LjPjHjMyV1x93AYzexA=;
	h=To:Subject:From:Date:From;
	b=u4BIu+HN22F4257Y0ym+mxES76XFke9UvirkTamqylLrAlRnRL50NoLBXaqIcRzAm
	 Yx90szvmQu30QwmEsyhW47pr1r1iF5/46AZMrKEkRqDNNMTjJC2O9zV+1UmDrS65o8
	 BfBLUJwJDcTOwP1Ptf/zmrdNtIT3zJ7kI1rYyB9gpazvzFHBe+Rcb2f+kQILEgVwQf
	 I6EyXiONu6iKv9V3VnqkMCBkAKBpqXxGjrL25OTqi1XJNoheNjpc1VNSvL7phg0VTy
	 UryeyIqNGQADKHQsx/r2AxmetdnFhCNz9U7CgtX8Yxyc6Rd7gfHlKgIyPDh8PcTFie
	 U3RhPt00jGMGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B4FAD10BF7
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172994375362.19130.12793227472189432120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 007b2d25006c478cfb176d98405b98dd8679b73649c667c523da34131cb4a286
Date: Sat, 26 Oct 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729943753
