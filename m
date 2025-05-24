Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 512FD79C4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748074194; cv=none; b=IrAD8/9OAUj28YxmSrV3B42UDSUPDsjSTbMoMczCfuJB6K5Ze2u1FFaA/7QSSfVCMja9YyLFQaczZ3QvTVp/F7O23lmJZEmixxniqKYd7Ax+ukCDUokItS4bnuo2q8gHlRC66pf62Nqr79gTW+P8CdKpt5ZpZpSPEpF/K79G8vY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748074194; c=relaxed/simple;
	bh=dxxo47OQCxp9KNBsQfKPKSfY1C7OJGzbeWW8TCJQeGI=;
	h=To:Subject:From:Message-Id:Date; b=saL4473pmCXSN0En6qXcvv8sBYkZWT31hnTL686rtYEiYcxlOSk1VYPZV50yLAoqEZSfco3M1lXh3FlNJGZKL4UylLlQp+/U3FzLidSGP1uvDmnwYpvYoftrpfMVGcU+Yn2OKf8BZSCa5ugdtHjRqhKoSq9rMw9szt3/vTua/r4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YdifDmw+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YdifDmw+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABFCAC4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748074193;
	bh=dxxo47OQCxp9KNBsQfKPKSfY1C7OJGzbeWW8TCJQeGI=;
	h=To:Subject:From:Date:From;
	b=YdifDmw+2PifW0o15c+izEql6jGpaFL0XBDnv0lIcdHvSHr1PZnCvHCX0+me7x2vw
	 Qb643zxsbWOLnsMHr4hKnnzNKGdtZx7QvOevZSVQMGlt9H6JJnTLhq7tKISE9Eq9/y
	 nICWNi2Se8MqBQUdYW9iEZ1DUszs6C+GyJr6S4/2OT9AlIyQyR0LIlGOcJ+PVjTs7u
	 7LU70sFI8bztmRpoqwaiaR0x62A9g30ritYzbpHSprhM9bxQeN+DA2Q+k0whR+tjiU
	 aYy3ggbQIoCnyt+U199KiCS+jvuc11GAtHcPXL/bfN9mU6TzglYyXL9DBZtWtP2JV3
	 aMaciZLbAVAkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9975BC54E71
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174807419359.16999.8740513343779351602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b270a866e8e8cb2d952f2e2f8c5c13c017faeb990d8d840abf94316d0b3e4350
Date: Sat, 24 May 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748074193
