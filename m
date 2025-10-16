Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18DF433A029
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760621994; cv=none; b=R3vDRtO0G6DBu4OdajvLV+4BjR7ORrvoPU+Fx/vzZB2kshNqZ5c8iF4WFjVyhJAxBURyDGlhu1aSdyMJpz79mnWomSBv8QZ7mckirsdwompfpYLrW10Y9HJGFMNbNIj+zCZzP/cXFA5BClqL4gTQ94W1KnQJAiO1H0qqBhDkv5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760621994; c=relaxed/simple;
	bh=kAIEE8inBoqej8W6zYQL4+bRMrAlBFkATwayQ5SxTwQ=;
	h=To:Subject:From:Message-Id:Date; b=guNbOR3+EayNPdIxfulA4e8eN8/69v2+sOrc2QlH1SmnxaSOKjFK6TbDt8YZO78mo3JbiNzA2GhBUwf+Z7h5aP+wlX1nftBXN6yK3mrw4aJra9v10lHtPHCe7od0R9IKurFjIHwhmt1pgxYvRcxwlO/vtcq8b2Fc35sBmC68ymE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h6XMiXmQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h6XMiXmQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6428C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760621993;
	bh=kAIEE8inBoqej8W6zYQL4+bRMrAlBFkATwayQ5SxTwQ=;
	h=To:Subject:From:Date:From;
	b=h6XMiXmQ5lgnMaRRrlPeaOo+Q35lQvqtVWFWykWAL0OV7LF7PS9Fg/0YXVqRgFzmp
	 ErisrXhBKxCT4O3MzQHlg47yKMzpGjT5ONEqK4ueNc8S0s5zsyrL/wQb3ckQgJ9t9G
	 iCOWzg2v+l4FYFfnV0e3JFKbLfuSDb2EXoKRkRud9aXcR+oV1Lwout3JRA90Ua8Och
	 SR6oKdRm/YDMl94jQUegApgrEDwSSZ5gKxmlm24YWk0oIxSxmz8cjr278punAepnEp
	 OdrX0SCzXGAFeZp8Oj1YnQXv/CTRukxuXPBjvaD/7PnLlUBA/fJM193avwJyKEbVwz
	 NkFFkKqiB/Mng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90833CCD199
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176062199358.10312.17517980132785296856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f63130fe90c2283284ce0f1963759e32871a4b56bc8ae8e8dde66362f62d1d66
Date: Thu, 16 Oct 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760621993
