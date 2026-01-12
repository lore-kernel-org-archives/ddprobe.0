Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12D2530E84F
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 14:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768227234; cv=none; b=r8h/kPlDdIP19b0l07pUUEZhdQKHHmNEZ2KZjJFtNhztrvMMODrpENdfidV3NwkOrm2hx1y2I0Qbn4OAJBplNaAS1uvAvAY41XeF21oxIgTX1Gu7SuVNgaXgKsRAd3v0kn8lnnoc7ejHs/NGL0pcLJYHaP0s2sxyvd7yauruqb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768227234; c=relaxed/simple;
	bh=toR6ITiRJTuI8TrHXVEG6nhRfbU+FKXlUCdWDi5a4ZU=;
	h=To:Subject:From:Message-Id:Date; b=MlJAYUaKTh1cUw7vyrXEVpRSH1GcqCofpP6UaO8lQyHNS8m6EOzjpxSoFcbK4SpdGP2ziociWaHbekjQHGB/SoKP2TpHsV3mUzV7CFzmIYtYaUNCYtI6joksJsA8AVCY3HRI2/rFcakDpbASzRnRqpdWGL8TBrAuxQfSfXNPw4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AeTNThN+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AeTNThN+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EEC6C16AAE
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 14:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768227233;
	bh=toR6ITiRJTuI8TrHXVEG6nhRfbU+FKXlUCdWDi5a4ZU=;
	h=To:Subject:From:Date:From;
	b=AeTNThN+iI6oCZVZYyXIyNBlYigcLw8VsfSPOBNO8yKnPLYQ7a9s/vW/fuDG3q3DV
	 4xS6B7zgeG8kr3iwuMMUiZTY6AWjHMTv2zG8LdPVl9mlfmvuVbs171iX049B0AKqkp
	 Bss00KX/DlpN9Bl8c1vsljy1JYP5+yCcQD14KKxcO8TUzXEsLDzW7xuHmKG0kZhriq
	 zc2N7UpB9E3XMSZ+GQa54t8bHR7v8cIzFgyIw/nTCQWjj6ybscQ7O2FQL6PRghPOJi
	 MAAuzGBe4x4MVe9rPeulHg4ikMr7IvbcyGnbv4ZbErvyCuQGeLjp3fWIbBgWGfalzz
	 XuhjloLA7tHlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90194C9EC8D
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 14:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176822723358.6612.16788621393786307861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66e97cc1895c477603b3152c794c2f0685a18946c6533d0cbae5b6de52bff505
Date: Mon, 12 Jan 2026 14:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768227233
