Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 136E2347FEC
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 11:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779709354; cv=none; b=O0HudnQdY6Akz2H8OXPEWPZYxWPVUkucMhyZFRAjWIEriFoyCW9hiu/Auap6cnfY2tEaQzub+eAWfruZA3YbjGMaMdIWilMo16fbepDz+fqRrLFlsReaBmHi4sWG85yWxetn1fX+vgsz5Yro+w7Gx8botmU6J+OoUXL6Ce7s+AM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779709354; c=relaxed/simple;
	bh=YmL1Zf5MPcFdJC05Kx8yZ/hq/4AFYGkm9SSEnpCToJs=;
	h=To:Subject:From:Message-Id:Date; b=m4d80bxThDlglQ6vam69GTRiQVCNGkomJ1Y8ERMLYVndgpZE1PtDGucXD5ziag3MA6j2DiCbckL0YCEpKnEngjTpubDkBXPj0Hu+r2NfnzULXAn0zGhwDdDz30rTEk3ZTDThSzWVBrE5cA6oyWhhF9bXgSwc0XAZkkd7wkUlnhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZZztB6xJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZZztB6xJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1E07C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 11:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779709353;
	bh=YmL1Zf5MPcFdJC05Kx8yZ/hq/4AFYGkm9SSEnpCToJs=;
	h=To:Subject:From:Date:From;
	b=ZZztB6xJ0v/273S46Y+noGKRiOsYtxgNsIsgnsn3MCggvrnmfMT2nGXMmFEWgHgT2
	 LTeeOMTIHm6JlHfvt1ic5Hwgc+oT9054oraew0dWEYSmwNrlCFcpAPxLICC5zTytr9
	 wYfpPpYB4z+S5LGYh6iiWkYBZkPHxQVhFhcIyo/Zkgtq6QNgS9n/hdayYQ1qAtxV3U
	 7x+WbztYKRFPqs4IcQgF6o7uI23Ti9zPWVdqpQH41kz9zm1Pzq3p4C25Oc3F6udFh+
	 T/C6wmFxuLKbKPcLyBalT3AnFOfKpSlfFzrbtCDRzyu2Fu/xjL3ILLMM11Jyu5tGkN
	 4qfFWnu/YfEfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E41CD5BB1
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 11:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177970935368.13342.416539117953853027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b04a9f34db514e85cfa731b679fcece5bfff5872c7e16d5dced24757be5efa9
Date: Mon, 25 May 2026 11:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779709353
