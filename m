Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBDAE4ADD9D
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 17:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784138314; cv=none; b=j+tmC2XFDQsSUm9om2etr170xo+FxzUZFkIOK/NJcpy6nj0yYny+g0QH4RPDGFSgrAJd6bAeGi+pW5/aaUPUiT0Cbj4ijcQ5urDrcuM723NLR8f19RoSPvIYmivYFCQhc9s40YAzaqqh8LL/BQwBxCPRpTRbcAjxuFuHLBO8XF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784138314; c=relaxed/simple;
	bh=PKQxYpMJr/z6Fl3t3gSUdHthjoK8EddSCiQBSRoNweY=;
	h=To:Subject:From:Message-Id:Date; b=rhTbb0X+FnBqioYfjjpLnCmLGeFYTZVfbMUKBodMkFB/oFPuCcPOLnkX6cXKyIjMUR4N4gVVUQ5/+GkJAAVVKfr3tZLz5HPaC0iTUpX2DMuckwJ3BBk4geZUx4o+hn6kOcallpYr41/JYafAjhF1lSjBjDTGj3DJdNTw9ML1Ecs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GVSXO/Qj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GVSXO/Qj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E20D5C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 17:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784138313;
	bh=PKQxYpMJr/z6Fl3t3gSUdHthjoK8EddSCiQBSRoNweY=;
	h=To:Subject:From:Date:From;
	b=GVSXO/QjNDHctCE8CQkroFrkfzYURa2gv3wUWgGI231mqgw7VQh3/W+OCdsXgUheh
	 M/ZKlNejNyLBWTDUg0XwWUTTTlxA5KNwCJDmDPi/+Dzfs/0n7UtAhv9c8yfE1ii/zN
	 xHfruL972bw0DcEuYcJAuumFI/NBDCtu8BrtixMer/PTz3mwlXYQt2zCQsXc2nytNY
	 4OuEaarXnwmjsutQxdqe2n3Gqd4hCebHYy2q55ZpbjqpJW1rLk4VFIGwUiFqL6N2HF
	 igLxHTNeB/usybGa3tytR74+U2n7JozfgdH0t2vk9AMfjAiJ2ZUBtTToQp5oYj8/op
	 eV5hk0L9cAJ0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC29AC44508
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 17:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178413831369.19182.470143452257400152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06f8e1bbdecdd5db2cb6c51cb22adfcf6dfe86d949b8b35bfbeb3c5b5664a69d
Date: Wed, 15 Jul 2026 17:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784138313
