Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66BD663A
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 06:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714890743; cv=none; b=GOKJCLzDAkffkq9kgRezQ0owqlXzQDP5wGexbDFe+WE8abENrLzOZwS8SJhm8TN0owwF69HtguihTZpqMXlZvfEaF3GxvkybVNub2Fft9ZV6y5NQ5reHKy70MX+Y7t6hLQn3FNCIYb4j6Dw+vJsDW1Qie5zkEbm6sUhuqjpj99U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714890743; c=relaxed/simple;
	bh=QD2YmHxsftHFiYHTqYot7Da7tzpK7iqWknYCERE/p70=;
	h=To:Subject:From:Message-Id:Date; b=ENEslAgzzy+7w8ia8jmQABriMlxDglPRM3I/pepg7F9MnXqk3KsWly+Qag7eLNdeizGdZV+SGYfqsaJVpJIT4Ig/RjyNrtZf2eJJXPlHRoYFhOufW8yiuRfTEA8sgaxk+0K5Xo4E2HYHpCvFtEnaApKvt8ODfHmUnAJpWP1YHPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jHzuIo1W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jHzuIo1W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6B39C113CC
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 06:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714890742;
	bh=QD2YmHxsftHFiYHTqYot7Da7tzpK7iqWknYCERE/p70=;
	h=To:Subject:From:Date:From;
	b=jHzuIo1WMy9jcKPtyWtFq6dx6yHOpK8vx112eVR4LhRl9bgcFngdXq6OfutJNYj46
	 MgKWWTUpLc9T+TBuLdIwyo5tTDtQUWX1ww0SBa2zUhwjcK2oLamUwF5nfn/UUR/uPG
	 4mA3oxk8zepoHMAmMkKJuRyVvICIJD9wEuQXfn1Rapuo+LtC5mp0ouLo2Ml5qtBzBR
	 CFVEcQ9v9qUQ99SYoo7zqXMBHwt0GQ/RyChrSy2So2kUtWBO76Jf8cGVQd3cibJgVV
	 45aJ8eGb0joz4sf4fJjne11jgRapSaVssk0ilcu9q9T47pBl4HmpkOLY2IWZNLtEXZ
	 UclyD04fdYDww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C20ABC4345F
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 06:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171489074277.25344.12010128165650192456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26a982a4ffcc966b50529d58210c13eafa4fe4927c76968abbde6076abaa31d1
Date: Sun, 05 May 2024 06:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714890742
