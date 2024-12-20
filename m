Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E83C2163A6
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734729354; cv=none; b=sCxiqPu8agMQvYk/1xalXCCkqpot+wheBHQxUkvRSCEWDoCPe0kUu4Cr2dElmGE88axEcLbRVQFQYF/MgPFcNmlIzdEwkYqXRLNOHhm2/B6hzPxgIFkJHbH6I/WVNL81GELNK69efALaglKa94YuQxHjkGJ4qKEaDvtWU4sBfV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734729354; c=relaxed/simple;
	bh=5U9//8pO+XQ3QXdKluOuFkwHaCPBOHBEQ2wucl792jI=;
	h=To:Subject:From:Message-Id:Date; b=fWBNINGrctJXL9lsOYnsn8jM6A+C1h9IHt4G+vsQIaSKBUMG5e6KL8LHlkJ6m4OHIx13Rhs2lMZuC13YOwzy/e0Pfb9Sca+tGXw7gPsIlElXEG/gq6fDZjFjPw4/g/1ckK3K2OPhr0iMkmAfur56g/gLpEjHfvH//406yjE0eJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QUjc0OSH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QUjc0OSH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9327C4CECD
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734729353;
	bh=5U9//8pO+XQ3QXdKluOuFkwHaCPBOHBEQ2wucl792jI=;
	h=To:Subject:From:Date:From;
	b=QUjc0OSHQ1SHmm++wvgg7OH7m0d1JD8YaANCA3Aa8D0mxiKxmMdE2dCe3A+XzPuxc
	 iKkEFuef6ShyePbzIWFTv12FuHjnNgwSH41q3LRYHkE0tWsUnZthqjhX6ZlydprdW/
	 rKjSZ+IAHWbAWtoJPXaUw9DKDskS5svBXRKUaaTbQjTMuFy5JqCDjnxioATNaDXU88
	 mvFIrefOxDh23imjLR9ge8WKaeu6Nulj564m3pPubhx6XFbzbXabYS4sHfUOZqJ/Az
	 ByhAROo2aYl/5S67W4KuOwSf1cyO93YzR6rhJy2pXWVN1SflPNISTHaEh2Ggj0JwsX
	 x9yHuIeCaUYrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95EB2E77188
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173472935360.27362.12121056590690750485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af91c5637d77316e402c22f009d8e0afe9c9da2a123320e189c9bf0b438ede40
Date: Fri, 20 Dec 2024 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734729353
