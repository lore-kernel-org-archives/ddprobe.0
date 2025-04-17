Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFD441CDFC1
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744867193; cv=none; b=lPcVbj4BJ3svsHW0hrIof2PRFyVyUL5wudZpdaCRX07dIT0/b57wujnMMlorcFFPrqBKluK2edqJNhihYzzVnKUhgaUI/wJhtz63MX/fmyIs8iQqKrpzSPG+weo71MW9cX5sK/HKsBidcb8rjtSp2Zv+ZFO+UDwvMGnVt93smS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744867193; c=relaxed/simple;
	bh=LcUIG/R3t+K9y8ujFKw4FscfD3ftajIgzpFywYdmtDs=;
	h=To:Subject:From:Message-Id:Date; b=XD6nzCiV/kXI6qdMvH0v9H0n8ErUT7qJNlySRxplNRRQX/SPIevzmcWMBCQ08fH9l6uwxQWIAkB0FAfQiOY34V3dbj+UR3OwOl8Wwr/Xoh9x9gt0cmrXYbyqTmuPErDtOwkWJNZWERhTCSFfgy8C7CuupGGm5LGy+LOcJ/f8Zzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hgf1k+EF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hgf1k+EF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7373C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744867193;
	bh=LcUIG/R3t+K9y8ujFKw4FscfD3ftajIgzpFywYdmtDs=;
	h=To:Subject:From:Date:From;
	b=hgf1k+EFtMVa/PP/UVyf918Mouo/mxeXZho4BAfuoQUcXpuoiYiV9HX3s/oVgvJob
	 QH2Hy5Dq5KtIaEuJ0/OmIMzaSWsVVNfaJH534+V0o9LdF0v0z+ruvhmnsfRQ1z80Qz
	 HfyTUDHxr9wD3vsFdkx+kcgQkgKw2l6bE52P63cMKl4VnuT+oE7+z/itNHnXhK7Az9
	 SlMt92/UnBR83kQ5uVjav/94PQLd5xVeGUEBH5syt85JoFjHqvi4e5qGlk0Ljh6tI1
	 Hyu/V3GVGkZKoojXHHYEob3+nOMTXHy4YjEc1M9x/oa8IXQpyG8KPOuyeGKU3cwcQR
	 jq++xY0Jwtn4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DC7C369B2
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174486719359.30131.13217380321322691142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59a63fc905d12382de636c6f04be3e94bcaeb608f94d8fd4f1003f313051ea54
Date: Thu, 17 Apr 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744867193
