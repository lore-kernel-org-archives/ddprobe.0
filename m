Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 330683246E8
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 19:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779132034; cv=none; b=ragszooPPHsxjzKC4iUrlMQqMk5u+kkal/jD7K/0ALsXv5nlWHIFDsBflyTHc/MM5V4plsG9RmoDJtRKuM9hdZ9Opqk2V+X30VFDhYgMzj5E0c/tN5WB5IanMNWuba1cfgTOFY1WEHFLjYKYCN+sKD4O3OB0DSrZswc1pH3WefY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779132034; c=relaxed/simple;
	bh=9zbiY83dd0wiRMt8siq/zQfNNbVinFbpfEtTi4SHUAo=;
	h=To:Subject:From:Message-Id:Date; b=mavVNjtk2m8CKwXUttZMBCygogxwGxrspb0D5CueZ+qj/ktz1CDKkj3uOor/5fCELicaju7MuUQSNaVOLpTzgGcYVmE2tLYulH9nC9VojVlPKqvI79gONpBF60fKUo7j4j6q/wuQvl8L82/9JWIkGE7ypmcJdsl411dDg6mvK/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WC+CR33u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WC+CR33u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA852C2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779132033;
	bh=9zbiY83dd0wiRMt8siq/zQfNNbVinFbpfEtTi4SHUAo=;
	h=To:Subject:From:Date:From;
	b=WC+CR33uyTnWRuaHd7V2iHKGpM6u60vICcRtEJAnXxnkUoo4SSSZIYN6i4kltcSzB
	 bUkYJ38c5a/CWblgu2ZIgc4OyjgmYLYEjlKprUc3R5Ol21No/nsA3rK6yK/Uxocv/F
	 8N3reKkID4JGmmsPQORVG+o+zOagWQUdoZvxnjgnX288lWcDkWaefYpQlu66ERkQl/
	 GK/myN/6MprxVkGfZzOKKOLZrvdDuYXxlMuwVwn+yN1wt3VfLruq2DY1/9SvnSLM7b
	 fLzf6BdbQwC4bIBrkN2rrdXp0IP/Vu1n2s3oZYOlgtTH4PL3I/v6su1KUpjy2Y9x82
	 MXpDuYmQ1jYtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA37FCD343F
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177913203368.3251.2769526348984648298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4799248f79d06e5056b5388f1e3452f5ba28b7a94837379b34e10232232061c
Date: Mon, 18 May 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779132033
