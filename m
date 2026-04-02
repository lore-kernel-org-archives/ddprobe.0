Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 175CF32ED39
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 10:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775126734; cv=none; b=EdGjbl6wh0xcpQ//GAwOKSqvNH9xdt3otsN8vB+gMai9rXWzd/De/2UFsaecxY+bLLbn1oQLzHR+Iye1Mgvrw2CaTbQi6+hK7Et6CnVri1V89AiYPgRgnXPGxutB2g17ioCGCFheAWFvs6GwA5CfGoeOqqogpWS2FjDLd6H8SlE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775126734; c=relaxed/simple;
	bh=5FGd6hd0Xmuq+FMCfRhR7gr6xlOB9N39YKoEfFP7x6c=;
	h=To:Subject:From:Message-Id:Date; b=rhF4Rb40lEceZd71C37iCOqtFmNS3Etf20uxF4tESSOon/DTuBoS6w9QYkpRMP5/gsGtG2DjxlTejNX2REKKUk+RMv4jCik2q4aDGpaGWJi/w1VnkskKqyxQHr3Tnl9zUcTLgaPnCezkVYHXgDVI9/hBKlXaUR3PY7TDej4O/+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QCRFAUke; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QCRFAUke"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE869C116C6
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 10:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775126733;
	bh=5FGd6hd0Xmuq+FMCfRhR7gr6xlOB9N39YKoEfFP7x6c=;
	h=To:Subject:From:Date:From;
	b=QCRFAUkeMJ3hO3sMKtZd/aFC35wqtyWpKpWvJW+zX0tB0wpQICdGQ7GzkI8bM6Ufb
	 h72sibC5O806qrqsDKTaieJZiveFa+O3ouaSAvN8jtlDkAfjAdrPA7hQVk8AOWhTyW
	 r9ODBGYlFjHLDqjZnfZzAE8IefZ1l9svZy8M9HcUNo0bW+P7kWTj2Y8zEx7GXb+d0l
	 uqldCr8hsrzdRW55bka7bb4j9dc2+0W3/rEPvPdOIJ1jQyQUbK1Z/LUvdJ6Xsc5LDt
	 9vFd15e+fgV74vc2ZestkPIje03xuxymefgYZMVMwL+h33vrN5kFqx4v+kGp8N0qss
	 1lmF8h6d3ttyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA932D39410
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 10:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177512673369.6341.8136433854052462578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21eaa5968db6e7eb3323d786482dd909b95f53ffc1e5e38f3f0d52ee8735afb6
Date: Thu, 02 Apr 2026 10:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775126733
