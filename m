Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F0E034C989
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 14:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768226634; cv=none; b=q7ucGJJxt0dMDdblcNXX0853n5YrkEywGc+C4qMxbS0skLN+5b2AS5JjnbcQIygxwKE6jxSSJWlKVnbCb+Z1/QcMOfdmz352hGUYpcPCPFwyHQlOn1gHqAKIAN2urlwJuRk1FOxyBzBzW4UIqgunmf/TBh08eSPxNUJudokAUYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768226634; c=relaxed/simple;
	bh=mWWLjHRv//4vNUMyznLhCjpUbmaBKgBdtlJ5jACnu4o=;
	h=To:Subject:From:Message-Id:Date; b=QwXzZi6m6oke8ACwO7IdLd8VM24rIw2mbk2bzD1tGx5u8dZA3ukTtOnJcb3D79oZRHXvl4MalIfBBik0atZ1vJ95KTKhGQgjCwmdc1HbVQOlL1PiXrdbZL1Snz2XIhNe/L3UIuhYbAz/gOwj8L/ptnXzlg6hTjYy2YDCqubOE44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fktki/15; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fktki/15"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CC9C16AAE
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 14:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768226633;
	bh=mWWLjHRv//4vNUMyznLhCjpUbmaBKgBdtlJ5jACnu4o=;
	h=To:Subject:From:Date:From;
	b=fktki/15Lm/zuusCO5inAtGpMJaYN0yyfFXEP21ly+NXKEF842XI/9+iV4rtClCYy
	 t2QODXKGqqiTo2XRdvGQ3u7PNVstDRnJgfr1iu6lqaCoctCGTrxe4G5Am/rA0bSsFh
	 ZUV0lnlSBw+CwZtDhfTdKckthF3nyPsrwrv8A4pI4dMaEEKSHxB3aTQQYWYF266YF7
	 qsRLH1K51W5+ptzq308Q6VNFOk8q94WzphegWfFR2f2AwiDM3PkBmX5qNp9BedeBoQ
	 fg3np5yg86cD2rw0bacY9Tl/6r95nCE93I+yJq0tc3ntD2v9bBlFyX5rzvZXcxdm9A
	 ts0jt3D9wXKaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919E2C9EC93
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 14:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176822663358.4585.15758607106756943316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fde094827b84f7bee82c7dd11a56995c6824629910f7548b9f67e5ddfb9de63
Date: Mon, 12 Jan 2026 14:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768226633
