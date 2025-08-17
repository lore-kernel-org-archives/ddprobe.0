Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 276D58BEC
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755434394; cv=none; b=VhSSbt2RAw/ctkg5LGKhV7/QdI/aENeOpHs7GCZaic3o6MH2gLM8RrPuQxHXrOeeLcdagwxpz/nrU2xxivHVjcPHwVAjb/NPXKDmG3u63ISgQWKvh7e+0sbnkunrl5tcM6ZnCW8ypOdchW44HhwXblmuFDbmKM8SFcgu7cFEwZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755434394; c=relaxed/simple;
	bh=//bgwuoMGXOomh/iBCJ9kOeH7up8QWsP0IDi9aPVpwY=;
	h=To:Subject:From:Message-Id:Date; b=j3fu5U3LFU8XTcdypcFnGCV4iXE/crVsJ/ZC03GMFxbjaM+r5swEAIhn9LAyB/UGxrUAtxkCuADeBmCrJ3jJxF5JWffJ8UtAW9quzsBz59Ou8eDEfqzaVcYNpPhA6+3kk6a3HfcLiFACqdpg/e441F+ZPJvdBQ7E3JK+YbAMBjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gFQS6Xqb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gFQS6Xqb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FEA8C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755434393;
	bh=//bgwuoMGXOomh/iBCJ9kOeH7up8QWsP0IDi9aPVpwY=;
	h=To:Subject:From:Date:From;
	b=gFQS6Xqb3qNEYsFnhhGIfGpD8Gl4CPPggbtVPg/ywMFZOtvNk61duJWLBh/Cx/+r6
	 pW+s4bCWkq73EHTOVROCxo4aFjk1fQxCBSjod855rHuaCVL7yuXLj6nZHp/kXsROde
	 DM5EGq5NXuwRzsgfOumVITvagQcQOsJLWhGBNcWvtAEk+XWoazURoh7q17QBc+Yduy
	 4yRQiJ8yWmhlce9y4FDzoaqEsm6sfbJhIdg+visGKDmWWvJRlJVbv3LyE9hmg/lBWK
	 CuxKohHEH5QrfG93bs/2/P0ts6jhjo/7J7i94EkThN7x1a05dCTg3FTLOuoMiHe3uJ
	 7ftxYlv57P5Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8F0CA0EDC
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175543439357.11728.5098542752219862029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfdc151484c9fb0d485c5da97577afd12630f0f5ae7e587bd14aa573dbebced6
Date: Sun, 17 Aug 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755434393
