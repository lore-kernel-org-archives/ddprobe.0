Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61E37D512
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 10:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720780703; cv=none; b=msNw1oGwhZehEJ46ji9ucLk08PAkEVB/MjAXj3/ijk6T/FaAVvA/ZT5/+HhLSlLnF1IAUuR0h3G4HBxmvb1jeGcR8nzgjC2et6rocnLCGKXH85/dpXWhV/TkNUs7x1cCTGRcZJmKCjxZK8DTbOKA1fsz+zUc3j2f7bxksCsN1hg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720780703; c=relaxed/simple;
	bh=HVyIwM92hS+WVf0n7De+yE0rCeRZRJSvB+nOorLkTac=;
	h=To:Subject:From:Message-Id:Date; b=tIsw8qUBpoUR0z4QLLFodCL9CrkoFcmURo9WhJseYwErRAMTVwjZgJvzledzXWsXC65OH5z3JlA777LkxfkCOHZZ28tkcp5or55pyM/MXXyelJGQxE2rsFIOyymBTQbiMX+AdT+xJsrKzw4zcI+z31IyqQsyc60cJM/f8HuciV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r2VotPdC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r2VotPdC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCB01C32782
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 10:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720780702;
	bh=HVyIwM92hS+WVf0n7De+yE0rCeRZRJSvB+nOorLkTac=;
	h=To:Subject:From:Date:From;
	b=r2VotPdCV1AFvncuoDO92zrCZKGMEMHrCR3EPkES1TxxcBxk03KRzU5OsfB8SHJ5f
	 5ztdEl2EIB/CZXFcQShoNlOVCKUYfa/VidzfrRovXH42bPaaR0Sk/zVWgT6KK20TlM
	 sb9wpEHgvMKlRtB1ZguR6tG06rWeEi09Dmlm3I6xxxfbnsn5EV6eafTXE2xeDOcYAz
	 QE7TNxDXmdYsK+yV16gvt8h+OXAX7tz2dV3340jbJUrnfuw+Oy2BOBQwbuDujtTK99
	 nO3lxGUyBFxfycQUCYwut0tWQMSQNVMMukMYz7qrGKe0OLfdC007Y/qS3A6P4SOTql
	 bIWUfR9SLii9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C64A8C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 10:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172078070279.2177.14267169173343362205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73c560d903109aceffdf60f352d233c118f82887d484ceda5132989f51947100
Date: Fri, 12 Jul 2024 10:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720780702
