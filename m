Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EB792FE29
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 23:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716680063; cv=none; b=MpqQm6zUDgOsq6JOgMox6WUTw30YDVB6Ert4/glYBdxKtjk2tIWHqshg/y2mn4b3enWmxt4gnnFu02KipyzI538fuxJP02KUgwCBVzRtGid7RqpfKlrR2Woaj7/raWREAjwhMgBWIRAMebUVwcLgwLjn2/S3mWiVmPAnzevHJEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716680063; c=relaxed/simple;
	bh=bGgq1NHI42WIEEBM/LVFhGPXY7p3gO/tweEunYRd0yk=;
	h=To:Subject:From:Message-Id:Date; b=GgMnlnALs9bhWhkuwcnJZaiEJefvlHMN1fjVp+2oqOwZBz/zRMY/4iPhEX6TtEqzUUnygqPtQ53o/sWnvKgkbXD3sAj2RQcuTIbpSqs3Zqmch0SJMaTzmFGUVzM6nkoqLYOclTz961X8pbnjPazMC+GBGFPeNW0PcSPxDHlAQ2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HVDd7I9L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HVDd7I9L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9DA1C2BD11
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 23:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716680062;
	bh=bGgq1NHI42WIEEBM/LVFhGPXY7p3gO/tweEunYRd0yk=;
	h=To:Subject:From:Date:From;
	b=HVDd7I9L6pDVoYqac+WXy0mcmFw6lrZnzcVPUJaHa4B6Rdf6OYylXQMp1oG77uoDb
	 rPluGzP5NmuUpGqIOiqpui/f5oV2+dUkTfRyX2U8r+hZcj6HuJ3ZujJ62S/gxcP84o
	 +DBU6nOMie5fTEXbL1E01wXb1rkLV1mcs4Fvj9/lRmI+45rqHMckzSuvOvpgut5O2l
	 qWA+ZkIeWZ+L1KKX0k1CP195vxQp5ORg5xi8ef1NIOr/r0dwBGswXf1Gf6wd/lKOzu
	 7a92CIUdCvmvQYRi+iZu491fCaRlGkmLLMkseouWfMFTN5ZiRU8Rg7AOGdKj95LrAF
	 +uc1qt+gR7VUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C55B6C25B78
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 23:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171668006277.981.3581823888394363386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c8bb59d5bfa3458d08d3a9fa418ac6522a484536cc24783cefb61834db95543
Date: Sat, 25 May 2024 23:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716680062
