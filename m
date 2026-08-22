Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8C3F3B442F
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 08:20:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787386836; cv=none; b=te2ucJiO5B8ntjkwkHaRT8fvGFPcYYckV9PqwxBKIes6xW3OQ0ScFjR9/TmzQTK1zklXosuBaAYcd+urVVhl+YO/eO+v4of2ICt73rTvY5rJHbyD4gKOaUvIRYjk/Oh6K5zZ/BGImsfpmlJlFfK8TzzVLlALK6YaPP9qaNwHAqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787386836; c=relaxed/simple;
	bh=jh78QKxS2UOl2X/nEkZa3XJDJprVIrEC3hg8Uv865BI=;
	h=To:Subject:From:Message-Id:Date; b=a6fSVRvHui6ZIG20Own8wDoqugcCJjM41/0HTX5pp/LCNnkVAc1zyesdZtUBhyfz1aTJEQ4M5O1D+pfQmhG9WkR3Az+fFUX83IpntHqI4mUECCmyD+UrDCmXJ9g0m0l4oRBt8PZnWjAnufvsCrF5pNtEsfi3YjrnHbdGm764TGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bVb30dsU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bVb30dsU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1037C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787386833;
	bh=jh78QKxS2UOl2X/nEkZa3XJDJprVIrEC3hg8Uv865BI=;
	h=To:Subject:From:Date:From;
	b=bVb30dsUDzd5EmJ/f5SLfRrLe8h9HPTbeCWYdiFb7OISO/qzRu9O0NblIcEd1FPVe
	 3kdjlhPl0gi4Iw0q3i9WLbRv9WgN/i6XZS/iZKuf0YzQ8UKMY3X4vOXlpJbg4Nx2OV
	 ulFKpUpvCFGq3gJGLkK784hWlIN4cD6wUKrMUxVJ9uqcWmT0xa8MaAV3/6d11eXEhP
	 ovlnaaMZqoTvhEOBTyPgosGgus32FjRZoIVUeen434TqeAM93xByfsi8flgBIqSXAM
	 bmt3ps6nsghKDN+rNjxDkDbHBtaEZyIIn+da8CnAiZukB9uWUUD1/KB21viXspJVG8
	 8I3pIXI/0F8ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB54FC5DF8C
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178738683369.16406.14361037993635959015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45ba8e453df01e516555f000e3d04faaff4ab1999643e59af60b11d0482f922e
Date: Sat, 22 Aug 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787386833
