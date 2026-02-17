Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26800176ADE
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 04:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771302894; cv=none; b=Av0tZ5CYLQZpv8WiXlgPXaSrgi8I8eMdjWn5/6yZB0RPk6J1g9L5Sl6j6xfcrNDdzhJYwvEOk3AyPEnSnAHmAtH26lwvfQCVHi7pl3NULxJ9lzz0s/+THh/EiSC1IFYn2+T5rR22Qvna9HLOCro7mbc5MmHVbQyeUxuqeeqVBQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771302894; c=relaxed/simple;
	bh=jN5gJSZ56Byf5rr5P9OqjVpnsshN6TY5bdrpvWKzE5A=;
	h=To:Subject:From:Message-Id:Date; b=IlG0UzdGl4ozOnpc3JSRVSg4jmI5kkZjujPvVWa/FpLM0brnydMwAfOABi3hPmDsHOUdwOeVNH97TDF4eswoEEFt/lfO7mCgouKY2cG92JGbbjTOWxVsyIvZHGw83Cp++y3YorXBgmhcc0Fwt7hTwoalurEPUL3whZTLd4kOpJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lg1SufcR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lg1SufcR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABFD8C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 04:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771302893;
	bh=jN5gJSZ56Byf5rr5P9OqjVpnsshN6TY5bdrpvWKzE5A=;
	h=To:Subject:From:Date:From;
	b=lg1SufcRvDEQ6ywT1zKp6uD6pPvKXAeWjmiJsxkew2PWgZ9Z0Zga4gPQ++i9YjDt8
	 JZHju3q0bxUtAjU1wwK3UqJJcyQFRUeYYB77Y4vJdxNC8miiurcQ9KMCo77rmspR6i
	 ti0ffZdx9/swv93v3n51fb4sm41e5sxG5CqAWbogWvaTNV4HTrJr0kobnkg+QebgK5
	 WAnxfayPJZHaEIRgY3y5zgie3L//wuOLz6s27dMEoKLkDfse99rSzD1qUgl/DIGxVK
	 tu8Q3kzCi2aJ6vmV4E56iIifkp5+w/7x3Eejxsd+255Wje/jqkDcSWMFWLHo97DGoA
	 4ukl2bMrH/onw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A750E8384C
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 04:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177130289359.11487.7953350802434393319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a39cb52314ebacf801115908962408fa6b66a244ffcbc73b121170fed23373c3
Date: Tue, 17 Feb 2026 04:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771302893
