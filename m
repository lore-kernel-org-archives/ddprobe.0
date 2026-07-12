Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24D48347505
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 21:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783892314; cv=none; b=HVR0fdkklu2maw8tIB1uP2s2RgsGyLRuKJyaLUFc/2BkDd8QmS2f38QHgIi4pLGuqK2KnQNZcP82sbMdXg7i3Rso8PDEmz+C8nhKaiDY5AWyU/COGQa5+Z0Ldz8qbJJ4TV0//onGEw3C8n19WodQ/7HFWhOQL+06fBfBt3RBaHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783892314; c=relaxed/simple;
	bh=3YZ+whbI4qyy63X7b8N8cs7EC+Sl7njO6ofKfNk8+sE=;
	h=To:Subject:From:Message-Id:Date; b=sjh8sdHa79hTGZvQQ5Cvzel7kaK1NA2f0qJhrQur3cy/xB86J1CmWlMvHezn4eJqasv1/REolubmf9g6VCmwSZxvRSRjEkzfcLU71Vks69vKn3ps201aw60KxNpdMSqaPFQuTUxvexsArFbCmwkr3nEAYyKxRRYMx/2+mUHSas8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fMIyKS5p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fMIyKS5p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9B8EC2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 21:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783892313;
	bh=3YZ+whbI4qyy63X7b8N8cs7EC+Sl7njO6ofKfNk8+sE=;
	h=To:Subject:From:Date:From;
	b=fMIyKS5pMxfPro+nl2yYRChAym3ywm4oOpy5GrS+YHQ1wmLZZkzhut+JA8gHP3JF4
	 4qVykJaQheM2keuJa3FCvpC7MCcaFEvDS0yVA51VvOq/wlDkpUIcjtFOWh1bDdLKey
	 copgGpL/yD225kZcynH17JkcMWUPbFqXj4NWm0tCGe2LajhSsQvYIN4d6JnSWg4KYs
	 LjdSU1jxfDUlz/btGzru4Ie4TBdXNwE7DN9QTX0JwyPjNiqHI6fxaHiExwyw8qnUev
	 Mg5e8Eoqvfd0gJvzJo1ej59hJ/zSaSRZUuvS4+i7rjb8uN+uLRlBY3pdBevmZfMRe0
	 NXLw2BBB+VRXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A839BC43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 21:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178389231368.29099.15919680891440530309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a138762cbd284c0ad05999d556e5d8b349386875aaebae0eef96ed90f4d40f7e
Date: Sun, 12 Jul 2026 21:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783892313
