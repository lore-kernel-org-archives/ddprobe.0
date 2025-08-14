Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B9C7259CAF
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755203394; cv=none; b=kwcYdn6GOPwWmOxMnFP+hjDNqFzGqRB5fVC68n8XVPX732k99/m5BLNEbGYyIM1/kCeFB1TcgEohmi/hpXbtBuDswS8nBioWfIeLhlLQ0q9m9Tv2WHqhZXY4INTCj/Due9NmABW7ELa2hHlryqqgJQuUXPjaIZ/e68Izw8r8SpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755203394; c=relaxed/simple;
	bh=uqTfTr4Y3hBAkzC+O2X9Zdodcibg6baFZBm4N+Fb3t4=;
	h=To:Subject:From:Message-Id:Date; b=O0eXqzcKCEVne5bBGenak0m5oMuwMna6lsevL903USeks54RV6+nZFbvpGRqm80D1Fwm66La5KIVsJWGI+/SWWjeBy/t35u2gkawre1sZf8zM/gns1zQqEoCmfIPVLL3MAwFBaj8Kh2sh0SRmYECd8UoaY8IxLFRI9Dktw2+NaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OB469xS4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OB469xS4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E0AC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755203393;
	bh=uqTfTr4Y3hBAkzC+O2X9Zdodcibg6baFZBm4N+Fb3t4=;
	h=To:Subject:From:Date:From;
	b=OB469xS4HQvVo504W+cU30ZaiUHhWHj2QsQmtjVPtI4Xieuw2G4uhyaAedJB6xUGa
	 e9+XBl+QT7hW7ahsYmcqjujLub3bppgWJcRb5hGOgM8MdPtzA7JMBUN9ApkCjU07Kc
	 9Pa328sbBhfBiWXBx622R/Kscl1evXiLqceVXmu7ZW1+W8rJtUtTK1OZQ/ljJZX5w8
	 r7S9hhT3ZOoRbVoIIK1OGnKRhdbF6RwB0YW+MG1vRGFfTlu8Sh6Plj1c7UZHlIg7nd
	 uzNBnDbOsy/wZFlYibe1KMLCFHpFUQ+1p/68HF4kHSRr+XCTjnFMacEIqqLQJtWVQv
	 U4RKCJDZmRlnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91789CA0EE4
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175520339358.9810.3448534129292614994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2524b3d1cc6b56d359a3ab6a30f7380144ed24cff83d78f5250cc333b9e95c5
Date: Thu, 14 Aug 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755203393
