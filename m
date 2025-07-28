Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D20B2AE68
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753691994; cv=none; b=hYXDZ7qFGMhEzEwbPJSHiCJ76SHJ2tyiiOTnZX6ZlOUR9V6W+Z07lPzx9RvZAIE1O3wD0Ei33KLl4VzLWzTzqKZzXQroFIEAfDmDhNo/rsM8kkPXEc8DmWQjFrP3ux5kwp8EJ6F5+8FTwobOkLTzTyb15w1aCBIG9OJGBXxIR/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753691994; c=relaxed/simple;
	bh=2Wkz3a9+G0WzjomhzIjAzYYKiCfQksv+OIq6M5ooRfM=;
	h=To:Subject:From:Message-Id:Date; b=ApPuq80QTtB1rjSCd5ScD+rDquxhNZ2ZYr9eWclvIVTb4tGnZZ/nZ/ObsmtngDG2w0pOf+lKIJxffz8DfVP4sGv9/pfJi0sloTZ8BCAV8jLj43TCHDNF3ZjUZNd08uBHbB6d9uVkdig5YTcV/WLzLJOBT7Z1wByrAJIu+rTKjlk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ieFN9yfO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ieFN9yfO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48CEC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753691993;
	bh=2Wkz3a9+G0WzjomhzIjAzYYKiCfQksv+OIq6M5ooRfM=;
	h=To:Subject:From:Date:From;
	b=ieFN9yfO+31MUawHmH3biqpPEz6nIx55i7F7UmqvnwGTj8BcEerkGmsXmYDmtjGG9
	 JLJ336ZvprzFwAXzKbLN0T2GYFeh+oLhuBWw6rv9KhID78miWKiLZOMnmbn1y7CBHG
	 B2X8JGAl1uniq0cBMuAjfrqrL41GuAW9F/Iibg+kdasn1PSJ34ZffItdWk4h0zFqtn
	 0aCdB+7DBei5omTcpabYO/+yiQvgqbib1TluUG/rRJbNPOO6139Q9ZyB/a4gFO0buN
	 BDqDKKxLd2LPfgLTRFyfFaXvY/ZLTcYkcFnAivsaQQj/fC83G15cg0ldA8LJ6sU/8l
	 bSUOL9lFu5GDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92406C87FCE
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175369199357.2353.1950721227258235992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25e537e8f8424f79da830462ca96fda44a258e591dd51d471ca6d31590baf94a
Date: Mon, 28 Jul 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753691993
