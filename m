Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 375EA37C928
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 22:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776466654; cv=none; b=Wdub6EvWb6L7weiuC00eB6PTdVRoKpkSyvIhMqGF4+PKZUQJYlriqGywhiVI1MDZy1qahztiFAl3FCAZZF4J9VhkPElZt/ZX0AleYgh9Zv4yPD1TRLxPwgig2wsyKv2wSeY76juFuqfVjWUIomaOrlmVt3nKfGjDQuaOLVIqn2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776466654; c=relaxed/simple;
	bh=43d/yPcwV+Dm8CPcirY2LYIlQiBd8LoBElFbZCqt8xs=;
	h=To:Subject:From:Message-Id:Date; b=IjOzOGN2Fk1X9Y1efvUZ49PGX0UK+5zHrSUShl3BLxl2idOpn7DE7PTP5QUjXdsQujI4HLX55wDY9sTCcJnT2Sa46yvghx9EC1+6FdspKi3kj4AtbxVn2qVR/uwg2MQSF4WVhXUDhojHb3heF8xme+AFM7qa5E/TSzGm3kVrWOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aMqFWMH3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aMqFWMH3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEC45C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 22:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776466653;
	bh=43d/yPcwV+Dm8CPcirY2LYIlQiBd8LoBElFbZCqt8xs=;
	h=To:Subject:From:Date:From;
	b=aMqFWMH3CBFOCr9qnNV3d03sOeX8WEtw/LKO4fComnsvraLRJQcdMgmb4XnGI5qOC
	 9g+JlxBt7rOgM1D0wVAWEl9f9/fQudFi2quq87BjM3YBtbpdz5R11WK+v93afouUem
	 jq7L7Ux0IhL9RdNESgUBG21eCpO1CwjNVgoqX7RmKGJuhna8MY7Xab6GEkbzP7q+0B
	 fDKyjFtlQCUZEKpcyx2+gVgiQetff5aoN+cRrfqXiwX2xOB2xE1aGQawOTBaJ47soK
	 YWatg496z7p+3aezW3IohxikDthJfks3MVH5JtB0q+wp9mb0M/pJVqb5u1kUzpHq52
	 U2oXTkovK14Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD8B6F99C6B
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 22:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177646665368.28183.16660774790887408196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ef7e1d7ba6d609eb267e736c6c49f0c9f631a8a4f88044b86134501598a0f10
Date: Fri, 17 Apr 2026 22:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776466653
