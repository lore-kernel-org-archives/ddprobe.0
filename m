Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EFE919D093
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754364594; cv=none; b=hisg2OoT99JK5dgCj9UatpuuHPJY4EPlDP8B+A+d9141L2qIJrvUu+WDgRuCsWGFeJI1XghofbAIzB4p7i9atFd1FouC8AJPU7g2YAwpAgaCriTMlKEWZm8xko/Z6E2ty0vHcdc80stCeUHrOsjH1ZGJfE2WgHaTYj0iQXOR0MI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754364594; c=relaxed/simple;
	bh=I6coJx1ojrWtos1mj2/GcEl/850xMKCZhzQwe1kkxDY=;
	h=To:Subject:From:Message-Id:Date; b=XAIpK9HWpPdqN3FaYJjsH/R6lvr7+hj/vZWBol1CkcFTXFzFoF/JymHdsyuwLb2aH96CewQFN8AT/NKC4jALB2e/zVMrAgmED05ERVuPrpjzZu2ZT2K0DDY590S0byqcbegB053flkTaulwY1TcSRaxGQErrx9pOH9HQ054BW1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TQQEDC+m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TQQEDC+m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A5CC4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754364593;
	bh=I6coJx1ojrWtos1mj2/GcEl/850xMKCZhzQwe1kkxDY=;
	h=To:Subject:From:Date:From;
	b=TQQEDC+mrGpTSEI3/WOeG5EWsazwH4o//mgrhcKA14VVG8tp9JX2FQTcTa5RUIgBd
	 9hSJxJZZKKvheQtDNJSerMxtDv9AxXTdBCKWc/UAY3mUZ1TeCsYB70jPAdBE0LjPN9
	 c63YXWwCT7xnaHnLCcY8DJdB8RyU2f5moGtqqKi9dKuLTzwOyfqpLBpZyUCz+vh0DF
	 0iy3YcSOJxHhNKeoXcy3bPb4uwo2AQJ4pZovG4Uee5hZpZw4P+gnNeO226wE5m8dXT
	 6eqo2HRcuWNlW0Q/gtRNhXCkr8qGPadfTGYL9SO+uh5d23N8a4J0N9SN2FZN4B8BdC
	 ftk/mf/OBU6ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A91C87FD1
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175436459357.13294.1099655632960234939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 773d405afd383fd8c0cec69c07297a59e53a549a6dc188be41d93dab941cee65
Date: Tue, 05 Aug 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754364593
