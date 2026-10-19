Authentication-Results: smtp.subspace.kernel.org; arc=pass header.oldest-pass=0 smtp.remote-ip=10.30.226.211
ARC-Seal: i=2; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=pass;
	t=1792425634;
	b=iAjESOOWNvjBk1sQItEabDTtMPxjVrqUrO+GBH0vCnxxYIC56ZLM6/nhx/+270bAIyTJ
	 bw8LbMyMyilYo855qka7NpE/B6RTKWxdvTv5FWomLa5K+8Jv2G9kRQJEicJRSWfTjFD88
	 TzM34dg+VWoc42PXk8VsWVAAwUhWUS8xM/EcWhgWWyvo4PpRLg8KDjlKu2xNiQDQ6Fgpn
	 bWA+/EK2NXwjUsyXzGeanUbqeb4OoNUgkphspqJRAgFNrqa6NCzNg7UxyJ6guu9yQi2so
	 +AVRVQOsZ7pWOEaq+qcNUxB/TnW1pif/pLo3oL6grZG9/0Z6i4EcV6nt/ItFlcGR14g==
ARC-Message-Signature: i=2; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1792425634;
	h=Received:Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date;
	bh=5NUd+pOUQVvGVaPtQIW9QW8p/zleH72+OOkHXs9hy+U=;
	b=f+yg63iJ6O09QQ7AG/kTGw0XaP1FjcM9df1ImX5/um9e6iY2G/KGqq744rusKVXc9225
	 1vYwiCAMLAkri9tr+oZ0bbbbxQQ9p4VmBJWVqnE96rswDAIH2N/3AGfE2WaUrh6wCxYoQ
	 PMdVApLQS84kXhymrSDcE2PVh0k19pKez9Z5aupK0ZNyyOH4qThiBhlK7oEWESAQAx7bj
	 8rfmeBMtCYjwYoBcNeKP2X2VjyttRyPnqvSWIIBLaNjhDrkZgTO0bzzgzm1VGKpCQmnI4
	 QNQP1kLfsJ450i2leq90jyJRPD5Z2BJ5V1siJRa2uxdtUZ+6biAxxOYA7Az2XrLkiGA==
ARC-Authentication-Results: i=2; smtp.subspace.kernel.org; 
	dkim=pass header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20201202 header.b=ObGWDDEV;
	arc=pass header.oldest-pass=0 smtp.remote-ip=10.30.226.211
Received: from aws-us-west-2-korg-listserv-1.web.codeaurora.org (ip-10-30-226-211.us-west-2.compute.internal [10.30.226.211])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BAF06606AAE1
	for <ddprobe.lists.linux.dev@localhost.mlmmj>; Mon, 19 Oct 2026 16:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20201202 header.b=ObGWDDEV
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97A9E25771
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 16:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792425634; cv=none; b=E5Y7odqQu73vQp+UC9ClB1DNulqI4TdgDX7Kt2ZIAwmoIi2B7SY24sfPvZw749TEsoGftmh62WMyKSKxUROpVmJpLXgOnrB4JfJITYsYfEmtT/6VwFibMUVEQr3JNLTFecGwaDMkkex4KNbIWhfo+WHZ7SWNb88yrnCUls7ibjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792425634; c=relaxed/simple;
	bh=5NUd+pOUQVvGVaPtQIW9QW8p/zleH72+OOkHXs9hy+U=;
	h=To:Subject:From:Message-Id:Date; b=H9NUo9tBYo8lh96lT4dU4d59fb1AQRLCrBLAItwXIWa8E5YzqCNKINwtOgjtSv4fMTj4hJBxhS30KlqFib+ibmaN3x91Og5Wvx/LNVFpvbjMH5AszSMX4HPUPoLQELrTJn/xA610sqKWuVpgneNUP0wmdmiqa8AFuhdthPq3bOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ObGWDDEV; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF9CDC2BCF7
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792425634;
	bh=5NUd+pOUQVvGVaPtQIW9QW8p/zleH72+OOkHXs9hy+U=;
	h=To:Subject:From:Date:From;
	b=ObGWDDEVZyI7E+uIi/iS8pbA+/vXUQy7CQ/IXswNzx+N1Dyipu/eXJ6TyA9fp0wOH
	 7HfDKvNB2vEVrSGo63oQbQAYK7uZH3t7cIOceYRf/R9gCxDtiblEW6ncfqXvhdE8Ji
	 ZxDngScuQJSAXkzB6U7p+j15Y0DItbJ6jadXVbORVXEE3KU31+qHoMFfdnSrKmlpR/
	 pAbx9Y+BExKTWwYnzBUBfd2RtUcZG2LVIwQ7UtyJHXraRyEO7y2Q/ohG9Ebpoch3D7
	 M6rteSiZ1hrIpF8/DGLuWZKohGBMOm9Dz3gKtET88tzmJWXMWu/Fs7z06LLK4+iqHx
	 BBu0NTgRlvZ6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D32BECCF2E6
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179242563379.16288.3722964054446608637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d759c2cc94961d5e801829c3bca163d9f849dfd6f612ec795207f8343591950
Date: Mon, 19 Oct 2026 16:00:33 +0000
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Post: <mailto:ddprobe@lists.linux.dev>
List-Help: <mailto:ddprobe+help@lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>
List-Owner: <mailto:ddprobe+owner@lists.linux.dev>
Precedence: list

rtt-probe:lore-subspace-rtt:1792425633
