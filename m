Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D4A11531E3
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753881594; cv=none; b=HGM6s4B0m1YbjLTtFwsA2cJHhyzdt+QnzSrlPGVOylzXFHMJElH5OD+U8pEOSWgsFMotni3p8K9grLuVkMyjwzEXt5Ds4Z7ijXXjhuvgOLb5d/FQECeZEPzLMS42HHAXrT5bOhMdDkT7oTvoQ3nuSEdzieANcg3jWHiKlFaO7Ps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753881594; c=relaxed/simple;
	bh=1Jjcwumoo1ZHGb4SzGAV3mvTIGss12h5hA7cTShZzwY=;
	h=To:Subject:From:Message-Id:Date; b=jtIodnLO2raK2QNfpmWy37t3t1vvCTXi+qkq8/Cx488dXFEql1sEWfdWj96ybcUDqEoNS/iCK77rWiK+nlYWH+8NvsXq7cqVGsiuuCEKMAMx7huANFrhMCnMXH35L1mx3yxL02Uz84gppBk60czreA/0iD+OyaG5IAV23jxpyb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dfoCCQc3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dfoCCQc3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A079AC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753881593;
	bh=1Jjcwumoo1ZHGb4SzGAV3mvTIGss12h5hA7cTShZzwY=;
	h=To:Subject:From:Date:From;
	b=dfoCCQc3fE2oTjr8mFFqkWWeuWCIPPjY7XU3ZzttmWLFzZXSeLqhnHqiWcym1fZpY
	 XpLzfU+ULUfDz5wJ2Yk4/QZpjvsAhz9An4ssRVhVVx1TdeIK1eNK5grYK03dZPNE7i
	 elvdvfEjYIFjijLgVMQsvFm8nkVfeqNYAtMHuIqu8aKP9nqzj5B1O15O4Y2l1VxC4C
	 0Wwz8zSmmmm+J0kiGvfOwIMlKCkhmNG7ibGAPd7LIzLgTy5pVcX9era9PauWKlDx0r
	 4TQfzQtfYqW4DWnsoP8vG13zLmpkz0H+9AEpAYMmnMzSiC8ioC5njelrBJ4Bdy1UFC
	 fAkGEfBavuPzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EABDC87FCB
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175388159357.20062.17717101525525685112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b8d5f53733a40dba71722549020e5c96d0fc4b06d35228ac82336f39ccf6333
Date: Wed, 30 Jul 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753881593
