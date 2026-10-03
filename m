Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 603C52882AB
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 21:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791062434; cv=none; b=STekJS/1qPzS3moPfVfj2K+Vf3CoXzf48jJPCfxkiLOPPr/Rg2gyZ5vhGhgFIzA6l17xbZjnM9pnmEOWwh11O3SJbQPbJAMlPmnkXWvQJ2nWhnNjmHV4ntsaAj6jFQPdN/EeBHcc1Qo9w1V6GklAZae4Gz+3Q2fZguSDLgQYsL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791062434; c=relaxed/simple;
	bh=U7Ok1vRHZKiFVdAe15njulS1pfqnba5wkv0FclkhifA=;
	h=To:Subject:From:Message-Id:Date; b=VWli8ChBNmix1k3G84RrZUmQ09G+xnMvd23paIu5hN1LOJ1H/ZLtclpsVHZzhlodi/yWHWvAKZWLepulPubivLX+vrfh10mDsTHnEfKC4dMOLZ1udJh9XZ3z52GAaAnlE8KFYfXxPiQFtZDKWyqdOPYdN79lDRHF6769ZRaWgdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KvHRvHrl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KvHRvHrl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0FFDC4AF12
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791062433;
	bh=U7Ok1vRHZKiFVdAe15njulS1pfqnba5wkv0FclkhifA=;
	h=To:Subject:From:Date:From;
	b=KvHRvHrlKq3KfEQyyucu2sriprSrW0lTWvCwZJI8LXLU4cMgvLgWbNEDbz9evRY+e
	 xasdYfN5oCXpOSTQMO7EIVS8x2X/evdLzAmerxuY31PlQdus9E0nHETTpP2bZhSMy8
	 gKs/LRqi06bYN730VD9k034+ey+YPz7yjYzc9WdqV9rwQqttz2Tus6yr49dE7/M7pK
	 kkJegmmw1J13BmixyARmepLzzTZnjrMPsq+rev5EX+ZBpfMx1Vd54TlRxjRjmZ83e8
	 HnLhXLzUNc0ElMRYqonVcRj4+SEm91W0qBjFc9rhCqfC9zaegtdSWLzUAXBg93xBco
	 cMc8j6HTx4/0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACEFFCA5FE4
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179106243369.27673.870139985192974554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fe93d0dfdade4c3fb60c6513e571844bb1c40f9e58ab942f41d489e57bf4bdb
Date: Sat, 03 Oct 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791062433
