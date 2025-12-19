Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A1381F4606
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 23:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766188434; cv=none; b=ne+y/pPhsJhcYkvqI8jlaIhnPXAnndYQFLe4AbWwvNKGgmESBgqLS1iX+TH08w6+6MSDW9S5XBD78EH7vgmueae31Hcjm+Q1dJlfwkrKFtQ4sKU0ZI182O8qLlguWWh/nBe+01/4iYZnjRJCcTHJdh813CEmWNcS0nDUbzzqkTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766188434; c=relaxed/simple;
	bh=tpmLbFR62VcqTTd4fn1EXLGVON1BMDekbvHr4ATajWc=;
	h=To:Subject:From:Message-Id:Date; b=l7z8nj0x9Iqvja3xk8BgnrnvHl8Nh9Z7kTv4p2K8GEekJxhfVjGoESbXB/q/vzCjImqMatkXW5H6eB/I9AER15Pa3Os4ZxZ/bDX0m9eYtOa9+xJduVT3kdWUPV63Ug5tBId26j5MYsJgC3YrM0kf3Ko6yft+mnuW24FPpndKc50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gHyBn7Gj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gHyBn7Gj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5DD6C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 23:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766188433;
	bh=tpmLbFR62VcqTTd4fn1EXLGVON1BMDekbvHr4ATajWc=;
	h=To:Subject:From:Date:From;
	b=gHyBn7GjD3Ri4I8TS9EBRwigzr3XCusm8yvEnWw54M1NTIcng2KxnS0hGX9caBFtq
	 Y5syDEn9qfwP80HHol5hj/5oWUw6xIxutaWzImC2hxgyoMhuDUVzvVO2PsUJr5jhAS
	 Bfek0EqtVOvcY6hDjsw7eEJdqx9JsbyLk9zlP9dNFFr1YNz2UWIMQX1RLOF7rUBMrW
	 BXkSaTXHnooWic36QNvl+jcvu0qLB50QByQlBKtrwqbuxKMvBK6qpL2w9jA9anOwGS
	 ZkDzIi9KRUlONY1B8Ik1v2IAQZph9zKtscNfPWlPNBPax2C/dk6L6uRp29+lsaehV8
	 V6im/S9eU1vUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D85D78797
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 23:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176618843358.28844.13143050868680654111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7da3ebc38cb88b8a540ee61168fc3b35f5b813f33cea85ecd336b71c6c350659
Date: Fri, 19 Dec 2025 23:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766188433
