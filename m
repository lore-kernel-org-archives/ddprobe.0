Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 344AE29C32C
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752833394; cv=none; b=YnlLB8ruFThEp42EgZhdxmBD2ApW7EUzz3TLfKdar57EOHz5r1cYdGvcn3s2gL0AP/pTecAWrNyGqYJgKv3NK0b7pqZ+03iazGB9L0CFKr2uYFPdKEcKk/0nDmEEAFYV8MzLWT6Dy+vBkEaZlFN49RHQnvWQDBZnfFhvESEFJVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752833394; c=relaxed/simple;
	bh=VQZl2duikIZEbjrkt3+6XC3GMXdLfaS9SA5FZhsXqug=;
	h=To:Subject:From:Message-Id:Date; b=BRJ8v8ukbKeeuIQKsMpCi2PnQQPuCDsIUfMA2nPncj0j/m5itxGLHSnniclNisdo2Thtf32FY9RD7z1iqipSOqhHpJx6DcT65TpJVrH+IEzAQQr5/6fbijUKS97zZVS0/fhQLyiaVY80uVXtTu+TC/fUijkd2sR9vRNBMphsMTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F7h/JLiT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F7h/JLiT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D927C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752833393;
	bh=VQZl2duikIZEbjrkt3+6XC3GMXdLfaS9SA5FZhsXqug=;
	h=To:Subject:From:Date:From;
	b=F7h/JLiTG6R+7ss7kMDU/YnNqWxWnXl94bGFDzK/NP47C5i9aVW148ts/pJRXZmEW
	 Ok6OV+aZlbTIoyQmwUnOpVpwVVuVeD2dxnplIyrJ2Hdfzrxs0YAs2NM+t0LT/7kya8
	 8kOnG252z6noIj8pPnBOuqG3ulO4WNC9AGTlQmk6XrXvTLhVw7lnHByBe1HW7Rx+5L
	 7iwsCtK5LNX+M2v4V8MB8tp6R31c8blxp3q5MznyC0igT7D2dW2gXzKTC+YJt3vKXx
	 QyjwNp1DTTcifsG1iIEAykfhOoe56pgsGpwSXF+6wZSaREDe4CxFhVz9m7L86lXhTj
	 A1sjaZUfGkhSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F491C83F17
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175283339357.32357.16823277332772929665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e93214a0191aad2e9db0360c22fbdf6d7ace9ccd3db0fde62f1c4d5dd17c1a36
Date: Fri, 18 Jul 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752833393
