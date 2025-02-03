Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F0881FECC5
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738621554; cv=none; b=V70de2x868NvyQGA2gDbg1zhi60mGXbdy50WRDqwjqx7udqrOq/X5nf26fbAoEImaHJ9UI904FtEyU+WRleyZR6NWeb2WBbQ1DOqt42oGbYwBfPaJ4AMBeW8cTX10Kza1DNve30dP8cQAKlmjyBGN2xzc8bcjMO8fJfsRBGWGNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738621554; c=relaxed/simple;
	bh=o/Bwh5e+Ih6VW28cNYYFs9cvoB99SGAZTlGFERk/tKs=;
	h=To:Subject:From:Message-Id:Date; b=pl8EM8+2mTnm+H4wyam9bwdaUDDeem67P6yarY//7f7JG/dNEEwO4+jhO0ZTRbL/AM+lzGDNyrYwmLKC/qvHJL01hfTezwsoq/2GMnDEOKyNr872EhPyNksfYy0o8/hpHwG615pZmSmBNFhrUzPz7MG22a8j/y5ZnWVfKE2cOJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qni+AmBG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qni+AmBG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF3BAC4CED2
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738621553;
	bh=o/Bwh5e+Ih6VW28cNYYFs9cvoB99SGAZTlGFERk/tKs=;
	h=To:Subject:From:Date:From;
	b=Qni+AmBG2e55Cw+6kjTRclTHJU1VAhc3otkwVDCglOBjqeJBmtyJ3vK7mYGm7oFRo
	 lzQwr8ojqsT+gPWiYJ9cN7Rr4gmqmxKZQU0NCAESFVUO+TDrypuZPSTOelDjwjkjQZ
	 xvHoAs1tvKRw9F2lVOb6xQZ/Am1vVvWWRgwJxH/mwDFvYw/ZnGylYLJzKZqd9+BskR
	 gIJJJmyDRLZh5q4+/mVrNm3/jBS+9C1yaqYARoBqyQJqF/nuwctm97kfp2YjXbmaRj
	 XaadPQWOexF6AWtnyWFlJixfAYCHRL0CZox7EcHoy/HYpT9+EzUJwlnXB+vUY85INd
	 sQJrbN2MKt7EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9760DC02192
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173862155361.8619.6323692995697321597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c48d0fd094b1df544f704f3824a9e9d1df933fd658b6429e51d63d19a01fb04a
Date: Mon, 03 Feb 2025 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738621553
