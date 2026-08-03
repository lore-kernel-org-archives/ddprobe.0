Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BDAB2F7EE0
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 16:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785772834; cv=none; b=K89wTvdYvdviIR/l7pHJnuPcTrkTvvrMzjIm9njlRnfE3W93QzIGYtSS9aWuRq8Mw5QVYlk00ahzhgHU3v0o9PTEowsfuDNqZWXJyW25gljXG+tDcPxG3pH4Dg0U0KZQoo+TVjkLx6u5IC3CZTKjzBQleWrc06/JNHTXtjoCMV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785772834; c=relaxed/simple;
	bh=8+wf7hgEQ5rDkx/gL/G/j/mckrzagHaIiqLammRliIs=;
	h=To:Subject:From:Message-Id:Date; b=OObH+QcwlAkkFm20SyLWFQrT5anmXP4Y39r6sTLhKXvmpzOWzx6ExpG8e6dKtY5MwVDJ9O0aRvtCgWxZ7p1yzOsfVv+Efkn66v4d8lbQTYhnrMFgZrJgTJr4Br5VMGtqPAq4icyX0+oAVEQffLPSjCg/8EZGWcstUbKTU9Xw+q0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s/GIqKa6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s/GIqKa6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C45CEC2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785772833;
	bh=8+wf7hgEQ5rDkx/gL/G/j/mckrzagHaIiqLammRliIs=;
	h=To:Subject:From:Date:From;
	b=s/GIqKa6BoKHJptvZKXTxVKE5IDXJbjDwz00VjPagKfqinKOXy2VSRKI3+x2xj6vt
	 MU4uz3NHQ0mhMCFtnvOX6H2rSUuCn5CXbd2vhIEggJ5TK4nX4sPXKbpqDav9r3lM71
	 f/aPwPE+4cGMMjxqIj6PaJ7SDgYuHL3SYwHtw4xCjLmGod+O1N4jThfbRPhPYzGFn8
	 6cv+9486ltGe3Wmt+1RnmPKu21OJulnEQMIGgpSQeJqOlevt07KEMKbRvjpHo6kuhI
	 s89N9yWjCesUHPhi8LCHOo0kfsdjPNlDOqYqOz6cjQxcMhqHhoQn+Swc5Fq8IJzPfN
	 B8N/lm9evicBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F85C55182
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178577283368.9541.15029111798503098944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 444ae9b6b4913e5f4e93ed61c75058ea4960f3eb94b5fd292a4cdc7a90cb1868
Date: Mon, 03 Aug 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785772833
