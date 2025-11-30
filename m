Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE1471A9B46
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 00:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764463374; cv=none; b=Y8Y0uZumbKRcQS+vYGBAEzO19nI6h9paK8u1XxsfCVOv7uTmEYFSJ/o6Wzs2l6SdVP4QRt86G9iTlqqMCLU65G6OhPlxS6+36yPiDByXLKNC0lr6J+m6/r/Erkl0+WU3O/+XUClRPSIE86ndfrl6I89V47ZF+I/c2eQxR2bfXVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764463374; c=relaxed/simple;
	bh=1CDO6yo6uOVbZncVpuwMZdSEwtSQg7uTFUgXz0JuFaY=;
	h=To:Subject:From:Message-Id:Date; b=AtuXcOwq4Y6W2rhhdz07tRwtYbZtrQU8bJo58MvGP8/3ohXAd1ozFYm2zvNchTzmxuuyKAKk9KJt2000J27SFdFTf5DXcwXGm1l1PQwcmkhI4p8WmZ0VpKV9SFIpAfKaOB+eQPakGCTe6Z8muwtv1hEmU3G8idUf745LNEzZP08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MNTlpkrX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MNTlpkrX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E99C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 00:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764463373;
	bh=1CDO6yo6uOVbZncVpuwMZdSEwtSQg7uTFUgXz0JuFaY=;
	h=To:Subject:From:Date:From;
	b=MNTlpkrXpVIOPQuLKiDxmJqM8y9jfCNha5MXN7bqPkoszrAEwleKWdB08sqZ6C5ln
	 XJnV9GicU7fWHdA9jWRSxPySEkT11pjFifYsKcSiNVZLW12KCcPTj7rSwtjQDmYviw
	 thSJPKDrzuERUEVZgoz1N9vN6hUq+tMOyFr64wu76uifkLvjYc4DFsstIZPbMEpAMY
	 eCAef/l2OyziSnodTpTqhmIWbjZFGAf71jbAaFOMdgHCE0xlRphi5FJtdBXbc9q5LR
	 qOLygv7cz9PanQWCT/HFyDh+jv2KoeTO8FLVP+487w4o1D6Cpm9fTU/eAfHwF5tyrG
	 CvpQsPFB6/eWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909DCCFD2F6
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 00:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176446337358.24461.3775277610082275704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14c6bf2f6244351fb8842228eca3f31d9b753754e210a2fdf512333c8b62255b
Date: Sun, 30 Nov 2025 00:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764463373
