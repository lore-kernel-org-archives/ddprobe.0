Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A14E33F595
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 05:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779169234; cv=none; b=UV0T2R0Vwu/eZjNOPhQCzo4lyrcVk06hKRUxyHB7T18EuhEKqEBT8yIzjTtl0OqB7tDX2FhDz7Po8tvai+okDIcRTn+x0L1xtS221PPjsCqD3vWb5SPirm2ggWpNZ5XKo5C+Q0NVBOrHGCvVQk8LKH1LHmwV2nHZDXM7QDraaWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779169234; c=relaxed/simple;
	bh=vrCjZ+C2cMi09qG1ajVWSmwGxpZK7XFwbViqfkMX8QM=;
	h=To:Subject:From:Message-Id:Date; b=mpU60W97i2bmkBadqldTHdf6T3htM8PJ1iLhwn6rFBX3nCAQd+NbQFANCzYcM56Cx7+0zvAemRmXWqaXURqbbe/4f8rxRSpFRTSMY5aCb8LKP9SKkh+W3ZVFCbUuUrkTvISwA8OKbqjiAjtlXJI/uwexgEbFvxMzYh1zdMdnqn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eWy1fS+Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eWy1fS+Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD325C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779169233;
	bh=vrCjZ+C2cMi09qG1ajVWSmwGxpZK7XFwbViqfkMX8QM=;
	h=To:Subject:From:Date:From;
	b=eWy1fS+Qnyal8vvRh9/RIC6lDpLFeGGkbUbKeuX+YYFNm6cXTD88vfmbZTd75wKEZ
	 Bwrts409Ftv0x2J1hjjBZ/ShEPBtinwX03K7kMssJNWHksm5ab9QTIl3DkwIxZkzj+
	 10D9ogHJTqgi1DMVC9mcql7CZ51GCf6ZuZ9K8UatjbmuOfgx8CzoBCNHCiRb8gcy3a
	 kss1S+cVNAhd7xXhSN+2Nmb/CqcjrrHVWITVSWInetPdhFWPmm1zFftBnEKwgPybL5
	 +jNKA095fpAZdrD++H5n5ss9UXKT2SZInMLWGC230Af04aMUSp8OHdNwXBUE9g3F77
	 Iot5jcnoITjzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEB68CD4F3C
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177916923369.29343.11885017047201392043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d00d2e4790b5620e6f9c2cd2377cf9a466eee01f6f4fbee1171cc7bf995a4c5
Date: Tue, 19 May 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779169233
