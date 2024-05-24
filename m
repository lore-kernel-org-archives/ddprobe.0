Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DC10328B6
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 13:03:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716555803; cv=none; b=nbR/mL0Ntq9Bp1wIvXVvGabZQlqOov20Pclc4g8bppx6FHNvFa9Bqj3cgeBi9F2X9xaZeVLRTxu4EOTCH08RvA8+oWlTiGzZPrL0B1urRVgjOHedq8Eh/xhNkPLUK6s1sX4F3N2WWyC+T7zmccCzmy5/SdN+s4mHoFFmIgEWfr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716555803; c=relaxed/simple;
	bh=ZMwtfQmDq5dxdxKNap9xZtAPQUoyYeDHKZEqSdzLAJI=;
	h=To:Subject:From:Message-Id:Date; b=oJkp8Gb+70JXfQZs54SDhcfBRpk/LIjF7jU4iqqpNNYjv+8AzVBEDv9A3/Cm/Mz6D80ud7X/zkK3MoGLX72EPIZ4FXtdDgzN0YwkFMwGjmUqf5RS3RqF8aScu+Wweep8JODFiTfc8UJy2iBckAowEhRDkkhbrgy7XHDnzd/ha7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ORwj3TmZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ORwj3TmZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC95AC2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 13:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716555802;
	bh=ZMwtfQmDq5dxdxKNap9xZtAPQUoyYeDHKZEqSdzLAJI=;
	h=To:Subject:From:Date:From;
	b=ORwj3TmZmthtccsXMA8ToCgwU8ZNJXfuR7E1hN3RYaDhpOsLs56wwO8NTohbsGlGO
	 tzqTC5rfGtdS0JCuAn4kZPCKW7hJDzgAJI8ox2ydIyORTPOYf1TyXuGoVKidyeIhFy
	 +dwC2fe/eUgGUeVTAh4ReWqzl8h+iczvOv45tS7Rk75i8u8n/pwlMNlVOCuv1lDUFQ
	 F0UHqDhBhyqpSJ3bjO73trIeHy7urh1110iNy5BCF5G5nROS+fMVSQZ3sZOGHJKWvI
	 pS0tTCbJYXjYI5X5kkt5mmoVvn6Vy6OitxKPE+yRJyh0V16AKl3F/4x7K0NQ9D/EI1
	 SZKyqdnJtK2XQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB0CEC25B7A
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 13:03:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171655580275.1863.1461642472342392664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b704b6b30edb0b62c713c3168e67a921c2cc14c6add2fe2435254e34fec80b9
Date: Fri, 24 May 2024 13:03:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716555802
