Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F828394789
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 10:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776335854; cv=none; b=p1OqPWZg0OHIsj+uOFLfw7yKqnUea7INZBp5X6YP95C0qdDqm/0OpJQD2oEMcXxOirIW8PHbktr/ZfxBHBTmatY1pzjuxGuaCSZEcydkcSlcv0qYfBHVM+YOWzJLRRUeA35/pGnH6s6qBUXFFFoHAYRttmjXCdg4w1nvgCrLnN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776335854; c=relaxed/simple;
	bh=I7fe+0WpxNnXKQ7SqJYCGsTi01pQJ/6/zZcpBj4qEPQ=;
	h=To:Subject:From:Message-Id:Date; b=Vs/c009CRm+2xik0c8j5kJegoXvLdBF8JckNbQpwv4cO7otJGT2KFLBE0RFyi1Z1Vgo+iKClvtzROw374qNYT2PG3Jybf3D3TJmg6YrbP8/zqk298SWjqwyyWmQ3K3br+LO9RwgPLn5rd68/M5fX6eTAGYayFxu1yVB4TDUdbtU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Et1YLc1c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Et1YLc1c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBD34C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 10:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776335853;
	bh=I7fe+0WpxNnXKQ7SqJYCGsTi01pQJ/6/zZcpBj4qEPQ=;
	h=To:Subject:From:Date:From;
	b=Et1YLc1c77CtOCQDtlqAkq7lWqLllKAoeyeuTo1EbdlhboY2Q1u4hAIMe0BZd4Wk3
	 ftwhbB1Yfpud/pfLIJIwedLd9taADwyILKruswXOEdJCkKLzy2jFV1X5plWnGCnFtJ
	 MK0YK03yTRXQ8d4R2hS9qrngpYr0GhItWa8jfAKsalioMn5XYyPn7cBSCG9FMQaFeN
	 IHpqFYoQAVPqnOM17d4ociEph0T34Zl1wnv+tuojzE+w5CIeM8itW6DO9ol7V6NhRG
	 rMZXXyG/+FmtRpj8D1FJJ/6CQjIuhKFr3gbVAi3MongQYslOB6F+2n92rs2GmHZpHi
	 SlUSszjM9S4gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA74CF8A157
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 10:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177633585368.5964.536940876436064324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0612fb9a5f9f1c119a65e70ade69c7697d5ff5ffac4282b19b9083844486499
Date: Thu, 16 Apr 2026 10:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776335853
