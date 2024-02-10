Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1B60273FE
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 23:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707608897; cv=none; b=hWV6lur87PlJNlsWDZr3RDoE7+H4+atIWU5mzqf9TB8dh6szPW5DTZUM07rV3WGFj9fIbyOfqGXbjCQLqbSzq86xuBUdDeqxpeB7oKNz1b1EmGT9iWNvoBN3h3QjCHKhVuL0a5R9qfNkjwnbhFOUWKb62Ukdp8z7kKGObSGqQSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707608897; c=relaxed/simple;
	bh=oo1lKX9DqC5U6O6UoTm1+qnbK3ygSSLPF/g2+ml4gO8=;
	h=To:Subject:From:Message-Id:Date; b=ol3f3eTpdsdM7qDuQT7XCXQXCNO0s3vefa+V+xt7maAvkAJhssShWDp04kXWisgsKwo45kWqvaIusFl/KoF5HYWyFR/j4j7LHkpokSqpnraepR/44ms/cscwfYxtS5Vrdnn/0FAOaWeN/UQK4HM8mJ6fUvh9qUwLwAgpWc43uCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MdEDFbQJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MdEDFbQJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78308C433F1
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 23:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707608896;
	bh=oo1lKX9DqC5U6O6UoTm1+qnbK3ygSSLPF/g2+ml4gO8=;
	h=To:Subject:From:Date:From;
	b=MdEDFbQJCQowleFWMYyO6uRNXD6YZ2zWOf5jjiekiSx8nS95I7FQTSWyzILgrV9QN
	 bB1j1P8Wj2l/xZugeZOGdAdsiWKvZhXeBYEivv765sVawpWS1cWhweRKNcGbz/W0i/
	 YbJe/H+LCV1wVa9Av0Jqna5E5Bd3CZwaP9Qh0fZ9gIL+uqjovqmQKK+ugrWELqKjux
	 2luXxZpequqKaVAuiDu1cbRNQjm649SHmrIxdWi7SJsYiodeNovhGXriGLwC7675tO
	 v/6uq0uX9HN5rRK7kiPELxm9fbc6q/byh6VPtv1RFfM9h782rBijqavvDSz9rIllQd
	 iTXH+93etbBeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DF98C4829C
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 23:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170760889636.23630.10774964973417767624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d39de4ae280778c156af17c49bacc39ba17381bfc375375d5486bddcd8d10407
Date: Sat, 10 Feb 2024 23:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707608896
