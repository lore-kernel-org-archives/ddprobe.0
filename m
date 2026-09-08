Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AAFD35C1A1
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 04:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788840634; cv=none; b=awmVrndl+fAPtQq92VyYvDy6bstK9yppc3Hjm8rzC/7wmvbTMnnIpYU5TGBsKCqVPiz5xp+JBkJLiez3NGEhMiddVbg6W7uzdYMLKbVY7I95IMeeZwvT0fVx7p+PYXaZxy35bynTA7EKib/+AQrFgWfD/lyTmGhQmUz90I4GBIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788840634; c=relaxed/simple;
	bh=DsujxuJwJS3gXpSqnKjcdMobs6J+GhKVnkQxkYY/nhw=;
	h=To:Subject:From:Message-Id:Date; b=MPmzgVWBc5e7876zal6Ku3BaZv8h+RMqUPeZGg3vab0wT6fMoP3fmzoIDdyB/fMBYD4ZN9B61m9mh8Y4UDSG/u3rP15Bpa/YzUV9VL4YytwZQ5H21GVI2dvnGhoNoZ9N3SA9GtH9kS02hmFD/RNSJdzdPABwcGX3kZMZ20s6IFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sHgX9wFo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sHgX9wFo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D198AC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788840633;
	bh=DsujxuJwJS3gXpSqnKjcdMobs6J+GhKVnkQxkYY/nhw=;
	h=To:Subject:From:Date:From;
	b=sHgX9wFortyDPUuewTdy9YzeLuJ8L3BQ3AOrzUNS1sd/mqg+7blKgCNaNstLqZZ0h
	 rlhwIakzxXxa/0Z823gYMYn7kj2yprtQWcj8+3P3MSGO/Uv3VI/TPJURGsSKg0Gxma
	 Z+fdmUp2vF2Pj1qF76ydwiF4/sIoZBPT2H9xfDSiurwtUCR+52KiJxmav71R0YvqGV
	 J8aubQn8s0gWptcln5AyuOHCH5uDdy+kI54e5WuzbFv/eiCUNvo3ubky+b3nKTPJUn
	 mORh01dURnRFPuixJayG//s5MBjwiqrIsH29Z5osZDCp3knRnK7QQlUQhA0/J/bGbA
	 qFTinRGkzSelA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE6A3C79F82
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178884063370.30429.460606820032995074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0142238c2879a87c641ddcf2ed6293aecc63a0d03f40af08d0ce2494fc77a9f
Date: Tue, 08 Sep 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788840633
