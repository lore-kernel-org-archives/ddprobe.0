Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E0E24C0436
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 14:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788790235; cv=none; b=bU3H3HG+oic5EXXgxCzqd7eHHbCfFAamGebgX3Bad1K7rIaDhqMMopxqGHjfV6l8iyin/nbpTPic6rCnyoU3/ocZKLo8/cPIw6Ds/MV4N4VR8ag7sAaHhUWEgVovXTTeI5TxLQsj6YYnIrmmrrSeWdhVAQEoAtUPdqbDFNrspQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788790235; c=relaxed/simple;
	bh=fBaj5G4rvKwrSwWx3S8tb8pU0owwQMhNKZ3gv1Np3l8=;
	h=To:Subject:From:Message-Id:Date; b=D4tL+sxPSUlUGDIsPpTXZ+f/1vtagD++XzTsXiex//rknbuko794ivQWW1Bmt6yIXsoF5CcRUDmr5Q5DikVV6k/l7b4PEbP+FarTP3ZvRelScZAKLLOlWp3Km9/EHw2nhld1Ru/TG3AEH6ejiBeehp774EijCFYskV33FKPIcQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MLXql3oV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MLXql3oV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D544CC2BCFA
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788790233;
	bh=fBaj5G4rvKwrSwWx3S8tb8pU0owwQMhNKZ3gv1Np3l8=;
	h=To:Subject:From:Date:From;
	b=MLXql3oVXQL43LAamnXpRJ1bCl7z9Ges7Rq46gNyl6Ltu7ieWTc1suycRtti8g6a8
	 cdquRn9UOEi04rPCHVMx+5le5bEGqTxksAHEgxFBb5KuLFw9/PXa2VW+qb6Np/ufzV
	 IKkUUTwyNawnZ3M4eShc2AjMmOmJpwqpooxq9RpQ9EQZb4/ejkDEA+i7oSkDOusjQ/
	 Hh0iwiYk9BSIg4BQl4Z6BG8t0oLl0BkJlG+PrJrLv0ykM+cMufuMENq3TdGbEjMJEW
	 Evkw6StqcW20nh7C1NFQH5J8O1tzJixPK5Q56d+YppOtfjxVOMN0hBcxjpmzigpdjY
	 aKzGmSNLkooTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1922C79F9E
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178879023371.26587.172398127741281973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10457e9410c1ff4778a74a097f87eb281e4f4a37893f4f844e9efa8a8e6437a1
Date: Mon, 07 Sep 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788790233
