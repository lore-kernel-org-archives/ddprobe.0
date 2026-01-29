Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CFC01D5CF2
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 08:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769675034; cv=none; b=pGlfx3EqkywszLH8KLkTqC0249c6Dwsbrx4QqiVRy8qlgmbkCNeqwUcW9g4Ryadei1A1ZbXT3PqSh5pJyCWJFn+558n8Pa0iTkqWSHvj37Bq1YGvX32H67MC5VjuVtj0sHxhbE0jk9ZB0ApvfvPw3Vco3wBdn/N46feX6bKOagg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769675034; c=relaxed/simple;
	bh=x2OFnCu/eTCAaed3JsHQZYqEeYHZA7OS7AplnOR3rOE=;
	h=To:Subject:From:Message-Id:Date; b=F4mu4bD6XOnXKqFlMQjkPOJtV9Q905praSYOl6MM0GcWa7kAXJi8G/BYMIwd6mR3TISw2MpDiAsk7GW58cV8ZPtTzOW0KgcceC4IzX2w+p1H/bhEZ9d9RTQrERGZzGW4qggztM6Ytefgl4VSdIdmfuc/1HE8AiihKYns7ilmw3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NALJ8+9o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NALJ8+9o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BBDDC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 08:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769675033;
	bh=x2OFnCu/eTCAaed3JsHQZYqEeYHZA7OS7AplnOR3rOE=;
	h=To:Subject:From:Date:From;
	b=NALJ8+9oYHjHEN+NdwR34UzSwDAgGIHHqGx2Mk+czDiH40aDX2wxp3kPt9mHSx1Nl
	 P4UL/tRgxfiB0YVrMnI92PisuTcbNGFAKJbdpDJZx4jKxCxTyLPbPpT6pEAVp/C4jl
	 3v+v6BTtxY+28kY7URAkgFaRFeuastLcb2tF3KktS3vfwQjjXPwe3CnIqhVzYN5yUE
	 aifnOMJOD6SRINmevuLzyCx/YvnXOCMN7k4hrmWrt0DU+51CVtdNrIAX+5bGrTidlO
	 AsKtF5QcFuq+q6w6Aa0m+DGmoE94cud4dJR9Niawu2q9ho2cRR3d9qj23eC34TmQAH
	 TUXD/o5jIaAhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90257D358DF
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 08:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176967503358.3826.13973268904757470153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dafc2e2b4a6ff5118bb3e3cf3f4ca95e6f9f0e82f80f5f0898b1ac1e6f83c657
Date: Thu, 29 Jan 2026 08:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769675033
