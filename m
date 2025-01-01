Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 393983207
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 03:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735701954; cv=none; b=AQRrGsonagTdC9wPS+Mb2GUzgoeoeaockUY2bfhazon7s+DOBZ8c2PZ67dmdac67jhabLGFCUvp5AxS9madrs7Z+ao447KQ3hfb9hJoa9vWygIkQX2HCR8epZJEPtqPXei8GsT5w/GUmNLkDdWqntgea+WXsl17FlmhrmDvbJ2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735701954; c=relaxed/simple;
	bh=k1Ht7qp+lGdDx0g8EHRxUg5PSL/qWwAgrOOm3qrLty8=;
	h=To:Subject:From:Message-Id:Date; b=EpJqwBQVtPRWJZLxnTJAPsInLQL30byhiNbrlStTppI7AF0X/bH7RQ/dCnuqQm6Fo2lyWzF0hX9VPY+Qn5rhlo2+iETPN2YQP/5WtU1lq6yvE9eSBUb+6ywcPlOb6+/D0ev0i6hhUAkJvSx4SK86ICH1pX/AoFhD9ZRJSYK5oys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pMNkk7+X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pMNkk7+X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0B49C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 03:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735701953;
	bh=k1Ht7qp+lGdDx0g8EHRxUg5PSL/qWwAgrOOm3qrLty8=;
	h=To:Subject:From:Date:From;
	b=pMNkk7+XD8by3SjpQtE3NSQe3CW7Y+OCDPuQ8eCAV45whfec3QbnQGBxm9EXImhGq
	 /d4p1GBjuzYUhqvOHNIPsKbCe5vyCZh66NRVh1Z2snYimeVJgrwNG+swsraDHdZOqJ
	 mFRWFDIocHd/WN6TWzdswTRoCM3Wauj1XHgOD5olD4+W8bkgU2ux0d2wZeUYJvuxUh
	 6dT5uxhfisfBwzQNBGhcQeMygcqSzidSal2cTDcEqdzuOgCHCT6cgEVJEnc9MZRPT1
	 mZwECw4QXt8VDcvdMmdMess07ptaZDT0m+a2Ji/5V7IKG8ke9AmKcWKipfhDJkdDo5
	 c8Js1FcmIcnQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B9FE7718B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 03:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173570195358.13550.15753081626716738652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65e67968b1b706f25dd89706ddc6378d44bc30c898d6f444438745ffba69d7e8
Date: Wed, 01 Jan 2025 03:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735701953
