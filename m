Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B26725393B
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 02:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768271034; cv=none; b=goQWsNphiy9r1RgCvcEJ7rXys+KNLFDjqX/E+2ozsT258FGNhU4J+8vwGlCFgv/GZq/DG6L08zIkBCxtNUiB3fvKCRyXkHgOJuOAeO163s9ouMO4kRPEKIVb7WPyF5ybs3g/pXXNHxbpgBR6XY/fp2+kSSlemusVmtaNDzsJhxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768271034; c=relaxed/simple;
	bh=El0CZXyTAsveEiX+2g6FQzA21UYgA07OkF1OHVfeK6M=;
	h=To:Subject:From:Message-Id:Date; b=gTrr18gFwUTwMzhMUfwrwUhN7NQMQCQeLEWH8taTzwDt7S2xr64R6C0DU2io79sZJQ+HOfIjLjGOFo0iBiId4fV/p3FR47UxLjo6dDJ1/iyJOcUZ28dRVnUWjAc3yVNHSy/2wIGbR6kgOfy5KQGNvIWrjEbPZxiDNBK9r6yHLPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NQtyCrxf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NQtyCrxf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A85F0C116D0
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 02:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768271033;
	bh=El0CZXyTAsveEiX+2g6FQzA21UYgA07OkF1OHVfeK6M=;
	h=To:Subject:From:Date:From;
	b=NQtyCrxfdLUuxS31apNhbWLb3hGCyrfA/qOsUPvZDsK0PQJpWM6z9u2LevHl31iY+
	 Q8m5ZJmYx0D/FfqsxEOxIjr9QCexS6Z9DBQk0PjIws91upxOsd1Zk3QTfQtJhlM+0V
	 tJ1lb+lhqIrDfAdcV9bp713uXsNxopgWF3Dg0RzN3incebq3leU+oNQSwg+uk4fEtn
	 FetEhcgEsaL0FFwgOKZxXNPgATtaS/VcdzeSSvzsTc+VrcbM5ECiC5gApDFzGuTuve
	 d2fUQKibxQD0CbKfTT94WDTaWZ0YFUn2SRf1yaYruPKWghIbPirLnP4n0Q0iV0ZXP6
	 XTwGvSayC32EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B64CF45DE
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 02:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176827103358.19303.18301808054567522805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5b520035d355e9c3501915acb6dced2483ea7d6b283db000c0e5d12e7d480c2
Date: Tue, 13 Jan 2026 02:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768271033
