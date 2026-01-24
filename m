Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 195CE946C
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 20:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769285034; cv=none; b=ZBLaMiM9VmcqcDOphFC46Vlvs7/BC1KjVyhdxsZNhdRbGrnxufB1a1jbxvWeHZKuiI8bWYygsQK/C+WsUl17ZgtCb6fuLbiXTvNp5A69jYhYZCnjewiNolk/kemYCQk8jXWemjIUY+ICDbVcItMzeFO19nv155Tvu61ya/REGX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769285034; c=relaxed/simple;
	bh=iNtIEPNKUY+yAb3UrGOsLBSmgGajuyj1v0WKJBR2l+Q=;
	h=To:Subject:From:Message-Id:Date; b=ErX5hA8L+B9X+mXEru1kRGe1/NwZ3joFF5tQG4x87DBVGXooay4E0S9KxAk2SdU5BaHR61zZougDWhZRG27C4iohFUfqYdzuV2J082ikYhiVkNf04dDkQA3DzjM9Cr9JtjhwpePs7nFIiEdjtOI6tedrJccd7aVPrwK/2N42SFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NrmG0R04; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NrmG0R04"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25ECC116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 20:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769285033;
	bh=iNtIEPNKUY+yAb3UrGOsLBSmgGajuyj1v0WKJBR2l+Q=;
	h=To:Subject:From:Date:From;
	b=NrmG0R04ZjU6dgxZxP2/JFb18GarZB4REJzx+q3hZGF7bnuADVIcVQEc5XHEf9r1v
	 f/TCaLok6dAo53iQihe44TwiT0j20MNP0NPw/aZefJixMyVYqYCHbC475biSGL5LIh
	 xIyawfgAITLy/Qe00f4C2cKQRt5XQko84tnTu30He6XcfxmGtaXLbOxSaCUoM/E1A+
	 sj9ANcce6gUoaGux2zdvQXQwZliDe4RPQzzHgj3jijGcdYgN343eLPoY5Fq0VPCn/D
	 cniNTb35n8FcUPhgoPiP4mwmmU7sSU2e7nKQJypdK4yQygSgv1GAsHzAL7VDewJtx1
	 vpU3Jnffjpy7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CCFD715F4
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 20:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176928503359.12632.5294380283577007383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ac43b60573fa041cebc2459ca1a9e5c1ffccfa0a89b05db360b6de5890b9b2a
Date: Sat, 24 Jan 2026 20:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769285033
