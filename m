Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B56D247281
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757500194; cv=none; b=f1baVv6d0qSrNhZY/gC78a2VXnCcCvODsNTxTNQJmxH7JAlriB1FAQ8SdNYoRCYJUb4yxGZW4ybf3TK9N593NahEGsJh3sVmre1aiJkC+vrlmj+eoJ7nKF/oiXaypLpWJ5nqzg0cHR41ZYZILHM0cESgBZZ/xhyrd/Uksjon2Q0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757500194; c=relaxed/simple;
	bh=tHJWrN5MV0p3cjI1rbXEEDYgNfD9mdoA0Eu2b0D/+XY=;
	h=To:Subject:From:Message-Id:Date; b=M7kGVWhZ7RIEWIP0F0kpnjPvPzesBA3IAWm4CPIBgsr4mBj9hv5hKYshsndFtdD29iV/o0et5UVrkrPbhQt5WRCVZ+hRelNaNX2/eKDwC2azH8UtBHN5MWCp/5x0X/bb3DGKVF5/exDF1b56LeoFf6o6DpN8JIeV5NxHJOXq1bY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mYHo95fn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mYHo95fn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E723C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757500193;
	bh=tHJWrN5MV0p3cjI1rbXEEDYgNfD9mdoA0Eu2b0D/+XY=;
	h=To:Subject:From:Date:From;
	b=mYHo95fnRQz9WF3lj8SsBioa87GfJwtFsKSc7+X6uHdzamZ6WPlLWZSOZt4CRiZoE
	 ZCkU0diVoijrVkW/E/qcaqNP2fT+PTJDb+MJdakySJD9fLhjhVkEQ/J1AMea3XNIWs
	 mDGuAYmDY8U0tGavDZA1DgiV+/47maVbObwgGN2gPNBAUIh2keNNgZ3SqO1b2hqNqy
	 fwGybUKtuO05CkLHh7c7wQqgJtqHMSSlWWCO/OuiGpTfEc01/jbtAvHDW9Q2b8gfzm
	 KdbZokfm/ikBpy8ijF7qGMEMZu1DVECIjGmU1zQ6n55GY2cobeh3FKw12qGto9gDNc
	 oYfcSbYJco1SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC16CA101F
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175750019357.19523.15929607199070703438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1fa7503e2c7a847866b9ebdc5fff5a7f26bb0e17e62f662c6ba485eadf20f05
Date: Wed, 10 Sep 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757500193
