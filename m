Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8114A57CAA
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 22:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717452923; cv=none; b=dVA/seHYRh5YF6G586T2uFXefCZilPJvO/cfVuzEWSGdcHPhVkKLUyM5Or+eZsxdwEX/xySvdQi1MOXfjbMORjFTjz/di+fozYa6pLETFiOrpc0aLoZps0QeY66zxE6fTOuaiJ7TJNdmH+uT/dT9KFlqCrERcLoPkHUABmFoEP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717452923; c=relaxed/simple;
	bh=Y2iV9EfFhhW8eIDGK6dYJ/2sTIUVJqjfuCAIAKY/39E=;
	h=To:Subject:From:Message-Id:Date; b=f98jjsvVxSRwBTWp3k7XQ3Kjt+cFQbgGsWfhHEp2jUBkkmagiLPx7zk6i/jiOf98e271obcArJ2zz5G0Cd037JVsRMaCoA6VY/PvtGe9MnP2KQmrjf2Sgi6vfQ2WbFiCt3AtRr1lwxfvUKXJhy6Qv2j6x6U2xhEbIc0HT/xLYgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rkg4tQoA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rkg4tQoA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDD0BC2BD10
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 22:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717452922;
	bh=Y2iV9EfFhhW8eIDGK6dYJ/2sTIUVJqjfuCAIAKY/39E=;
	h=To:Subject:From:Date:From;
	b=rkg4tQoA/5M1Sp4lOz/nxZAKrLinp+Wv0CZyiaJ0eeMpsxiQg/Rz3jLdjbmKzoXgf
	 AlWeqwnCa7OIMkQ6Qo4U6dRBWYEzdW7SDLR/UpdAwBVK5q8Xl67xhg2c224XF6sG4I
	 3QG7+fTVSSeLK4IhGJPSBRTstMCc+dPDOuHqIO3ORwzTLvxTeVKYMwW0bOtKdRZXV5
	 p/I0lbLtmtvuEHoHTw1T3EyRVdw2J2JCw6YSfudVJykUJ6ENYZ4by3BLZvWUz7KOoo
	 XgmXrtIhEfUFuTmsWvlyn0AgzagzejtiDUGQggWyu54SI5zqd/gq835iYEq5I0sYo6
	 dTXS637ZFgOhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6269C25B75
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 22:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171745292279.20636.2867025094982350950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9268c917be9f9cb052ab1999ce074a30b06a5c206c51b011b75975e5eeaed52
Date: Mon, 03 Jun 2024 22:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717452922
