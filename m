Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 157A147142A
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 13:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785936634; cv=none; b=WL9MVAGIbucWzwMFoVdmZoOLilEYK1e96KzvPXlTjwAPtk0snylHG4rMOC72lajltT/YJOAA1iJhxEqAIuqFnDDdg7pAN6OKX3bS4gpQznbSTQ9Zy19Wa9socrBm93clx+XbWqVC8BTDOf2WbSvhz4bgCCIeS+8xPnB5B8AoNc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785936634; c=relaxed/simple;
	bh=ic4z5Wt8yfFTZnl33AoLWJLswr5hvP6iOFm3RErteDc=;
	h=To:Subject:From:Message-Id:Date; b=Q89scII054mKKT2yxQeVAG+BJwVjXIMjWXOvbCHBXb3zVb+rEiUpnVVLq3O/BIQXeaWs8mleG4mpM6lQyuf6qL+UdfivZUQUUgPjy/Sf6nbEB7X6SJRLNGV39/+lCPxb1bvr8ZDowtR87SVDMwZRQAMYnGUi91Tk2tkSKgC2OPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y5vzYZsm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y5vzYZsm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC7B1C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785936633;
	bh=ic4z5Wt8yfFTZnl33AoLWJLswr5hvP6iOFm3RErteDc=;
	h=To:Subject:From:Date:From;
	b=Y5vzYZsmayrsKKAL0H9o6Y/ngx2Tgsr7vBcEwVk9Dx2gQX5kErFipq7Zy94eo+wK5
	 FVJzmvq6ODvtNMD4+b4oN6Ag06oUEV104cGYnqPoKNDqwUEwOr/0kWXbJHG8Oa0Hip
	 yVKwvbwdkzKspK2SDTDKerKkJirEtaLYZg3h1Jb+j+oDvo4QuzWBtGEH//8oI17Ofy
	 CuaJo+/0JP6WXYoYF90FbcZDSx0QLlrCOQKyrvgGcsBTGkCaOOduWCegijbQOfDKl9
	 tP6GTvO0xo8qaPGFOJExWscr/ys4g2in6+4rMMcwiq9rLLQL08yX4OtGMktIgcmY44
	 t27326QjBfqMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA2A3C55174
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178593663368.9751.11427273011569991604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d865e693d5082fa1ef4d5e2ba80b8a212fb606a180a8fc8eb17e9eac1b228fb
Date: Wed, 05 Aug 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785936633
