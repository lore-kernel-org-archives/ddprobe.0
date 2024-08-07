Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC2FB2AD16
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723010153; cv=none; b=BEQr7sUq6/w6Iy9C5iBO5UqUXYlcaHGlajnxNK6CsDNgAFIlcoq6hfv3QfrEBKpI1uupsAotvI0FF3SFgHlXvDpJo503pFMaRy4mZC4rU/Br0G/J08iEiLZnlr4Xtz43lwu/2C3tRq/2EnmjCZOZ8mXEqjwwmuKgl3/Yom/Zg0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723010153; c=relaxed/simple;
	bh=LabVGRzA2jToZMpFfU9JQNuDqCufMro3oHrjdwmVJbY=;
	h=To:Subject:From:Message-Id:Date; b=F5NCpRYxD4jxiSfZfXqDCZusuC+0MNB6IkPDEPObuooYdxHWppeyYNej8E4NSK4LzsJEHkIVptgSD9D581qGbebbtGfOsC0V6PxzP8Gg16oM7jF4wQSXhMvPkgBTiNZ2VfvZ3Ln1Bjwv41yJxRaTtsey9Zu8/0eZegUxGnkt6dk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VQIdy9nZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VQIdy9nZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9700C4AF0D
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723010153;
	bh=LabVGRzA2jToZMpFfU9JQNuDqCufMro3oHrjdwmVJbY=;
	h=To:Subject:From:Date:From;
	b=VQIdy9nZhBHJoCXpMw6fgUcJ/ZZna53qn/iIWURltTyvcQTd7gFOzNRipb3OyVUNP
	 coMo1N/yDnpnRN/zlYHd7dzoysEQZv2iRhSIarSXX6ragCNXEfwLnPjnDq39rFEA/Y
	 5KeWmNPsbepPJZGzlsVgJhFgDYIL0MlhaAnM0hRzM+2cOi/4CL+gciNwa9V1XkL7XR
	 YsDBUMKGZKrS88c7p++CpcBeMvARX8j8OH/29E4W5uejaysXhp5hG+8BSLzyUEQaRf
	 goec/8knHphY2WHW2oSRymokoQrnD36mIpHKOWSRyYLwZBRmUWBtr1GCdA0wA8SLS6
	 CB3G27AzQdaTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BBD7C3DA7F
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172301015362.8454.8699775205249817322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5352e53e1b306eff1dbd4b040f4a69dbe1e3b24c39cb855f29bdf20c457ffb22
Date: Wed, 07 Aug 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723010153
