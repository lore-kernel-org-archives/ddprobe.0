Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21ED9221726
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 21:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772745894; cv=none; b=RlAHtO6wFbAodR2ssqXyP1LGPPeMS30GyznuzkMzghO/q0kkARQvjkTpAwlYf5qAvi2C+W+n8tH9bUeMOz3EIsYFm85SxpUlraxtYJRrU29mGelztuftYzGNk/xvMAzeUoeOOlBwSQ5E18It7PX9r4Ntg+LyT4orCZVxufah9rI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772745894; c=relaxed/simple;
	bh=vrRHGTN3IVwV+bLMFAhaNbP3d3wKGaK8Hi9zAHYHSV0=;
	h=To:Subject:From:Message-Id:Date; b=F3FaQXEij5Vaw74Kb5S3JTtpzxlsZvuS0p5vP8KZfK/oEfQNH9EF+rNt9wvuwV4bCw4Oq4L/9g6+DbDMfFn0+RalApZXAEGQ/gB/5fYN94uTeyGhn8ENiEDzTRRaQcsDoTX5t75FwMkPe1s68fokQa9oi+nGSxbxHQahH7vjp+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VPsTdd0H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VPsTdd0H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7AB3C116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 21:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772745893;
	bh=vrRHGTN3IVwV+bLMFAhaNbP3d3wKGaK8Hi9zAHYHSV0=;
	h=To:Subject:From:Date:From;
	b=VPsTdd0H2snY/2JVD8Ajt+GeAYvXmKpoYrSOqo1W7N66kZkMs5YXhrZZwPCxQ8Z5i
	 nnKToZf9pKj+5WWJnOVr8WKl//KYWxOvPDhimJlTPlxlMZPGqHcjOarnELk5Ayt6Bv
	 dqI7Y7yZxKYAiLmy41Z2tNw8eZHKMtQH66j6Jb99dR8tGPBqCHLUumpJQLQuTlUjCA
	 d3oGZYSz5IqL9+D9WStLRbtPtPkpVUsICDqMmnpaQdv8ZfJV+1+lDcLwVyrBnvQGfm
	 c5cPlu0ISlvfGJuKI2Wu3xGC5K2ON/KZ+hyaQ8L9R63p/NIoDgSD1XeNU0i6sYd9dN
	 QSRn9NokS45ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9460BF47CD4
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 21:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177274589360.19943.10102540990706194477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a63f0643bf3e87c1c78d0db07ea681c61975d614d366509b1e2452ff5510e397
Date: Thu, 05 Mar 2026 21:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772745893
