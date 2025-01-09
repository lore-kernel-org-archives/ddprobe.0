Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30B9B84039
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736455554; cv=none; b=bTV5NZwlR4da8hskmj/FGdILgPOC6QlLv+pD/qimaG3JQDWhvpjt2UKYcf1GCpi8k1fb93KnYaCjXCCj8zpCfbn4RQMN1rEBpZm/F+AiGrdBlRgdJ89vXRPVMawZFMHG3pkxbx9kaRDFuHM8T9RMu1l/9lHBaMUvd/D0KKlRJtQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736455554; c=relaxed/simple;
	bh=FrwDg5hOZH6AWCwQgGQLHyceBsc/kJcLXvYEWeHJl+I=;
	h=To:Subject:From:Message-Id:Date; b=KTV0n9N5xZuJJcKztMkFqAThbzO18ubTsxtOsn3GlTRNIUPr2kJLvV90ZL6XH2blTjdOXECdcc2N2yicKNhF10MO4sry99NIcTHc9iJ+IsthzxoFO9Qet3CoFClpTrX9ZF7qQrsEH0degYCPrxLkv8HTYvdgGY6hznfyYwFATH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kVyxrr4z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kVyxrr4z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADB46C4CED2
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736455553;
	bh=FrwDg5hOZH6AWCwQgGQLHyceBsc/kJcLXvYEWeHJl+I=;
	h=To:Subject:From:Date:From;
	b=kVyxrr4zc/cp/r+CbVckSKmo4KsNbhb/vGJ47mz2hqEa2Sr9wjKtuDF8reOn4ywcv
	 dhErnXL01aa0TmUMbtbw0SuWc7/+rtzHhAt4OI+MKa/LvLiUNngcsicQKMLNj5M63Q
	 21cKHqz1gaSw2rJ1dl6tNQkd8Ba1LRHwqz4NHMONAcZ5/ytOJ3gdR1ucR4ujLcpGZW
	 MP7fFjNtF1426Ojkem++DnfGiWFWxNvIzoPAZ4aQT1CrkyqC9RN+nbn9O93vaMfiWH
	 hxaE/+S5ApQx6eTMXJkfMpmdytTcseWeXd/faLrbhawv5M01wy1h3wSpauDgIR5SW9
	 e40gf6Oh44jaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9550BE77197
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173645555359.29962.10341348915189925982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73444669b2b6d48255fe3ad716b8d353b993fd125a0191072b7fe5083f48e631
Date: Thu, 09 Jan 2025 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736455553
