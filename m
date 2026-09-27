Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6347A134CF
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 07:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790493634; cv=none; b=DyaqMpnxJxwuLMQ+k0VctFxVOPOmDHHUtuEaLEOtJy7FXjqRNrDopqclD7uy+k3MdGuRIRDQpc0wr+d5ptwjVjFS2hC/OgMvMSYbwymClhF/qMzBZgcM5QA8wnmu6mPFlGeh3kV/5s+uqHfOqnDsnTckqkofeC4EJYg2Mi5T50w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790493634; c=relaxed/simple;
	bh=oPdUwV8Nsu/nl+BLIbviLiTOqaVj3OZgs0SUmBEa59E=;
	h=To:Subject:From:Message-Id:Date; b=rx/aoOflCc/YL7A1cB/+eOGYLd3HmRTVGeFRyO7YLdSFzV9sfn3aKTG7/A7dLes+cBoW7bnQqSVjPHD/gVqZGFISDNoNaUI+i/WV3lBbPxjDEUP2Mwcai0jr3ncdpyKlu5diHjjNitT+j94YapDBtSebJHT85FxRuxi597drLO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TgK8S6p1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TgK8S6p1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D37F6C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790493633;
	bh=oPdUwV8Nsu/nl+BLIbviLiTOqaVj3OZgs0SUmBEa59E=;
	h=To:Subject:From:Date:From;
	b=TgK8S6p1ESmhAOg7bAklbbjZv1i3jehl8zNuYNcjtz0DWemBMF8MatOCZIDYIjgZS
	 fUM1lhE89VQbBGkvcMOc4CPVWHijKErKoMS9MUGKD6WsCWVflwndtcSbfr3ZSNWHQZ
	 2bP23F9nNcK5y1oTF46+o7JlNXGnVlLM7RpRotTLqdTy1sTDJT8WimKvrOqajT0h0U
	 QnEqh+I0vZAuavw9h8ieYJhH0MxJO3rkKBsMwNsw6JGhf++P4+PJ27DTYQ9tfyFyQU
	 jeOVjF66TRW5OURPj/5Rlfp//6DZXy71E2i5t3TWgFqQvVYxQnltf3/ZQkPXY/IItq
	 NqyA/BFxkYugQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B161EC98324
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179049363369.22495.717798446898863492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f88f1c196c30e44b2ce1625676e8584d8807c278bdaaaa8153660e1b557034c6
Date: Sun, 27 Sep 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790493633
