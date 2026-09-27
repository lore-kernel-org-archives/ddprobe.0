Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43F212DFA3A
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 16:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790527234; cv=none; b=rLHrgpOV+/UIBzX1Mshz80pc/7WPGLWdDht2ukEwu9jsNb4O3OWLHREdRDPiLjJKrPeW2nnNz/Yoa1Q3EDuc1fWGXEE5D/swotiQ8EDnGfHFwy1GcqQsiGIbDkdHIQaIOHZD1rzZmfYmGCWAvPERtuRQNvHxpzEUTs4NVIJoHaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790527234; c=relaxed/simple;
	bh=G3VhzSGGHrXpgfsgz+JcsgEYE/Povi9Y/BWDKc3lfaM=;
	h=To:Subject:From:Message-Id:Date; b=ZTMiBJTkUXX4A5/OUNB/vfIVFV1ZYJOIJPw2MZo3SaI4nXmv9Jq8WYjVoSe9KC2YWBuaOUY8VXWggB72DOxhC08vy+/J7t58e1Gqrk2X8QSPc1irm9OgOIM4rOT/PoQzSqxo4q3X2YDhBWS5YEhkUNUEUCjYbHcx3njyL1ejOy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iDIGeACp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iDIGeACp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDF2AC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790527233;
	bh=G3VhzSGGHrXpgfsgz+JcsgEYE/Povi9Y/BWDKc3lfaM=;
	h=To:Subject:From:Date:From;
	b=iDIGeACp0BvZ53mmKKzBxtozZ/dXUyZOuw0rLmpMba3LOqOu0/ZzuRENOOVjZyAdt
	 UIx77oJC6AKhBCWWuTj288YknZDWG/SbSe4j9fNrqhYkM6wWWSA3PuHE7p82KRdgJj
	 DNDYIax5KZkPSHYGkKPLqQAJye1kaDEYtCq5HSzl4Mk1CMWkukDOBLGDpj2fSQiorq
	 yQuIfTCM7u6d6h+HaiW5Hixu5eAizsPSJZBSmPYSw1wmLmJSuMLIFRy07p6ruIhZwR
	 YSghtnb9Ks684ebZcP3WQgYbn/lHEWy6SogTjt42LzBcgdXQHD3OdKMgeuOxsChuNN
	 FFuAIoVQD6zmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB8FBC98338
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179052723369.24300.18136886156553843760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 417d8453b115abb7172c4e912b6664db7fed2f4bfd9ca024eb3b895489d564f7
Date: Sun, 27 Sep 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790527233
