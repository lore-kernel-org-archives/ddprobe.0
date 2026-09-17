Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30B323D75BE
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 19:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789674634; cv=none; b=XSURNXLxH45LBZfno9dgX1nlVnqdm0/+VCD95RXyZQ3kTY2i8vW2URwylkt/EoB6pmzM6t139QNvyn5hd9SLECwxFwc7sSiIpFirnJin0QcbD8JSELGWeRNT8PjsSrR4tuYHvZCQXA37RDG13WgCWORFPdnUOF8Lwg/VN49xNPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789674634; c=relaxed/simple;
	bh=CLIWDjPuhz7iR2LcHf15W0ZUuISupPecTHLgGEIUILw=;
	h=To:Subject:From:Message-Id:Date; b=htuq+ODVki/4afhpvHhi9+ZwfHXd0pCEaum3x9SZPloQtEKkuwc+epjFB/iGjbKu3JeK5mRPN6wtx6JQuXh49e9DElxi0o+h+JLnLPz+nx9w5CtrV3hfsmAtInWMc9Qmc8g9fkVfENScVDG3ScstPApE+aKxSmTBUkQt1wDU/Ls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HZdWCcCT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HZdWCcCT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6401C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789674633;
	bh=CLIWDjPuhz7iR2LcHf15W0ZUuISupPecTHLgGEIUILw=;
	h=To:Subject:From:Date:From;
	b=HZdWCcCTsvpVjjpNlBXqmUY8zNgyUNZIluavhbP72Q2wxZA8/wwv0GXX8aXP9J4bd
	 PkGwaMYNhxrH3Hzbb8NEVjlB+kc6pDAX1hDJ1OXg2BWpKIcLiA0KDqCmOHYx2mSRja
	 Nnr/Cjt9OWMQzsPuaHdxM+FH3jit+N7UhUcIew7ncNXypbWFReSqb7/qLITdLcur2E
	 kMPdtfG3u8f2HPfMtgtTQac3P8Pk7nPRGXVygZgyvt38iG9zbg9uLtAuVfrWiuIqoW
	 wXbFWQ5nsxrBUTuiDGRM0bHUyFiw5XpB2QzUu7gK8N6db3z0FzPWlD7mdsSrAoJTc4
	 nCsaiEYFsAHRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B19FFC982D0
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178967463371.22077.11087476898090472584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8034fa3dd55e60f781330f7b793e46c31d7445b6e05eb6f52d471fcc9b048cda
Date: Thu, 17 Sep 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789674633
