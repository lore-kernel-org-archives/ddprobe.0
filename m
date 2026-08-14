Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D70B030C37C
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 14:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786717234; cv=none; b=Epvb4kQ7aeQRuoeTaUt8q7OQNjx2jcVzWoKYrB9uev7ZFQpVnps+zRQZxFGCztCZIG6blEWGxahzPAqSxIEem5hvwfyCFwAzmXp7br67KT/C97ArW5SuvDdeNwEh6XyMyjJqIwuN1+VbBNj4KdeqTh62Utm0IkUlM52gPGf+SCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786717234; c=relaxed/simple;
	bh=72Cj4sDQ6HMWQsdLLRfGwwXUPm+e5DTgD3yqBnIuvY8=;
	h=To:Subject:From:Message-Id:Date; b=mBhraJnqaeN6JZJ2fpW+qseCIu27D3Ba5m1J4KYIfe/tpFJ2FE7HK5oMLnRC6DvdfvMoV3AM260bGJBPcrHQRrkE5NXKi/6HRzHbB9cz0ErCx3rgq/hLfsxuAEGhySkfYivho8eNbhY4AIPMyGgUR5u1uMvMJmWaiyxfbeARduM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mZYnhjyv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mZYnhjyv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC469C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786717233;
	bh=72Cj4sDQ6HMWQsdLLRfGwwXUPm+e5DTgD3yqBnIuvY8=;
	h=To:Subject:From:Date:From;
	b=mZYnhjyv6DpBZKFT8flutm2yOcQoiyLEXR1fB7zUVjO21CdaYdaF63/jvtW1OZy1e
	 c5kIAMHOFjQmr4Q8PoaZdnPojKSRh+/ImpKmvniKgRL7uCCGELYPK/8JCF52rJ0Qy7
	 miS2+DNFpbazoml1HzZGG+Ww8MsyK7T+GMEiT4VAyUYRlPURd8si98ZuspRAY/gGjI
	 +YwGTm8pAqCS603GZk/DuAoK5rYV7DVz13fif+YNeUKEIoj2qjqzs9kRUAGlXVI5bO
	 LFR53yzaPCQxD8fc4Bmv26QXNQDfhoZ+OT5VNchU7JsrINRtshUPbiCDIZRS7RieDn
	 HuFJF8gCFFYwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A929CC5CFC1
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178671723368.27272.18214364052435782165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2152b3f9ff3a0d558b43ba582daf663fd2a462d0029658059f220d622cced32f
Date: Fri, 14 Aug 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786717233
