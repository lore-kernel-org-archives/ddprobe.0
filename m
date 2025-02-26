Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 505B022EE5
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 00:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740530934; cv=none; b=uwRr9N7XqwobZm7xn02wWKNcw1ThtO6WCtwonPh3eMSbfWkGH9kDQVGAXzTRYi0LupHb9I2VBlj1Nk/ec4qk8yhvb12hIW/Xyz21UHZ1SF7GSH9t4DJS9OVL+FpBxQuT9OZEqbS40lvrpea9wxP4Q6TZdekwMERSd/h2N6sV91k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740530934; c=relaxed/simple;
	bh=LchPIOfRlAeN8D3c8pNLa/dop+nNU+P28LRPO+NRVF0=;
	h=To:Subject:From:Message-Id:Date; b=Rc0d8VeCFD9JOLQp+IO2MJMCZLBJuNezTz+2K3aXlqPJAa8PV6gEXrCyNfSwvlDg6tmCNGLt8y8dilfoScvKOpZoAqYqcD6jkPvito/+QHRxtca1VPe1qa1S3TwrhlIsAjhCk5SW9OeRWAY87780eza6P50jfxZmXFXXmAoXH0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i1KbKzUU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i1KbKzUU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9E6FC4CEDD
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 00:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740530933;
	bh=LchPIOfRlAeN8D3c8pNLa/dop+nNU+P28LRPO+NRVF0=;
	h=To:Subject:From:Date:From;
	b=i1KbKzUUVCU7316rV6nPbxcmobyVYIM6l2lxR6DwSzsiN9FB4WC37eSDG8l2/s5Q3
	 PgNcUhTCx7ELPCRtKCiRXIkoxw1F8Ijqh8gIuSJIr1erl5NNEbxdpGRg/piYAxlVwM
	 LauW9BW5VxLNia52IkcjVtDJKmDU6P+vMuC7HToRKqr27ny6eGekxD5/CQFbnFsOy7
	 InLkDsFSVaHMNUs3o/ct37N40Q9djL1hYaK4E9bI8yhkwr15DU/Jz4vQE6g+A9u9JT
	 yqlz0+4S0KfiyJ+FtNdfTi+jn4Ka9R4u+GzA0P2+DnVS1GDx8Y1DITIe1DP7a5rSzI
	 thazq6OHiCP5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96BFBC021B2
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 00:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174053093359.2663.6509354087781454461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7148e0126e1ba1a36aa0d5f41c2b2266cf634d11a227b0db5d80eca8a6940c91
Date: Wed, 26 Feb 2025 00:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740530933
