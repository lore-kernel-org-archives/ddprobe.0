Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B17017C219
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738656354; cv=none; b=bddAbAJhx/FzzG2hD1y+MMekx4fSCzArXyCdKhwtfuse08zPES/n7X8Z9sI7b7UrpsLiaCYhxUnd67TGPGu0b2+6iWKbo52pFIfje6JZyrjfZJH4czftHaTB+L/mQwN5dqPj2W7OxsjWm0+Dtf2EpyDGqUQKnpNMhoSQit+LM5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738656354; c=relaxed/simple;
	bh=i+mDvcZs5Lr/NI/vBFL0nJijmR+sF3fkOgPeUqk7pcw=;
	h=To:Subject:From:Message-Id:Date; b=UKSEtsgf36fn8Sg/Z5ppFSLJZkFhNgxEHJAclkJKaDBqaH30y7yLfojcA48o9TDrp2uyzs1FxlPMq3EqiV1jxS7zQzB6TVmNGKps+ViqgBte2kbntj1DbkBpB+mMxjAJ5UIcLpuvbhdczfeWvF/9ySNyOlqX9YKo+VPtHq/u23A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LdzRhaGI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LdzRhaGI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A640DC4CEE3
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738656353;
	bh=i+mDvcZs5Lr/NI/vBFL0nJijmR+sF3fkOgPeUqk7pcw=;
	h=To:Subject:From:Date:From;
	b=LdzRhaGIsPSUV2DGruTElNX3b9+ZMwX6Wlu25u9RRyKPq0tsC+1ahOr447YuM5Xk7
	 8KKh7Mvz96+rQkbJGaDorSvoIuJXeEylgnpiCO3h2BdoOlk2CmqYiyBKJghRCZLJSR
	 gVWy06BeM9SYQFT/YNlVfmZIY1YUuIrltGF4aiBolJXW8WID2FVV6uOFlG462e1QJJ
	 gmtvwz2GMByAdy66/GgMVfYjQAuDhb/hgiaHCtxqVndYCMHj6JniBWkGby8DKtGFSR
	 4psX7vm6Air5pKc9rUtg4OS1mT7j8Ca3FiNNHmiBBTDD6asbFvCB7HtmY7RCaHCyOF
	 nBC1yA37hZgxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91432C0218F
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173865635358.15137.17853413398276707256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7381bacb3a2f5c59fdda8cf9f25319d18ec4c90b01b234c7cfde72cf043e2d91
Date: Tue, 04 Feb 2025 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738656353
