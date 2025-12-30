Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10588EAE7
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 00:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767053034; cv=none; b=EyfZ/2bwZgpab1mUBbA/RGUWSL6DWk5gNoGVtzyuvUQjdXIiJB/gLDimiaBofMlRI0Mxbaj1p6lO3AtMBJHaxwLbQWT7oO5laUcQQ5xnq6w0j4q9oElPnwSmM8rWSx7Rrd7FWfF8o7WmV0qtSrWWohM3fzUKXWKfgQhi8fCUxZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767053034; c=relaxed/simple;
	bh=VYOj7A5l8X627kFdSb58uIONkXauPQQS4YuWIGpAXM0=;
	h=To:Subject:From:Message-Id:Date; b=Nouv8unbath1AXqvALC2aaZ+2MTDXTXPBTpJtEtVSP/szXWSjzU+naM06LnYzZNGU272H3GXBQYLFJ54yyqAdxTdVbi8eRcdZWkjSGJz1GEN9tAjb/zFpf8U0ea9+6Lks4+t1fh+QrxEnNEWqB7gtx/Rshje4XuPh5E6Bic3vKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O46NfoMd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O46NfoMd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BBEC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 00:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767053033;
	bh=VYOj7A5l8X627kFdSb58uIONkXauPQQS4YuWIGpAXM0=;
	h=To:Subject:From:Date:From;
	b=O46NfoMda1t8IIZ137vXsMcRx8hl0wNaRN12BHRD0DKCU02u62TSvk8Ezw+yQoMl/
	 j0Cu4Bb9J+b0Fgook9SR1CXvrVneuzF5n6pkb+UTedn8WscN6LOjcmUrl8Grt6OTcY
	 5nZCpBieO9c00DQhOuZC9jBXvLwpaz4rBjReVwGxqnsbXMmU/rTb71NMos+LkUHoqo
	 XHZ0KgtzzMVCmH4H5YAazRTRVXR2wLYRxgROj7NWxFt4Wcp7r8b2brVmusQhga/P9C
	 8L0ZMbFDgPHUttzDfj0Sr5S9Xy8oysR0F9Zd/nwMCMiSLzBS4LBJQ3xCH/OFK31cgH
	 fkG4EdfJc4ZRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 938CEE94100
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 00:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176705303358.22172.925151884352402222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a088df4d4252c9185915a7f46e433922faf8217357d900c6aaca25f7010533c
Date: Tue, 30 Dec 2025 00:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767053033
