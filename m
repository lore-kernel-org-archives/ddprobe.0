Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5003419CC28
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 03:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771126494; cv=none; b=dpD2Z4Ge3/iJ+dJ6Es0LX87hdtFm9nK8sTHYhhLy1Bsdihtk6gGhwj3465D5KVRqxiScd8MUGmOS11rTmmlgeBN/OEJcqvEsymAsyZYZD3SQI+mR7XO9hOboEBsi6P2GwyoG1Ja39PHmtLno+zyr2mQVsDiDDb35Cme9xihogqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771126494; c=relaxed/simple;
	bh=MAXCufLTUv3vX6HbhGXeL+CRYRs/B7GaNN/FsgH+lG0=;
	h=To:Subject:From:Message-Id:Date; b=J3MepSvPqYDYrcCqr3ZVB1PISTJBqxZaNjajTBkCp7mGIEePNrBDGofxUqkmGtyqQ0G65yHrTl4bjSXBRRbUyBQFmopWx/TSj5LCYlvwRhCIogDw+pgQi3dT3E6aQZz2gFqau2vTMLqBqDu6za1/ScZaQw8UJYB0mrBATxzRGUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wfn2BYvz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wfn2BYvz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC28FC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 03:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771126493;
	bh=MAXCufLTUv3vX6HbhGXeL+CRYRs/B7GaNN/FsgH+lG0=;
	h=To:Subject:From:Date:From;
	b=Wfn2BYvzn3eOfn+ssm7CgHyV2kAPONQ66in+jY/6xZk38yfW6MwoQCD+5SAQpHzVd
	 w2dJYeaBteN0svIYxr60N0gaN2Ztly2Fjc65AYEthOBMgiNOwjjcYBzMxcrtQsljoY
	 BUJe3pZUx359pi8pgkqCIpGCeFuciwuo6YQ8FLBXdieCXIuZTxGI//CeJSl7NXMDZk
	 Jh6WMAh1B7cDj8ofdxKKHUJqjMo53qJekBnz4F6Z5R/g59Ni5oQ8him5c4n/bVlqYr
	 z0zTLLvuW9pH5sTxYJsgSd265pjC3ipzklYairFbxQVeD88X83xkkbhQyK5gvsaXr8
	 GivAwvMCz2uFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A56B8EF585B
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 03:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177112649362.336.9868771852195641327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9b099635e3fa025376fcfe297abd6ce87e4130659feb932abc52233b810c7ce
Date: Sun, 15 Feb 2026 03:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771126493
