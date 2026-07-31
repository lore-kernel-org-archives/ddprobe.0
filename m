Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55A783D954C
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785504034; cv=none; b=Cb7Xx4QH+vnnnL55VuUMTlZ6WzEzgDbxBfBigPBQFHELNG97onJrGs9hHWOysh4NOGLWykcR9wDVZ+gB7Gqq4xeAgmcmqQjuE4QdPmNhDnH+CA8cO3pj9leukXO8xXBxP7nec68GCyaUMiP6JKeACoVpBa+iXWXhWJqPP3nLySM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785504034; c=relaxed/simple;
	bh=Xyy/tRYqlWxLoGm5WsBTnhfuBclV5CYkqJ8nKzuiSs4=;
	h=To:Subject:From:Message-Id:Date; b=VIuU+IMDc0oB1K4QJTbwVUBx5x6fkB/8u8GCBXPbZyQHPzCQ/c4BzEwYFBeMoJ+If4ny2VJcN28tfYQp5KBYiphcXCDt5nH1rXIjugbAwRo8seKAXOLmhGvf5H4sSLVUdg6Tc7/2Q5trgJoBYf5s+GXMGPDScbz0vXuHVpZFhEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rxljVc6A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rxljVc6A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8ADAC2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785504033;
	bh=Xyy/tRYqlWxLoGm5WsBTnhfuBclV5CYkqJ8nKzuiSs4=;
	h=To:Subject:From:Date:From;
	b=rxljVc6AN/NAgBGxJX0kfSeyvYHzJycfAcaFldd+bNGf4KpWz0SZINeNUdWmPt4+7
	 bUkFib1Ret90BKIJ7zfnAHCr0IHbfH6bZOLw2lgMRSPFVjo95mFR45dXF1/yUV+0FC
	 93/6l/xqcHnle1EvGz5S2xzw0fBfb3XmwCAzrhNGVGM0BDleVnzlzYz3/EGDaQx5X8
	 Y3BkqvZZhkRVu+EcqhVnxgQ8kHKobMyD6GzaI4zyvtFfl47NVwZa8kUssBQOBBCzRU
	 kadJiZPos2RMq4INe9ZiQaA6GRU4R3RoErNpcKlmov2Dwv4pCuPWcFDV+OIo+CqMqu
	 PwZ/5vofhJyxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4A17C5516D
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178550403372.25455.11739719145445234183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f79d4568ce7b5e72a26d0e9c25e4c3d025ecbaa952be0bbdbdd709d189a8618c
Date: Fri, 31 Jul 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785504033
