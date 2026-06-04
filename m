Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 472E242B72C
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 13:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780579474; cv=none; b=N+TWYl0lPB++ejoV2iQRc3pd3Wd9WI7PtPUXVy5NVgWFL7O6HAXWAv4IHlusQp0C4B3crtyXktXYNQrrlH2DwK5ZQc555bN+UvD9ujKC43GmHPCupc2jJbYi6QnFk/Cwcw7AIWIpmlAXAWhHzreSQY0P3YTUvfm3BYSRZj0dQRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780579474; c=relaxed/simple;
	bh=Cer7kChe2uQWEsSudpYLwGs/C9F8b5VrpDFI5Ui2/rA=;
	h=To:Subject:From:Message-Id:Date; b=YDI5+V979u4FYuUiCMFkG9J1Wmh2UeuUlGjfFaW0t2aUdoeQduXaInQax6UotACjDWSI6KBRahPZtggZZdBGs9eBk6fw3p95UWDHozkFDpEDAg1V74W869T8vKi4R65uhV0Wkty1dAURttLfw3aq9+lWJxoz886Z/1rZaQTVvW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sVtXUolb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sVtXUolb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1786C2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 13:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780579473;
	bh=Cer7kChe2uQWEsSudpYLwGs/C9F8b5VrpDFI5Ui2/rA=;
	h=To:Subject:From:Date:From;
	b=sVtXUolbnp2C/2m/0Md6ppmoT9N7GcGQrauPvagLPP/EDorMDOtldV6pxCa6kV7qP
	 SRgJtEitS3t5uvykJLY9s09m+l2NmkKIqHANGXCCoUjb906QKre+MBo8CWdyIiB6Lx
	 bt0H707y/NjyO3tE1Gxqj2OYq3ze8nPwgrUpJqn1n/k1zT8gBtyumG56b0NI3+OhrR
	 OoUgXcSBfUhvkBkde47PhodMZ7PuqISsqBEYdnnvuckF7itGaq+NKpShQiwWD5zQVw
	 J41KYZka9iYgV4d6GjeKIpOaM3/vH+ARSeyFi5mYY/nIxGNFHgJqxRNA/6V129+ESW
	 e2ozrcueYuw1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA19BCD6E6B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 13:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178057947368.28112.11191006730113443145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b97d47000357faa712354d4631a73856eae40880adfb61b08721d20b2d41f73
Date: Thu, 04 Jun 2026 13:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780579473
