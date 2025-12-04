Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A7BB17A305
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 00:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764809574; cv=none; b=gw0xObgNFFnK2ZXhZ8jev1zYa8H83pfouOEnwd3opyppthPBZKD2SXfesfBbIUFFNEO4OZpr7ARvkDpmoTrtiYFMjKqFtJf/kStKUc6yyoUWb+4+zXIFxGOfc6aIZ0/VyCQYqkPNR0S9niWWC3dMYhGlJApiIFFIqIDTC1NwZxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764809574; c=relaxed/simple;
	bh=jIQsxMm+5ApL4LvDf29AvSW+mngUdy1q+xpRYpI9BR8=;
	h=To:Subject:From:Message-Id:Date; b=dA1xNo85gVoWGms+rq3ZoF4tYncCLx1mgJniKK5oDx0NioExYr5s3mJGGpg+06qr0XSihahex6mD/ti/QpwfeLushM20XKbyqdnVrvl2qZfYrS3eaK8mhsh3C5ZLK7MLuiXikMZsbfNTGbAGrwSGi+z2VMbjwT7MCIQtC0nvbuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XruH39tM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XruH39tM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E40C4CEF5
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 00:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764809573;
	bh=jIQsxMm+5ApL4LvDf29AvSW+mngUdy1q+xpRYpI9BR8=;
	h=To:Subject:From:Date:From;
	b=XruH39tMCUcqxOz1mz/w35BSgFxQWzcedUL2aXTRmtZ9W2zuGYgyRRLtIPzFPi2YH
	 lyu4otAypE9cuLkIiy7McmuRnyUYFVOizrrsXJrRQX0OAsDm8cghmiMb2z7+0mUJha
	 yI3uG9xTvNiCSCAlvImxO8CZFWF1isC2xSOaXSGxTldjQqm50bXu5KhSHRd2Gx0HM9
	 4GCoRkIrRThiiJ+VmN13xRUFpn823bkAenbSINycIHJPiJfKk/6nt9SB5e5GGrvjT4
	 OMs11htXnAp1Zkktnc8809IXOQMQfjDL5SWSEOG94xF/h5zuQ1XDslcLzuivqb6BDd
	 XgpT6MIeSQzGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BACD1CDB6
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 00:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176480957359.4627.12773417111478153418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1ef963149ed5724e9a23b23f627a012ce37a26702266b00d7f30370188c9595
Date: Thu, 04 Dec 2025 00:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764809573
