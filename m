Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 173261D5CDE
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 03:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772940894; cv=none; b=nX1T3VWbr7JuYro6hMsbMuHmdTheRBQVpo4cZOUkjai2JSA3oTakwl2UqEpqHDKPduxRcgWA+VaSJhy547P+UqFtHf6ZpucFqYwS9yGMPiMtcLsM25XKMiXSS0R5juRz8w+8arne1J82DfRDgFE9M7DC6iLDi7Nxy15dxU/pTYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772940894; c=relaxed/simple;
	bh=Sc2g1bAcTl0rDJkaDNkjX/8nTcemYQfQN2LRPfC5TP4=;
	h=To:Subject:From:Message-Id:Date; b=djNrph7O8VVHcntNAikLzpRrvGm+HNsIGfUy7vLiOHWI9PVgjrk0ciAPlwQlujwuoKMfUijvASXlaLpr+OjlqVMCNMFbCFApHznZLXG9Qm8LodkygM/ZJ0I9Pw0xjJuVO6eNPwHb0lRelfUrSGCOrnaazYqgGSit4FxC9qkuaHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KzVQ5Sv5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KzVQ5Sv5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A7FC116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 03:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772940893;
	bh=Sc2g1bAcTl0rDJkaDNkjX/8nTcemYQfQN2LRPfC5TP4=;
	h=To:Subject:From:Date:From;
	b=KzVQ5Sv5geUetIEgykIYCONAxoAM+KdAmAepb0WCY/R3HmOcfICphR7ptkXZ2VLLP
	 Sl7UAdWUM7Zc1vXgHxhl3M6cXsPwURVewUf/HM0t6TS/H21u1engEeMtjWS7Jzta+M
	 yO1trFgG2ypxSewk6LqLIx1G2AlZoqy3O/GfiuZ8xWWRSY09eR+3gaPW72SvNdI7pd
	 qImxOHiRzqMD5nXSvuRMLteeFSSzQuSV7a4uPOmfr+4epUbcQR/icsUxSVrHWpngdL
	 x066RjsDFaViOjxtSVf0G5pAIyn5qzSFSTfiRZNDvOrO1nbrfB1eaUCUs/aGYUkXJm
	 h345E1H0ZBGvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DDFF55107
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 03:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177294089357.7176.14367257595540945871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81fe2ea7eef6599a13d1cdb6c0ccf041ab986599e19fa8555940695cc29db67e
Date: Sun, 08 Mar 2026 03:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772940893
