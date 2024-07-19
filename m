Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CBFBA35
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721432154; cv=none; b=YV/piPkX/MXF+Np3w48FuQ/9RnjZ87f7qWXRZTE/EmViI+353nmLZ/ZrC9sM/Uc8J1VAhmHiJQBzSsIC4wTPIF1K+YAO7sIvwg7QPZJhc6dRJGVFuBy+UlzkXPTXTZR7+0HlD+95h2vtSMqQpLLZ+1mUPKratNdEfkpCgC8zw1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721432154; c=relaxed/simple;
	bh=H4wJOZvKEVLNVHpl70sq1Kr5mi2v+XdmR61dK6BQfyQ=;
	h=To:Subject:From:Message-Id:Date; b=f1QwEcp3gNuIk7OMKxCcnKGfvkWhmJEcjCIjAlzSL3MLdnlXyqxPgJhdaNtZ2hAgJ6Pivvz6ZIAzn738SlBPH0XPQjqey21K22xVbmWF0M70Tw1qKFtLmHozVALVn1gadWn22kd1ItuShvD5+ToLa18wSptAvXDRVtBtq3l470Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iwHqJwMm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iwHqJwMm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACFC3C32782
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721432153;
	bh=H4wJOZvKEVLNVHpl70sq1Kr5mi2v+XdmR61dK6BQfyQ=;
	h=To:Subject:From:Date:From;
	b=iwHqJwMmgYC3ZT+6gyuFE/e7HsCtvmL7elSKv/x9AdzBeOoFrP05P/CFpbHHgXXBc
	 c8/vJgg/zAPe9z50MUZREbPK7kSp866g608fnAcFAFZPRD2otXFkjHlxjdbtpqwhFm
	 5WK3H7ogV/DeTFi8zYJpi1odsauqSZv5w2c5X1YxVOfeRkvGy6ObW0KYDR//2YPYO2
	 PIiyV5eJsR/VXYWQ/VUbUgSPyNunFeu80fJMK7j3qA1rG8cWzsrhmvogBVdx6s+dAD
	 HTRbSX+ccYWzZ+m4UX2KZQ2zTE/qEISclL9SMpU1//fk4T+as1eAYWrPiNf6KUQdiA
	 shLU2KPjFrbdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95491C3DA5D
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172143215360.28525.7512295145009728342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 204de5287cf91b1cdb17bd20700b540cd5117c9772ec0f04632d76dc109139f5
Date: Fri, 19 Jul 2024 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721432153
