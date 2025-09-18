Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEC4629BDB9
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758187193; cv=none; b=k0vX8kNeEpP9TmJxshAMD1pnBRTsqHwa1deeBiHlXZKuxun58XmgwmaDQnKDmm9wxwFqoC8E6pX6pJlW7fGbiCuRSUL3njvSrVvajcFgj8m4go3Uceq7bkLAz0OEsD9wQVHCCcp2i9UmUJ7L8Bg4WuCXAb/nXjkJ5J0ZVMGxpBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758187193; c=relaxed/simple;
	bh=1Lqcu0yPvk/bTh6LxBu+MKqke72K25Q++YlwSyYftPw=;
	h=To:Subject:From:Message-Id:Date; b=TREnKQV2Vnfd+VYoA+j4p8RRf3x3Y8W76wKjkEbNdmR42xqK0AMegHIaUobm1ZWGKzkxiZ+dmt7ZAAE6Xx6pRzRVBZ1vTMjEVckun7pXRqTZDTx5MaPGMaFQ04Sfl6srGCAqGcHNQiSAZlBoUmq8hcKYxOyvJLS7IkPgbi2FkUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KQSXng0W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KQSXng0W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A53F5C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758187193;
	bh=1Lqcu0yPvk/bTh6LxBu+MKqke72K25Q++YlwSyYftPw=;
	h=To:Subject:From:Date:From;
	b=KQSXng0WAsna7Rnn9rMOE5aXM8vv2D4oEGIa5yZUrbWi6yoVi3QivkPPN51tkflr+
	 8qYp96MpRXnqPhQOe2z99uSH6HJFbYV0pQHd+SEu2/awHb1s8iK8M6fIJArRlMaKiE
	 gpkODGfLg5Szb1pBaZxJO5anFXksjaZuvJJ3h6ozapRCjfxwh4izxZ+8Swa30VIylt
	 WmGLqfstAPjpm09hCXeyW90eHWCw2qr2re5fbgVu26ORHcfF1s1TECCXbckCcotluO
	 7iWZ+TqUetHpMGUmjeTHy3vMvGgqnL4oGDnn0Ygzu4lVWjEfQTQ6slbTjRsvxrWF/S
	 CqK+ENQ2hbaOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 968F0CAC59F
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175818719358.7496.14331602220196088423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1a6de64b9b5d17e55a7acfd7bbf3bc8b8f25e447b22f9aa5903ad842b2c7011
Date: Thu, 18 Sep 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758187193
