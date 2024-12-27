Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3874A1FB3
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735320954; cv=none; b=Fb9PEv7eE3LIp+PMu21+NfMiZ+hjDA1lZec/wewyNf1OFchzQaZsscpSIFFEn0EYdpJ6gS1Plj50VsUwvc/GLN3vOLr4q5PV+UaoIazevTIH44TmO12Un/Yq487dRsdbGfJF+neIzidRmKyVPab8aAXIuOTraDuXUL8LADtmQpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735320954; c=relaxed/simple;
	bh=t0+1RB/uif7oKtks97Jp1syNFxlu0yEalz9VrsTxsNY=;
	h=To:Subject:From:Message-Id:Date; b=ECU599s+6yZ5pYU9UuPYtfiUgMwWENVbAKQIp291ulCV/XGCu5SW0n1vGZ78dOOC7hv7BO0JYrfn7TSZqAdVtmEy3C6gZPxBUqLW/QJj3wBHiBRqEdMGc/cCCEgkymwABa2yAYWUzptWMKH1zyVHaRN1XlLfaoYU+hw1nKgeihk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IHAlFUhL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IHAlFUhL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9699C4CED0
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735320953;
	bh=t0+1RB/uif7oKtks97Jp1syNFxlu0yEalz9VrsTxsNY=;
	h=To:Subject:From:Date:From;
	b=IHAlFUhLkYsPH9MY3ItzHQUkGKHwQjIEUQyXC9gnIfv24QYFAUwQ6nCuk2blI5b60
	 fvFgulGVMg975JtGyXOkpsLKqCQaFsaRU3ZQYH9tdjFrZucRMspytKBtn+si/D4Pcq
	 nLz3VOAFOXr3wfbdVYPuIm+LHLr7fP+GP7quOvw+are5O+GuTyXaE2Lzvj5fzvvIlc
	 PZ0b7KTL5uw6TTiw+FikLGv+rXRT0ukyLXoqf97wn8Iftdl/i67VZN+rqRc+6fQTjG
	 pmqWKBogVD3i6NWCqljvY8uxfTsn2CKaH9bk5LZuf4S6+3B49drOis9JYwPOPDnBBt
	 xan7nkoE2LRVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 996CDE7718B
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173532095359.29453.2814640278126134468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b131495ec7925641509919685f8bcaca9e6535ea52e7ad562fd7f71accdaba81
Date: Fri, 27 Dec 2024 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735320953
