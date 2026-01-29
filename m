Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D80E378D88
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 06:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769667834; cv=none; b=aG08Su6aT9pnogUhoMGlb5pkJ5wVZPjXmOI5pJ2OlmCbBEKZAAvE+pXLUkBs8EqQaBhp/9ZDNFhummtVGJrBqNXK31N2cxFA/fWUDOBJ7Al5rgAkCFBjsUdGcYBJaIuWpILoM/kC9cNODoGMotyPfPNxjGNh8Zy4mWmTYMWAm0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769667834; c=relaxed/simple;
	bh=TR7wAUANu+/RoQJETWJEvM8XOphW+z8Ae56EToOUgTk=;
	h=To:Subject:From:Message-Id:Date; b=tskoFnaTVb63X/lZrT7xO9geE44d9OALbpi9rbbGOOmL9cN0uAUsebd9GEFpQLETMoDjtIZJuqLGAdlS2ml9HXc5gPrI0cK3GbagfEr0Xu4yHHSqc4UH80BZgrEkK67maGHtqEoIVGcKxL2A3M/EU2s1rwTpg6uXhH1ulCckk90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u4IvUFNA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u4IvUFNA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B65C19422
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 06:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769667833;
	bh=TR7wAUANu+/RoQJETWJEvM8XOphW+z8Ae56EToOUgTk=;
	h=To:Subject:From:Date:From;
	b=u4IvUFNAC3D4iRTavBHDPuCsCq67DrCcEgWdEuQGrFHpdVOBydxlm9hdSB3qKmeTP
	 KpQxk2oSanQtcrjZ/xuZpTn66JWIFhUk4PGxdup4gl7jT8dh8ycmTz893S2zIeVJZV
	 iKt0goWruuwMjd78fCwwQk38BL+mnwJg1YnKkY7eGaEZpKet5a0G0Zr7ZnzXNCv38v
	 R3c8z8prfcX2kOlcHcwYOunDQBeeD1BsmcCPQZxrHFZtgW5yWwwQFaOM/uPBXtjyIM
	 YYY9YQQVgc8ly2VROEizd606jHUl98uS0YZXvvADK4SWQ51qVTgtWKc3qdqUJBqihs
	 BNNn2FPCA8HZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95EA9D358C3
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 06:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176966783358.10658.4094030318314722310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68a80bcfe71e930f70e12a505913c708a6a45159c8e0e2b86dfa733d91f5e069
Date: Thu, 29 Jan 2026 06:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769667833
