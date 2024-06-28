Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A90A91F951
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 04:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719547463; cv=none; b=h8dfdILHvXaVcED0fLTqO21K16E0p9s/OCAeDN8nvK6R9WjpR4SMSqNpUvd35HLJJ5JzfuO56GusNbKEiIbc3VJEDBAPh5p8+UNfJKgXLhvOd218jxZFoIbCQdHteQEXXtySsbhb3ZinVhWlLLgHrAywnaCcBBRLgzxHuVdT9gE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719547463; c=relaxed/simple;
	bh=RdCp8wQ/HmFmUadrX1jpT1q7UiKykjnv5eVmb+45SQw=;
	h=To:Subject:From:Message-Id:Date; b=HdhAviZVpAb2m0Ez/Tl+tlM9I2BS8DNF+nvzX1ahJ8GuhsdvwxE/F6qggrj5GZaCyZgI4t5R9wrfoJoQoEKh+nOr/qp9s4RpJKqWJzDt9KIZKkgFypYQb3FWwbSS/nxI90YbRQpEtGK2k7Y/bCJQisOqZaUOH8IQle35D6Cv0pw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FZ43DxIp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FZ43DxIp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0ED32C116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 04:04:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719547463;
	bh=RdCp8wQ/HmFmUadrX1jpT1q7UiKykjnv5eVmb+45SQw=;
	h=To:Subject:From:Date:From;
	b=FZ43DxIpx6OSlSKd5Gta1LEMI8H8pmw8l9Dtl3ciBIDaOxMGYzpzOpt4BEPEt0Cuq
	 UMl/augZiNkSu7JRFM7mz91RnaTGlFnS76PMsDHe/GM2+nOM5A7QZq82E+sYWC3vvp
	 Gu8lH0br+jzqLFTWPZ0z6lIguxrNGOsMgsRnGJfZ3EBxsKMos5ZTQ0djQTH1XSPXKu
	 xWE8lqJmHfOMRshO8Ly8Mq3U+VEo3qYusas9dVIxhg2S61X9RI3xi6/YtnVVih6hwS
	 87Pq6qs2/4hBnhCx8PEAFaIR7PiaNRgkA8xHeNV1Miz5mRHjFNQ92vA4slZWKw2QdP
	 9WBPs4p/dMNag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E2CB1C2BBCA
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 04:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171954746288.9081.4002636132089999979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdde34f26bd3172148e98ae26c2326f102309b01cf7e39c9dff0e15e3633169a
Date: Fri, 28 Jun 2024 04:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719547462
