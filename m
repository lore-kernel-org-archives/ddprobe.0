Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24AEC21ABA8
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753919394; cv=none; b=F3MmIseYk4aDY+FM3N9NBGBXbC/DtXWo3c75yvDRgWd/rq/5MHo4n3FltHOf2GRiBPAMzYkVl42Z8G088Ryv0QASnnYT/zOVpWKilcCpeTT6ABtnWf6pd110v0smJSf3GtPLvLoZHLfYN2THdQOujAU65RJwreHTfcPw/V8JzM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753919394; c=relaxed/simple;
	bh=E38WvmcNlqD81AiU37nKy/Fto/CYnQzugxthOjSXfAY=;
	h=To:Subject:From:Message-Id:Date; b=B7EqfZtfSF1BPf8GiY6WZLl6npScVIS5XhdMN7pZLvmlg2bALsj1jQPKDm7iCTM3DQdnk9eGfEg2mV53PkGPVUa09SN9o67MF3Esa63NnKHjs6zAYc9zru2HsJH2MRMNDPKEFMVo0+6+iRBvJ6Qr5bemK3tuPMlpPSc6HZhfeZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MyscbLO+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MyscbLO+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABC28C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753919393;
	bh=E38WvmcNlqD81AiU37nKy/Fto/CYnQzugxthOjSXfAY=;
	h=To:Subject:From:Date:From;
	b=MyscbLO+ieoYxZkigWqbo33bFaGbIhSjrbGyXyenF+tsgPLZZR/7R0fLgexgtbf1z
	 6A92lLK+bbSd+F9ogkI2PFWe0muJ/TzmbfntNlEBlVhoBSZdZqq8Eogqdw7stKpM2J
	 jv8SNr6RTvZ6t7UOVUc+g7SCdbcanemR2yuq9EmbOG61Jb1huv9m0pBrtNqTqtnJ2W
	 4cOApHgXatviGKpjKtoOMOwUdIoXFZdY8uzsFLZ2QNxZHBA60pCK+fnc8E+aBvfkEs
	 0/dtiH/Vcd4W9P0KkKGP8kwpVU2V8ODETip2VAqMj2I343ezafXSJV/bLhOC9/fNgr
	 L0/w3Q0brGLiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99CCCC87FCB
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175391939359.31354.189115268922121688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23e62a39d2ee05a04be63248dd4832cff7cdecda9c007fb19914f409cb02d525
Date: Wed, 30 Jul 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753919393
