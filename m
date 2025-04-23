Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41E3E1AA1D9
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745405994; cv=none; b=jn77nIFJZl2zvCTOnblPFyek8zPUR+cBgINwj88ISRUyC0VUbzHk5GfBcXyDPPlCGpGZQiH8KKpEyWtO3YQ37nGBcJocylVRN8uvXNDqpcCd9X4u5KEP9588SS8DtV458pj1U4Jve1aXXUi6wkq4inF2w6CwbaHN6SfRyMkxhXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745405994; c=relaxed/simple;
	bh=3WKjraillct2wq2MS0UCsy5daaOZF+IKaxO21OBm0QU=;
	h=To:Subject:From:Message-Id:Date; b=ekwLB4GUhAtWAmOaDfcx2THDe4vWsB7xRC4w+l0RROdOb+8rncsZwIat5KGK8tu1Ab+DqHOngu+lzYrf8X9M46qx+G+yImvGc9cUmnggpjaxC8bfoZwK7TTOG/YGXdZwLJoZK0di7LrHAwJ6suzsQFgcMno+qkKkVAheLivIyCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=foLPdGg8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="foLPdGg8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A107DC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745405993;
	bh=3WKjraillct2wq2MS0UCsy5daaOZF+IKaxO21OBm0QU=;
	h=To:Subject:From:Date:From;
	b=foLPdGg8Qk0DY480ZL2C+Xzcn07a13R0abOa3ikY3Wf0spV7/jiJYQijOPnFsVySj
	 qJWVKJfwvzq1Q93YNHFzR2cKdi7IpM59gfbECuUTJy6JnyfNOd3sjd0SaM3y55bEsb
	 DPv43nWH0GJN4cpf/0cjWBPa3UCd5RwSLFGN28psHhxsRjKEM3Fda6rG03NlDOQbbr
	 UdPBx7qPX7UhjTEoki+ZEzzCdbwqfWmb5V8jzj5o+rwtcjJ5jQuEsZTgKjv6LU9ocp
	 ZH92HpxTtTMt+r9V/CsjmqA/bG0JsbRTELMyHwxIPtU544J3VicrMCXuXHbg/0D+fu
	 /VhYmKgJmxNiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9DBC369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174540599357.21005.10077284427903154992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c1d71c49c3380de7d0682f9ca2c2f7f75a003dc8a3d225b05b7fd667a52ea8a
Date: Wed, 23 Apr 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745405993
