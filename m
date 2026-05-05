Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CD4817A2EA
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 01:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777945054; cv=none; b=mrnRttXjUbXY/jbFAvIHrqI0/jdb3XNhWxZO4zUuokbXdlnwyi+APJBGXg+MqxkmnW3yQCOEVFMo7sUiOL1Md1kaZuHWQiJjdjY+4BZD4ewZTIw8ods2Nqjqd0xtqHAAQV9l0ljuCqr18Oe5P0MJ70S73dgUTFdoSWKamZPK7D8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777945054; c=relaxed/simple;
	bh=+Gt1+xKA8wKi7q0upRs63O0p8oYQy4grLK3RuafQWFk=;
	h=To:Subject:From:Message-Id:Date; b=LidXcQrvlbvDBkqavkS5h/Nb4ZCH4uN2By5hXpVqwIU0lOF/JysvcjTPL3YFCPZUie2oBM2Ha0zwuG++XFziEOuN9B52AXfooHvBBv6NryYtsITp48fFPilzAwXseou64PcEvPkkyC+rjKBo2JJKTZISTP/sj+6+gD6S2FByo0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W7Yhgvyr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W7Yhgvyr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA907C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 01:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777945053;
	bh=+Gt1+xKA8wKi7q0upRs63O0p8oYQy4grLK3RuafQWFk=;
	h=To:Subject:From:Date:From;
	b=W7YhgvyreGICgGAXIoAcILpQhIipi7m4R9GeveK9EA8heSPbDR3FrIE1Zy5HGH3FT
	 nEJtzru2yCdI0aC16xDCWmhZ83vFZDzv9eXPQpJ0fjxNM+x11hB5IIPJJ909eN1yLD
	 xUFv2pdIsBq0iAvC4tloleYIXdxiC+WrYl85JxxEvZtxn3+cUqYabz3p1tvIHdyAMS
	 o2KEglavUyxpkFyW3IchQP0g/kq7zU7mPtEDdEe+bWhT8hqs3Bc0TFAOHKTjdb6ita
	 DVpBG+OHQvyczhWdMhIb5uG8DEHptvMoLl131pkOchlZSlNhQYfA2sZSelIiL425DI
	 LvYigafCckyRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9769FF885A
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 01:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177794505368.6489.11204197953039838922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e0137b4be0793f34b634764a7f817c4fbe4303094fd8e49c04b06ac03f86b8c
Date: Tue, 05 May 2026 01:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777945053
