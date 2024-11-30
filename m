Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B886158D92
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733009754; cv=none; b=VrQPD77cl7TVrS+htWJnHN9IhsQ6B3jYWVdUbE561Y1Dn6u3lOmDxXDQ1tsPkKzSGpISvHcG4Glsz30iBDWyAklY28ST2SrssIdYmIcURYXlL3bf9aIe1KXqxVHAaPtucuAH7c/BUcOpYzu9xzWX5p5fDCrUth27sGP/lmhaRjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733009754; c=relaxed/simple;
	bh=OijDsZCrEZi0+1RYv5kBC9TccKsI8wGx/hzx1XDFMu4=;
	h=To:Subject:From:Message-Id:Date; b=KSyCcUjd5xATlBH3M7KAUwF3hbzlSgijgoSlsbBuztJQ+xfJ+nXvzLfqnDovoCisMEZFkOHlOlRpCjsNPmyx2xSPzUYI5qGzDv1UaG6suUqaoiZLqXd5RHKp3FtMVmuCJocMQOxc8AxcyVq/cs3s+E+4ZAazVnEYuzG09F2q7qE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RA7Y0AA/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RA7Y0AA/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC881C4CECC
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733009753;
	bh=OijDsZCrEZi0+1RYv5kBC9TccKsI8wGx/hzx1XDFMu4=;
	h=To:Subject:From:Date:From;
	b=RA7Y0AA/CrAvKXeE1hNOOcXKoN3u+iTCRPwOkZ6iUPmztYod6AV9VJxohT+4q6r/3
	 Zwr2Yogms6TeEQQd+R7lEPY4APcRHjr53ZCzRsqQabHoV4tmeTOugj//lobdSF7l56
	 wLMRDOhuze9UjfrKtUXrFEVUbgQ4RbZutAdt5/dUj6jn3wEGKRZKMxTO4HNqP5e18M
	 uUX8r8izET+3vghLMv2zb5dHVhmeH4P+3qn3vaHeF4jEyDlk2g3RVxBXHvcyw4HNrB
	 I5cSLWLfdH7CWub0tmf8Xmnxkhoe4Mo8JCXpLhu4cU8fot2sO/0ElrvpY1EzdcWpky
	 gz3DitnrymSBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7E97D73619
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173300975366.21276.2043765138721719786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05ad14ac5da692979584218a3a40a792bf0c105272d4a656a6ec485d9688618f
Date: Sat, 30 Nov 2024 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733009753
