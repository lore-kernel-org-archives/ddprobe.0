Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34850363C75
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 18:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768932234; cv=none; b=bKC1vdjJi1IAU51fncGq89gUnzf6p7WxJXVfSu6VEy/jMT3Ck9It5RcLTjUAWWjAcZBDH2k8ZsGt0dj7WS7SuC9D5SvjPzqXLc/W2pNt3KCZ6s6WCyXgN4JW0pqEKISVh3rLeYWQgpc9xdngX7I8r1xyAI+bb6cZ3GYIWt0Kg0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768932234; c=relaxed/simple;
	bh=H+BHOYEAdASI1dbIseUUKy0OgjCnA/eEOZ7AMnOr728=;
	h=To:Subject:From:Message-Id:Date; b=Xu95l+iIKx7jgkEBTabOMo82Ky1/Zql1COoovMgcM17mwOeAYV+guVV6r6n75P/rQQpLhy1aWndQIfMM/MypSBduUwnT1JLVccFRN+iXcF+sOk7E+Lc0H5avYZ9nXGRRyGxqxeT+1HOX1BGdwNpIN4WmvFNa+9FfUvlbYUxwKMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hxDXsBW6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hxDXsBW6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE88C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 18:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768932233;
	bh=H+BHOYEAdASI1dbIseUUKy0OgjCnA/eEOZ7AMnOr728=;
	h=To:Subject:From:Date:From;
	b=hxDXsBW6u8VhDrORnlmFs4i0ebMowy+xv7p0wrK2SRfM5LIdCbUKWwkfIzB+5vqC0
	 qOrGCCapYYhGIKbTWPv7uil0T5xDFfPqXSvcN72gG/OPA32Xke/pMJ/Ve3LR10CQAr
	 5XAivCDMuBTNg4WFgci59P/rUniV3qT3jcdxOPQGdr32ZGa4Jqb9rs/eMMXFcRG3Sx
	 78+CytL9oGa9Ty4JaI5Y5p8xbxVlnSEpI/QbcPfzI2tztKrlneJmq39Q+ifL1tnCD6
	 v9VUUhhIMVwjC2EAJSZK0pLAw32qRaskhlHagFkn9xWmrhFd5L8DjZkF1i1M1siEMk
	 NIQAfXHBx7wqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909D5CA5FB8
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 18:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176893223358.27460.15584794039406086484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28b2efbcf329bccb21359cfa0a298de5fb253928af419f0d37c7fc7d0d0076f5
Date: Tue, 20 Jan 2026 18:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768932233
