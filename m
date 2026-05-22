Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30B74218E91
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 00:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779409954; cv=none; b=ZGlZ7vZbS0Q/B04RDuscii7YK9wqKbOM7IPQDGrbush8udCJsgROt2ZKPju6NTCET6sEO6Az3vRJHS+6pu5XGNSSdrkTKo91VNJB514/Q5E7ZsE2Kzbxf3VwZokBmDwQEUPVVU+qzP7nhGKMTuAWbqCCWmu78vMaH6vh0Q6IEQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779409954; c=relaxed/simple;
	bh=dV/KawRlZBCFgipOI9webAICWB/4QbJDzGO+Ruu6/Lg=;
	h=To:Subject:From:Message-Id:Date; b=meFWqWCBBwBhlha3GIqekQtyRwkMgJb7PR4Y+EIrlx5pm19mI3wsPDJgMxDEBh5D0j97pDjjghMw5JuUXtIhSpykc0UCngRKXIwsf6S2EjWQxu1k2uEVH3TVNQq4gcAFp0WblmGnnYHN+fd1MOIb8Gc5QoJB13nxoIBarZrh5ec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qRPQ4JHE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qRPQ4JHE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6272C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 00:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779409953;
	bh=dV/KawRlZBCFgipOI9webAICWB/4QbJDzGO+Ruu6/Lg=;
	h=To:Subject:From:Date:From;
	b=qRPQ4JHEPTA/RRtLxiXtZ+T26M14HrIfTBU1MH2w53DjNiULPhXrMDWiB5mr2MrNL
	 OymWuf+wRWlTCGhuVDaKCTxVy9XW1dpQaz56m87N0C8RZlX5xsQ3IDHQfiVm8Zlqks
	 1Wn9YOY9dTUi26wYhDvjUs8bj5yyROXZgVTyYm4ULvPUnInA001rn8q54bQXjzJ8EH
	 FaZ1Cv6aqLy7V9nw6kgajowhQxehKsxAP3EbO25VGjrt2atLhIUK+GkV90tNnWlQV0
	 rZxb0oRGl3OKqK+4KbBpZ0pq9l1LwJsUolhOqNSqYkwYbuLkFkN3QQKRVBlZ1SZgMx
	 jIOn8uCivzkkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB01CD5BAF
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 00:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177940995369.10664.970075381807146983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 460bdc06c6ff9326a939b1c9de3db993cb72c8713ad4e12d925c9e7125498928
Date: Fri, 22 May 2026 00:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779409953
