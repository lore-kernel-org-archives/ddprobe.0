Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E9DC1FC8
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 00:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765066374; cv=none; b=S66abRqbPWSWxPZueGAS0Kq2/OwBbh1p0S9XChh796UqWRmmcIDtN+q7LxREA60n0Ky/9WO16ucXQsGZYCnzx2OZVDbinkphFWuM7gBO9ty2fDoX3ihTmSB168W+92686U9rQAWXWYKwIO9rcHexvz78+XAS9jRoBnckoP+Bjk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765066374; c=relaxed/simple;
	bh=kiJu2jHicdvpKDFgzeFq0ZV5Ei37TuECcRD45tiMnSY=;
	h=To:Subject:From:Message-Id:Date; b=FF1DaQMaIRaMJ9kr8QN04jMeMrn3sTdy5RlwwvKmEWx6KPoiVQINl5kvZbjKKJAqVzKPavKeCeo82j3FUbqbEx+0JdxoVGfTJQ0xV4k3xYaCjKxiv0Rmb29dB3X7EX6ieoaq7BcHm2H+Ep+wDQs3nxl4vq7QicVCvkNk/A9fN+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tmvsmkil; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tmvsmkil"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A623FC4CEF5
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 00:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765066373;
	bh=kiJu2jHicdvpKDFgzeFq0ZV5Ei37TuECcRD45tiMnSY=;
	h=To:Subject:From:Date:From;
	b=tmvsmkilTHfj/5An09mRHRSzBzDe/YTR0u8Df0e4dlsB00+HZFnk2ih1XuAWD9CGo
	 lfrCNuWx0uwHuQagpUOPEcJRvA6IqjwuMP+yZY21K60v0LQfEwMEvXNNX6Iqmb2lQP
	 Ykk90vi4SH1Bw67q2oUTt0dB2cv2CSmDEpx5cbWbPoC7+x3n7Vxwn8Nd9mMNUFOtRV
	 EmOhQnbF/xZvC+JxD3lbTm6SuUhhnVQvq5EmRIPOLGDrF8Qplu4X4ZhWkJ3fhio/jx
	 3dfyaYfY0u38yjpdNrlzjs5OE31uwKhDAms+sB/AO/D7QOVpRZQV6z5obPcg68o6wq
	 sNazTFn9bt1GA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97288D3B7E1
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 00:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176506637358.22905.931345746128808895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f21759f2509745fd9316886a3d827c8bb35357ee8be786cf5ba65394dfa1b5f0
Date: Sun, 07 Dec 2025 00:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765066373
