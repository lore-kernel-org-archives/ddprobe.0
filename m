Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 341871EB193
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761028194; cv=none; b=mE5/krBlI3vzLdRaK5+mNb1r/cC0z3xNG1ro1mREEis6erXW68l9J8ZmKo/4uuTvSwd7JW1JrbORAHvUwPQibiMJzOMPkHCtiIHAsL7ULHK9GloFaaJ2/RkrnQ2D4lcrTXMX+UeAUFsZkfX/ln4vht5lULMcVnRI9euKL9XCflg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761028194; c=relaxed/simple;
	bh=BPfBUSS5Bs5OMbJzpMiS2D7S7o1PJ8/obNpfCRy/MEQ=;
	h=To:Subject:From:Message-Id:Date; b=QUlvy8YrldpNKKz2Jk0Zgbj5vCICRrzhjzbp0uf9lQqlxP8bF9Z4slzCqzCgwyCjDmLHhOND0Geo6ifNcZVjASswfts4XgwI4/cWJrJ3DAHjODASxRash+MPD/n8SD90iJrawxY8Twa62Fef22dsI0Fo/jsvyrY9NM57eOZkCc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f8MxgLt2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f8MxgLt2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25CAC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761028193;
	bh=BPfBUSS5Bs5OMbJzpMiS2D7S7o1PJ8/obNpfCRy/MEQ=;
	h=To:Subject:From:Date:From;
	b=f8MxgLt2ri9i4pPTpsHqj/M1+HuPYhUtnsX2+tEbemlcLfBnjgXrB1zVdXck7mExD
	 9uq/gjsgfHVqGZip51rGvvEhePv6ZdAvhbZuLcMR1GkAK/h6hrgIIRwrtnhh3RhOYR
	 NlVwE6TUf1I/XlLbraqWd+KLzXTGgrYK//KyAIlqD0MiY768IgJOhUK/QGj1GwvP04
	 spvOs4gDXuKlP7Ifr9FeE9LOtnzb1ibSI3xR4NIbjg+y1jMZl8Ml0DwKQAx6/APR6O
	 5VpL3J5tnhHS/zJbAC1VPYjb3z6TrY7/sjWp1dD9FzPaWNvFjzmoDnNSYaixq1+JVu
	 hD82jbymG8Z6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900CFCCD19F
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176102819358.19833.17346012189680320594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 323d0c36139ebe05d975d776cd2dc14fa479eb1cb10c0f0b11a8680204c0bc5f
Date: Tue, 21 Oct 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761028193
