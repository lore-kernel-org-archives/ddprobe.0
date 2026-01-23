Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F7BE328259
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 15:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769181235; cv=none; b=LUF8cd19dM3vPzaiRs8lO7Rd7PAtvzsbcqqeYsHtULRbUji2KEbCnnnwvMmh3E+HnKYWNn0DvHtirJ/I8RKFel8A/vK+R+Lo3PoyqUSpMyPtpswj+f5wGxy+OfyzrIe1xFv86/CSK6uQhAwKQudCSbC5gwl6TG8yOsUOHy4qDeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769181235; c=relaxed/simple;
	bh=Pox7Uu0dmrO2qTE1lHiU+2uiQnUnYmv3pkmSUfEhEwA=;
	h=To:Subject:From:Message-Id:Date; b=ERVbZoO/8WWD76RYRanq3K5lmQvAjuyjLX2ETcJS5vZRavZvZ8QpYVnv1zln19IZ2yL8AEP1gYjdS+4Ft8bi05vfv647Ah+06PIW6hswaNcd1+Wwv2Nhelm6E+mSce3K2kJulm0vrKRwnUAr3XVUeL6nF7IPzrOA8izwJbBUYiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E1PSsBAJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E1PSsBAJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A075BC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 15:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769181233;
	bh=Pox7Uu0dmrO2qTE1lHiU+2uiQnUnYmv3pkmSUfEhEwA=;
	h=To:Subject:From:Date:From;
	b=E1PSsBAJllDdDvapAdlNoQ9jseecNTY/nXCHbyEM2uy2OqKwhMyNZ1Tm2H2fyhnFI
	 N4La2J7e44DfdefsXHPMd3LniXMuA2FGY5d9TYsEiW6BMqN67U0zgGVdCcu9h9QcTw
	 IQpg0yI0Xvwue31bKQgJa2Gh2I3Ut6JlhM+wgShgWuOovWERWhYkZgqFO+mwHHBo76
	 BzcmEFQnhP0SWFWml45spveKEnvxaC0UkU1bO7C/joZDkvcnHSiEnG9YVcP+OBpAUB
	 IXrFK2vI1CSE1PZTaw98wNjkzOvs8r3jOX4CApYitQGR9lIeJF1GR3qvTgy9O4RbwS
	 aB06oSLA1dwxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9090FD74EDE
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 15:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176918123358.673.17105581472579162386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52eab3acb30e3b44b4d67fef9f29f38bc9c03ba88a38d61a8e61817b9a153b74
Date: Fri, 23 Jan 2026 15:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769181233
