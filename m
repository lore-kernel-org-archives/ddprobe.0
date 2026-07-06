Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5048A37C91E
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 07:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783324115; cv=none; b=Bho45s6liHhC56PVUt+VnNhq1loZpa+ynhvIiCLsLIwYzNmAv62AxAsyK9KhPFu4osbH/r18AkSDrW1Pbdop1bmf95SRb325cEaZIeJsMMv9OEFb+crFkpxcPDAbcerDf9u08Y03lPOJOwdFuicCShA9Gz2+drJIE08spn5SNP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783324115; c=relaxed/simple;
	bh=L/lOCUQVNJq8l08JuqJjnhzHJ8TlrhalKz+Pirmnr2g=;
	h=To:Subject:From:Message-Id:Date; b=DND9Sfk02I83Nzp+aujUeng/ZDHdsMQV6S5eZC2q8tbvIHKnGr1oZ4yF5aSJONxBbOuzKy4yplrXaFzLnC2IeUjP37sqgAEYAgIH0z+xYncbBpE2oyYtzgFCnB28PkCewPeo2ozIUHBtQ6DPeFr2YWq86Umh/eaNY2O6odlLZMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SsKV6PWb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SsKV6PWb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0185C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 07:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783324113;
	bh=L/lOCUQVNJq8l08JuqJjnhzHJ8TlrhalKz+Pirmnr2g=;
	h=To:Subject:From:Date:From;
	b=SsKV6PWbL6K5Q49dz7RfJdu+HygTdPUDQJmMpternjJM/oWToejS2YIxcngQdORx/
	 GxqyU2jgLFIyH1gq56KXLjCrTuW9MLQrXT8MBTIW16VsXr3uYmj9m2pWogHPMd1xGz
	 8tk06GLjFQPtR6in6VMneq4VomdAk4QaJ19GkbmPSMdlScKWOLpmTBE3VZbkjTPlqt
	 Zi0WyuC+K426foUAaQLdGYTVkjvWmYcg+U3bjNV8F+fiwW8tDGsR6GokUX2tek7wNO
	 Qq3D4G1WOZ+BzI8/vLmyT7I4thuMW7ccsAmvmxGAE8D0qdvfafzFpTfX/0CzZZtFhg
	 dyR4dsefA7guw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A86B7C43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 07:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178332411368.23043.4386858280466166515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e097eadb6bab0e5380047b25243c42f339e50210363215abe1186f89b5ef66b0
Date: Mon, 06 Jul 2026 07:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783324113
