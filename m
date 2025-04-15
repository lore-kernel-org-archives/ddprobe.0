Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B23A2DFA24
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744691394; cv=none; b=He2zt+wvzDdC0t19lX/LC+zrWYGTzPIqMOjGSYMpNi+wcnluPqbwTSWwtdwdcvkYHl73lvzbZQRYzdClS5NaElSzN3+taRyZllmKLk1Omn2APQaBKQy4mNWxnSr5P0Iv8wcI2KRYdmh98cbFjxZLnpBZ9uNC0ET45JEi+IAtYy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744691394; c=relaxed/simple;
	bh=4a0QMgvPNZKkSiSBo2zK1mKUyvimp1RPzgG5uqeiV6U=;
	h=To:Subject:From:Message-Id:Date; b=LTGUm0ozkEj9kqe7FyznClF1WlSYbakHpfqZvykZV5JcJxI4Md496zwel3UHxW2OpIbvW9zQgrg7AoXFNW4MleameLgJDW7B87BAYYupO5Xg2NWNGGVoJBW8ghCcg+A0H6j79JJaQy5MMcr3oIQAIREqqaBJ94QGsT4kFZAfnqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HwAKL6Rv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HwAKL6Rv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE78BC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744691393;
	bh=4a0QMgvPNZKkSiSBo2zK1mKUyvimp1RPzgG5uqeiV6U=;
	h=To:Subject:From:Date:From;
	b=HwAKL6RvPR76H6bU9lt+FB0N4W1IdHvuAjOmHq1vAYLFIoSgCD/is2Or1CP3SPpJg
	 KUOz9mtMqCV4w7TvCdvqv8t09g4y7zr3vtQpZkCbzIEGD9pp0V9etk+AHajfwj56U/
	 FwQuFH4Bl0/14AzYX4MiTFY10rjIbZyRcp9UbD17WRSOn5EgQlGa5Lu/+9uTbUYLKS
	 JU/FX5Jj8DVTzUwik6fDTqfTubtFRSHgcjk4Gparizu9jQ2UWqEqroi7XaFDX86wBA
	 hVW2/uFK3hoctjEr72dtVXkPMaFiFHDB1DLhFXhNgUp0w968h36TARXnmR3oSFpoxp
	 dD1Z3jldAu3bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3848C369AB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174469139363.27914.6457529262594863720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2237ea46624ba5c6122886cf90b05524feede477f751a84efd3b87065783402
Date: Tue, 15 Apr 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744691393
