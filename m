Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16A2E330B15
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 03:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770348234; cv=none; b=f6jOQ0Xcc9+9ixYpoWgN/ZktWNgzshJfVaTyTJ1Bg+E/IXc8mrNJe8SjvdasHySaUyp7SY/8eud6gOgpbcQlWZAp8j3yavdE3KvHVOHf6PJUBP5LExCCI8cw/SjNp/nFTbM7k6/dXCncde0KgcSTW65ibQDzRHzFWwf51oL4ZNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770348234; c=relaxed/simple;
	bh=yv9p0nfkM5c6AM42lSlxb1IYksE9j5rcW8hocPA7INQ=;
	h=To:Subject:From:Message-Id:Date; b=P0nKIfmRhPogvPuju0Xjvu30O7YAlJped23TbkiH0LlOA74CYk4MSInyKJb/BOoVxkh9jiNQlNKYtaNQ7gMH+AyK/hOz5tX6r7e2SwCvOpHp0L1WlcMHjWL00U3j/rWMz5RBbtm/Ki0EPlxiAcVBfDTgJ9P79nXJ7rr4iPOgl7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UhtpFwXo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UhtpFwXo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABECDC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 03:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770348233;
	bh=yv9p0nfkM5c6AM42lSlxb1IYksE9j5rcW8hocPA7INQ=;
	h=To:Subject:From:Date:From;
	b=UhtpFwXosFgrwqMdtthXZyp5qS6Q5SIDFRdSPcm8xFxWdTnRzTsJ0MJjNm6/XsgRw
	 6ZNFl2obICPVHqzVeWTluZNPldlIZGvkLx2vHAP82f3KVda4v/aMNiqN2FfO63/Wwg
	 7sh8E77/ZJAtthdLSkTR+3QETArLLuqCR7jHuu8V3Vm/v8uTRTVLwkESNaE9GXv8iD
	 xdYyC2aUsjCgje/qtGfNLRbQeBbfueXkGSmro4TtxrksqzUTFi8vCpdPqn+sQx9Bv5
	 408Knj0ykg2XYxuDoIVJXXanTuuv3mr77sYElhck4MRSTPjqgUK+dOv5vubYDnabEE
	 m2Ow7LvnOcz6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 944BDECD9BF
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 03:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177034823359.21526.7223796435277118047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ba4c5b1a6a964c8745633e59c3f224fbf1c23f304034ecc50da3355256e4bfb
Date: Fri, 06 Feb 2026 03:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770348233
