Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22FD0319845
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755194994; cv=none; b=Av7okBeSCmWCeJNPT5v9rqKEn/D55QF2HFtLOpd6wPwCS92ZWTJdIZO0Q6Xb08MOfYS0lP1PM8bkvFUc/FS8GMLiI3QrKXTMaTvzRhvxnJ30q46ZBcDOJPkHG5KJ94x9TSZ0jYeEViJQQYciUPZ90x8txEScfYp/GIk4rri8IrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755194994; c=relaxed/simple;
	bh=3mQrZXWRhbc1h+wDYc/quiq2B1Hie3Rr9b5kiUIqb/g=;
	h=To:Subject:From:Message-Id:Date; b=bwLC86aPZWj8vbd5/acvqZXQzNeQAmtjH7+zqbV6updW7yhnYqH/54Dugf2vD5E8pbHJH8vu10pUUitjuBpsGWfahCjT/hPZIGSKTNStFCUf6RugtjpvhAq9y+4+LoowQN6EoqklCghIj/h66ByOED1Kr563gDHIRvwUt+Tv73I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z3hpG75U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z3hpG75U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98CBCC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755194993;
	bh=3mQrZXWRhbc1h+wDYc/quiq2B1Hie3Rr9b5kiUIqb/g=;
	h=To:Subject:From:Date:From;
	b=Z3hpG75UxpNj7ArOzDucmeUxEZJ4FYMhbQiBFPAq97zHIJTqKrdJIr/yhcH5qn62Y
	 nSE30d+5GC7sl5svyV5QLFJVX1y55Key2AsB5ICAHe11lI+UV+p8ypfgylC9Gvz9Z7
	 d7UOm2P0XFCOAXybxpfZL3an4yjfhAdt49ij3gwKieRoFOBJk/SbOnMOyqTjL6asGk
	 38M5Uw7n9QKsQ2LHtO7Qaess6k59GFQYVYpWazWE7de3+y5PdLmJ0OsNkOrgvxRNwn
	 00DU9lN9H3m37CTXMn6GWrqWORbBD953nqv9P2RAjqauG2asJf2g9GCdJ7PBQyr49D
	 9KSLfByGMejLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9087DCA0EE4
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175519499358.11609.1596659957940383785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 623af440717514da51412d507d28cbcc6cd734b0f4c416f40e25de2251365c0a
Date: Thu, 14 Aug 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755194993
