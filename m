Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DE57B65A
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 01:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719365603; cv=none; b=sFmUTrmqKJSCROpFHhNCXtua9CHpqE3PEbnxKSVI2dH9IXVUJ55opwjoWNupsWVpprE6nUuoZg3XkIddb8hvdzbXjGrWr+LSj1O8Cz9CsfrRx2SRaqR0eKdMGbyolexqV8CGlCASToDGxpyTzRy34LivO6OTl25gcQR6gpLx2ms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719365603; c=relaxed/simple;
	bh=ClLW1DgGqfbh12CfK+G2fiHQRU417uWAZlfQkx3hxpI=;
	h=To:Subject:From:Message-Id:Date; b=GvIkYZaOLbAwwZxf+NJObNWam1mMX3vymNTX5uZRHdr42No5r7lMQf2a6i4LiU/C5dCS08HLXi9ZsSOQKDNUT1slDz7aF6nPQi3EDIaeFGJaava44qdAMwSwacp/3fZt6f1/CFNxPcgwvd4AuZOVAwTVTHKFiIGIIwD4YsOY5Q8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G0TXEDf2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G0TXEDf2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD4F2C32781
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 01:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719365602;
	bh=ClLW1DgGqfbh12CfK+G2fiHQRU417uWAZlfQkx3hxpI=;
	h=To:Subject:From:Date:From;
	b=G0TXEDf2H3DDf8UAAtmZYEXeRcZxCanHczTWrKnRuwsl025WyfKerVKP/t8o5IZn6
	 u0rOP5/AEfiOChha+uwEfnZU1Objy8AP2+viW6OsQ947septse1uYQ2aurmVYFqeEc
	 gL51PLGn8bD0XPloLiF5gu5BuJFzFn2Ue3awKnZLKw0UCEsn++lHDcv8l6ljtiJQB0
	 qa3BNC1RVZKeD8MS8UxINMxzHOyU7VoxTHOCLFetIaMa9PJDdJ8f3EHjA9zHrrBxSo
	 4RtbnBE/c/UtYQEgiKtEm37Hkjz5nEQ/l2Utnz6Os6h7aNeFQOntPQh3g8K6mHxCvY
	 gg+nEuXlS9vhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C79C5C2BBCA
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 01:33:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171936560277.32041.2039481548973839226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f3c4fd12bf9a105486be6eda96e0cf8f9f5d5c416d6504d8ed0c7fe00336a38
Date: Wed, 26 Jun 2024 01:33:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719365602
