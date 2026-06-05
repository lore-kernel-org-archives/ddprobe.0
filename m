Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8046441931C
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 19:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780686874; cv=none; b=LBD/7c8IOlv9ACgGKUjxE9nSXo+uxXrMI4yfuv3gHy5aosQOA/XCyejGcHLHpQl42RbzxMzSu0FagA5P1izsUcrQLfts579ctIlaXwC4NomvbMhvuuni+41TbsWKH2ObQ6rRJPqGcmYzS33Aooa8gwfTqBEApydNMW4qJB5phss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780686874; c=relaxed/simple;
	bh=rr/SD2wWoydl+EwNT9CAWcXIHH2WpZvtYkgQiFlh9LQ=;
	h=To:Subject:From:Message-Id:Date; b=HHAd9yosHABv8OyaBtEHv8p+y5cIh6oA2FaOywFKcPow4h3JWaB1Kb8u2gxBk/XmhXZ98dwNWQLGlTbaODCGQKsC1TVgdmlySliBOSn36YUxlIEiqV+zaoRDQ5Gd+WiZXLbz2q0v2DpOVvVHBsRFMzYLeRPddy9oxir0iIvz2Js=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qUgvhUw6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qUgvhUw6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA8B2C2BCC4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 19:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780686873;
	bh=rr/SD2wWoydl+EwNT9CAWcXIHH2WpZvtYkgQiFlh9LQ=;
	h=To:Subject:From:Date:From;
	b=qUgvhUw6UlMUrZOxGeCcivzPRm4ooB6vynJc07zCEFxGTwTRs7ksD2E63IW1qLNPe
	 MtjYcfy3YLlJMY9zrQP8TB6nte92+hvbSab4Ie3rY65aAHeZaDIhaaQaSSPJj+IBEJ
	 Nt6YnudcwPyKBeUbFXjvPAhRa7NgyS9aSTyCMw1F4XB/X08d7d/E36lX7W+KlnmycF
	 c5YNsI/CSRUYlM9S+Bi+2IOkXsL5IRbfKa5zi9jsZ5QH8ddnZY+AqFwhY8SV4t83Y4
	 rNlCjQDAinWZey9+xOTE9uaxm8GEbHv+JLYf3lO92TtRZe+LNmJVeBgqgiBxH8ef0M
	 9tb/RDUB5oj7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB1D7CD6E7B
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 19:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178068687375.26914.1479719400948022128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc74bf6f45a7d65d6d1fbdcba10252dceb4f2c79d242ba9f9811da59fceaa086
Date: Fri, 05 Jun 2026 19:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780686873
