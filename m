Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59ECD6AC0
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 10:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721124323; cv=none; b=ljudPNIs3+C3KspwI7InNou6UJA5D6ZmcOJKCkqiuVqhFm8rspllt10qORopCWjRWRsapIiCOWTOT1oOQnStnOONxSZHeeQmpBCBmSGH7iRfSVqC95xBRAmXi19KwBPnuTWkzLrv3w/leK29S9u1gdyMQFb1gJQW9IS0fBdclvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721124323; c=relaxed/simple;
	bh=tUjk67rLxCfn65emUrJ4Gswn/2Eia8P+GcPqzk8chio=;
	h=To:Subject:From:Message-Id:Date; b=Jqi1lJxW9iK8rSkuCqhjdTxstCQG4GQpTw6Y1MRIBW6nIQH23IRDXJArKG9k4Au2/clllQ7ZPdCNLrUDv7JSEzrtXi2M11l6VOLKcQ+xr3S+DCkwDNrVVBVdfmZFgGinWERWwTs413tdc0Eu2flK8dZy+Y05jhDduJGIEkzwU6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MqTifIPr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MqTifIPr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD518C116B1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 10:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721124322;
	bh=tUjk67rLxCfn65emUrJ4Gswn/2Eia8P+GcPqzk8chio=;
	h=To:Subject:From:Date:From;
	b=MqTifIPrZoenMyVqgwD8VazcygsvbHTYie+R51GnIhy+gZQphff6uxitRMIHtxgly
	 tf9/Zicg4M6LxtMFByoqfNMzvuaEYstZhau+zCTFKOAwjSvVpJOI+mhGGYhr31iNF8
	 Dj4H2Bj7HTyvKUXku4+RmlrKIyOyNZmSF4/TV9lgr0LdbdNT3iaQTb9RGrk38F5Kgz
	 iQp0bhhKD1TDRnWUibHVFVtboqqmODl4b0oBM350K4k2LjRijJEF2UeNB2PAsB4N0F
	 SccsIlbzCN7SmDCkI7tbcBv7gzvwMQlGf/ZAPDYi9pU/8bh0L1Lu/O5a+d3JD8OFJk
	 3g+21FIAZ9NIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2768C3DA59
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 10:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172112432278.3216.992048210018384665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b9c2e60447788a0332382b8e70f2101c668a3caf51226bd8579274276eae49d
Date: Tue, 16 Jul 2024 10:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721124322
