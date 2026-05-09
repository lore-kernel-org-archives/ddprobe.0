Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8B8A4A3E
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 19:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778353654; cv=none; b=uiqBvRR5fDRBYcP+4ZW3DC2BB200bNCb8DzMKMqLTh0cFJQlG+hQ9i6TUXu2CsLBdq4P++3GO0ThhdgMUS1gmmihE/nwiSrKruEQVT3kxAj6Mu/5WMOuUjyQ7banfYH1O+bXNvnpdY+vBju/RI06AnIl8geHOgq7CnGKLRY5Wxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778353654; c=relaxed/simple;
	bh=yeSUynwCwHsHRFlWKgaYiTaE1Q3RHIcN1jHuGI9CGoI=;
	h=To:Subject:From:Message-Id:Date; b=ijRehRqWSDniGqUtkwGXqJaapvkLYhy7XDE1HGLNy63yPSdMxNIPrOp8jPz16c8WLAM1pN1LkM0oTp39ob7CTQXvYMkgLRLU1beaiZ0bylW4fDiLpjzm3QYkP8/OuqnvE8+B8w3+ekhvXLNOE0uqohKYVyZjQ0lltTewbRIq84A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=esCy6knv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="esCy6knv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 4FE57C2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 19:07:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778353654;
	bh=yeSUynwCwHsHRFlWKgaYiTaE1Q3RHIcN1jHuGI9CGoI=;
	h=To:Subject:From:Date:From;
	b=esCy6knvwTezgAFfIKC9fyVlyLRi4XYjBWfD87RYn6iw711AtbW2pI+O6V7wteWNG
	 k67cWVGR6C7e5buMI+3BRiMxvBG3Bv4EpxQUhEbtIqGXnRZral+cDVspZw4dvrnnmu
	 BZD/x2OuHoczw/5kfRNTgTOOid70WZkxiIPh3SFFJ4zB6J0fqlk98BOHtFj50Ff/5u
	 RcAmcTbdZFEdnuPZqQSUMEGq8hoziREBwLBYCtjrrnexVvHKQc5NqywejPtc4dnhLp
	 C9S3SvXd+eIUnRL24wB+y+r5ehFEllglOzu5cByvczgK3x8wLG8M0/HucNgwvwXAeE
	 bR6Ar4zRJLsmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F046ACD3447
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 19:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177835365393.19395.3112190250332012069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6bea2fd39d3e5b64b6cc124b75e53ca7a7513e8ff0195f769981c7710f1b112
Date: Sat, 09 May 2026 19:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778353653
