Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 415B71E0087
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738698954; cv=none; b=HIJR0tr7mfM+KshkG3lo6RvGZ4uNjkwoUIZ3K6Pn9zfPiohp04o6/GS/LtNmrMUBMG9U+HuDsaJx0JsAGjCehvSgVHaOqAtYO3Xxq+Hf1kjPpjeIOrDi3f9aeuJ7l18PpSGN4wufP0q7LFnENOcvTKh+ykubfSvPCFCM3nBJkt8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738698954; c=relaxed/simple;
	bh=CjpPD5eXPDnIg8Kvg8Q85CwzwIeiTcBT53NjoshDwr0=;
	h=To:Subject:From:Message-Id:Date; b=bjq3V4kXbiB3L3kcLMUSKtpV8kadijLay4lhMNHw2v0J8J/4NLsQe9tYFfOHVUxGxpmTQeArkpjkr4IgUNJaXOTg/gxhUsp0WmGnQn9tWeXct1AV07Ko824h2ca2Q9KgV/RBf5DARtBywVOaGZ41NbBtU/eHEoYq8agUXmcYso4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MpMMCahX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MpMMCahX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF20DC4CEDF
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738698953;
	bh=CjpPD5eXPDnIg8Kvg8Q85CwzwIeiTcBT53NjoshDwr0=;
	h=To:Subject:From:Date:From;
	b=MpMMCahXDctxU6RAuI8WpQAAilUpzTDGXD4s1PjCMmuEPoc0idhjwda1J5yQ45vbF
	 9XfvILGx62YjZQeeTJu6uW1UnLb7VAhRapucfsrdZldNyqCTaPoYNX5aL6egD4qTQv
	 sNpPBi3EqllHbMK8craLon5MAYqV1dS99l9xrQm2yCvvBLvR6Cobzo2edAr3OSFfSS
	 Ts5km+vuatzSZty3haixKtHtOXGXxZvx8LbqocNsFcxaKNVRXwRh+0tdHCHGARvoIj
	 9ikjmr94nTotpWnMrDFW3dm178b7y8eoDnqUpSMSDM75YY9WKKzcQNEwZZo7GRReHv
	 M8IMkNQJ0+p/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9663EC02193
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173869895360.15776.229868850595634438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf286ecbb5f7d5c3997d2eadc0398fc4d29d8cdafc53464f8d2308107aa031e7
Date: Tue, 04 Feb 2025 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738698953
