Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E2183921E9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 14:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791123634; cv=none; b=S6gMBE5o6Odks7IRlqc4oN2BsgAfSkISFexx7KAfGQqKP8z+z8xe6HIO1/FiFLV/AwEQXlBwgMdIxaaWLymWHa3E0b4/NZt0EVgqJdbeuwgt/nj7N3NwtXH/ERJ1ElsaJIYqpcwokkn0gWkD8f4qe73UlInwiSnJVyBS6Mw/LQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791123634; c=relaxed/simple;
	bh=xpfbVwmSoVGOuVXv5CpN6C5Kohk7/4WfNMUEt7G37mc=;
	h=To:Subject:From:Message-Id:Date; b=lIJBfd700KxRlFprjKAdd++t+ioWFzC+Ky7UzT4SY7KVk3PyRQjpIf97wSU48VHj75ByTsDhAhQkD6M5AF5kNy8jDno+0f/r9l7LZJB+3oo9ObQe31Or3TJHggnIfjvT5Rv9K/UMoS9atJcWdoB48J2HU6rSJgDcjgncEhzbz4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ChVPslfh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ChVPslfh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCADBC2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791123633;
	bh=xpfbVwmSoVGOuVXv5CpN6C5Kohk7/4WfNMUEt7G37mc=;
	h=To:Subject:From:Date:From;
	b=ChVPslfhpOGA3dcjk7ffXUvH0JjgxDFRygP0qJilTx8y/0941LnJQjyVvMyFtPcto
	 ilmxQdhTwZpALdf/iEDRvMQF1Rm0x7KaQJcKZC3nD/yqikB1VvTTGu92WDnAL1Gnzk
	 BI5z8ABgs6byFV0Z2aNx/IStvM/tI8g2AYzFL4kqBM7JJMUvc7gkWrXUa/CRhG2R2O
	 kQd1/+YodlcZbTaGSdVtPQ0qNCr95QJfe5OqeOwQtIPPWkZz3Xv2BQ/rB9nqnxnPAD
	 2NGeKj4dCcIWesNE3YqHx0cgBUKrdNf49hRXitz3f0OkJkxNED3QrWZmAELBO7gtKh
	 rw5Dn4Vt9nRNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C13CA5FCE
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179112363368.7672.2144876449289868182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20fdea8bf84a6b4efeeb00be1b4c65fd8f42ff828e39102c58398ac49c63c3fd
Date: Sun, 04 Oct 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791123633
