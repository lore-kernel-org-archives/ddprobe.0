Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 067331F8691
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 17:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774719294; cv=none; b=B2GsLffPqP07NRf7YV0kcSm2NRMkeXSdWBWI2ZOs1HR5kkZZO8RQlV1o5Z8+2GNxuEspoNFiws85ZbNzJGe6Dso8yscBbz1ikfoyzf4sahlwrc8KNCZ2yURZR8HiY5GBCGJO6jBc6qtZ/PkxeXWpaU6AP3NLKCMGEKq6mrO9oaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774719294; c=relaxed/simple;
	bh=D1FKdUjHaMxbaMskEazvD6S1QlWQyQacA/309nUgOaE=;
	h=To:Subject:From:Message-Id:Date; b=i+VeToTRbbxqACFF/phqxVrqvhKyWrj2F3Sz6WBrG0oZUxorqoO2uPaKpHeyuLsfakLTnu2Fw8sM6nmbOoHZO8O1RzeJ7Cf7w5l94Qohcgcrdddd0VCMOskx2t8/Q5MjN1K2rMd4A7fMbYhWGmLJwvoDhmVhiCPEBwUhrU8EKHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WvkayiPd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WvkayiPd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2928C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 17:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774719293;
	bh=D1FKdUjHaMxbaMskEazvD6S1QlWQyQacA/309nUgOaE=;
	h=To:Subject:From:Date:From;
	b=WvkayiPdgW0qRMy323GM80fPMStm8Zou3BEQj3Iu7lRAf1RUt000x575DM+2oDaW3
	 fzquZpQErYd8UO9gE8jHkV5rxlKkP7NseyhTO0slud3doXpVaLMfr7PPwy+0DOH7kh
	 0+cpZZR0OZAFSXjNd791Lws1qMjFyL1k3qmuOYCRbVOtDE6xA5gUOcoWczcxoRQ/Jr
	 Yzyo/QwiCeryOVa05eD0nf7EfmqakjrKHh/8c4wkeasXZPKJUEYbu7KzC36G/G2+6+
	 ZKIZYyekGlFVeiiSeGuidc0Fi688nG5P/UqH5zlsUaLnWV+yI+exLXQR13r3LylFWW
	 RxLmJvFdxBI0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A4E10F3DEE
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 17:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177471929358.6111.18032783991695289828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3969ae70d088e5d37d256e93636b2147af2faf1dcf7c90f16dde4f4a1d73fad1
Date: Sat, 28 Mar 2026 17:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774719293
