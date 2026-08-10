Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 398703939D2
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 06:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786344034; cv=none; b=a8ZS/h/LfQ4+B6IMsNUsXZxlWB7ijyI7ZYnb34NyB2wEgPIPCPXJSKbX+sy2YSkW9sPNJq+RL/Ahq8hTHum/0srRAydnoIllsQcf6VxtXi3iKydySd2VCA0QZwvocyudCoYkEu2GHumAOVIAe0hhytyPE3VcL2AQr0IgzYXUWNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786344034; c=relaxed/simple;
	bh=v/Hce829SZepOoRka5mNJqrF48z23KVxwaORL4yqRLM=;
	h=To:Subject:From:Message-Id:Date; b=fcR1Ggw+s9ICN1cPCJUT/n4ow848SD8NqakIGeVVEBU0StwQalS8gI5+sioGkuIBua0okXP/7pdPPWMwieWJOuswlaT3FG5yfUm0yYw4yRVxH6p9o1f3rK6sq7RqfAhBdw5eNT2xof7yQmuVSI5xPxKRtukpkFzeXRnkyfSlXek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rM6j1aoa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rM6j1aoa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1689C19425
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786344033;
	bh=v/Hce829SZepOoRka5mNJqrF48z23KVxwaORL4yqRLM=;
	h=To:Subject:From:Date:From;
	b=rM6j1aoa/jzFq3rUODY1KeBc/xWwqgYXVmLo0oKWugULkofptmdJDVFNAzeeefQEF
	 YRGVVFSMJRZhoSRqGMmE2rd/orlG+9M/qX7ayBz0rIicRhgUeTDOmnMHlGD3kcJUbV
	 infcINAAJir+cctTpM4PXuVmvNpOsl4dIWJEP281DgdDw/RlzUiuRnc9sl4OOWv05Y
	 xCI8irNuYODXKIK72WxKv+nk6yhVhPN+8I0puZ9HAAA13O2wxdc6FXER2MGVZwThHz
	 4zm3h7iQqLEwkNvtOw7J/xxx5geX33P2QJX8JYuv/NKjYJR4tlbE+aCugIC02cuRzo
	 uLU+UhcmWKy0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD09C5AC82
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178634403369.5302.6947907385539129085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51d7f9c660752ec353ebbfc59373a9d358b852fdaaf3bc03a7663f6b9e1e9fae
Date: Mon, 10 Aug 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786344033
