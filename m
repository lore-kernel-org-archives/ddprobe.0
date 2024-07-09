Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75DCF1B86D6
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 22:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720563983; cv=none; b=faFvjpiDXClaKNyWJIxLBLpSlgBa7OwvcD7TUdoLY2C/6Qc5usQpKjKQlgyB1rRLrCTOKsTA7HQiMbSOlTxRV5gVMrOlhkLGKY5Yl6mXtYd8oZ9eWDvrZS/Vjavwcom1NDOR98pDaQu/lwrUOOagW8VymDHdBbZ9rtwZt5QqcL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720563983; c=relaxed/simple;
	bh=smAPnD3KHybLARUTiTZ1rbOOEjzbctD6NBmCeGP8PJw=;
	h=To:Subject:From:Message-Id:Date; b=Xbd0CyA7FjOJQVYZwhWWe8/smkeQCYQ+dOuxC9Ks/dVlf2ogCcH2yTPXIt6+bX1JpeSIbNdDLpH874yEGVdF2zJSSXxljLKJxlpsYMEPSpX+PkG5vDg9CUP3YucsvYmH2wpsuObwjZLI9K+ZJmB6PqVROLbJsKECfWz3abZ4kSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XLv3NLCW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XLv3NLCW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1470C3277B
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 22:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720563982;
	bh=smAPnD3KHybLARUTiTZ1rbOOEjzbctD6NBmCeGP8PJw=;
	h=To:Subject:From:Date:From;
	b=XLv3NLCWg30nTu/SmXGXf8zTwUtzMPjvVEfkDcKavEBF7JUq0ipAYX61LiwvY0gMw
	 l4z+dI/WjCtGMirqna0NflRsJ2zlt0JI6qtj35wFzXoNEDTZVwv9MXzzLgw1IubMqN
	 8CnjiBj0JvjEb7AL7mqDHv+6RU7IOOUOXWN7CWICZDZY6v0FKUtPdSKV5NoU73uQjR
	 sDDMQyxOb+d3LwhZ8AHP9cTv4Ba2vGiCPMLXBJMt3hIuQ65XMuPb4iScdtnmEzQ8Nq
	 +qkCoqOxV4tRV2blQvf4aG6dP82oX+R6EBNtjta9WCYEi60fioZv3S0HM+QRSKLCL/
	 po0Af9j1MFCCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C845BC2BD09
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 22:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172056398278.21038.14101339499616149559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e97038cb6f26bc7df5539ef3b0bc39339480f3609b2b441863623f414c20fdd
Date: Tue, 09 Jul 2024 22:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720563982
