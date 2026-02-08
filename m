Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3232C280CF6
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 15:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770564834; cv=none; b=c2KtRHjsfgFZA0DR3nJ9bJFbeFfmhVBcPqjtveHqVqOF1SpIfljbFqdxbqRLaa3Nx+21tTDCwoj7PWekeqba7oaVzz2pA5fLmW/nWrDEF0LHNvBX9XRLOIK7Q4fKHDzsoeE85kzc6Y3BOS80yYa9LaCbutoOLONh7IIL0QUtjw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770564834; c=relaxed/simple;
	bh=ffFa3ls57gibN4bEoomfuViEh7WZxh+LFxH8s/8RMdU=;
	h=To:Subject:From:Message-Id:Date; b=ToYE2e6WeshIzxHHHKXifXSwRuOGnLs4HZ+QnNXwJiX1gvmeW3u5SilJtVwCSaWFnmBroJY+RbGx7HyIvOXC7C7Erv0i7rXG4wr3VLQ77NXi49EZED/Z+8Cll8n2eFwxSMO8B2YfpY9wRRbzj4Zs62kPoDC7WSQgr2dzvPpxxz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MaSPjl6w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MaSPjl6w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCD4EC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 15:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770564833;
	bh=ffFa3ls57gibN4bEoomfuViEh7WZxh+LFxH8s/8RMdU=;
	h=To:Subject:From:Date:From;
	b=MaSPjl6wIid38F5Y5GLO44ltqCV0XSo31S2f+5Bv+3Z8o5iAsjwoy1bchR7FLSLW0
	 P8wk9OnAuvWjHZHjArFaLMoefenqLoERJOt7a3gT0Mr/6JfzVBrSjOHD/RHiifWQpI
	 v9Dztg23/gz/8Thh0zuir6vxdlMMXGUD2nwJkOXvg91J5GNOs9Lde1mqHC252z8mHE
	 fJlOuGPhfRyLd8/cCJCVtpMFb848vVNCYWpc91282zrJ7f/BJ2GsrPamzwABtezfjy
	 UAvxRXbBzLNiI8CM97yzaidEzz3LTaa+X9gk4XVCGNUcbawnHa8zP5ZQWjQiJeb/jo
	 wA1QDo6iYHSjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7BB2EF06E2
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 15:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177056483360.28971.2515087778535592634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b8b7172262e547ff361cc2bffa45cb54e9d1d7331e498b006b66d4a3cacdd01
Date: Sun, 08 Feb 2026 15:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770564833
