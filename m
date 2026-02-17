Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17DCA260580
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 08:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771316094; cv=none; b=I6Jksz2SAvljGyK8JZ2bneRSSyM+YJH1BZ+hTt3i58DEuA7IDr/7g7TiDD6D6nqbnbSuGPG+/D8Qbi1aLZXR7dq9Odkf47HUtCduzj1+6o/Vmf9+9apQSK7YLxJaYNFF1zTviTp6EbaI2/bnWDFIRu3jc807P10f0ZCZ3XxVyj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771316094; c=relaxed/simple;
	bh=+cxLhp+B1PNjP5HfmBwhtR8o6wo1i0wSxZfozrRlOdE=;
	h=To:Subject:From:Message-Id:Date; b=T8qt++OSHbP5IAxJlXStzs5ql6ZBZZjfURwa40jlsNt9mDWKfG8Okf73IvWZUb0QryK4vM4mhf/G/Hn+abo++CKxvsVQhknJBDJ7u0EOy+ZpJiNNpB3IIHlKeZP+yuahQzflqnL0mKaDdU8GknWMSxHVZNJH+yOWAZ0Clf3g3U8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lWwcGNPN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lWwcGNPN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29A7C19421
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 08:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771316093;
	bh=+cxLhp+B1PNjP5HfmBwhtR8o6wo1i0wSxZfozrRlOdE=;
	h=To:Subject:From:Date:From;
	b=lWwcGNPNy3dIUdBIEAu3TxEF4pP54ljrYcFmAesBKOlWwuxZ078Yt80epZwHgyGdr
	 RicJS8fqJcTM3o+Sjnu64PSFRxlxU1kFWgR0meGq3ST1OFvOZ0dY2fJuEQRgfuxemb
	 xumbPqRqR58ZfmdGz8bHDa0/hE5PhseWKqaO2QcLi2p/uEcSQeK37fYGqS+F8CfToq
	 Kg81hPT225PLtMwf+ryuEm+xygq0KximrnIbU0N0HDAyyS77BjTEMtNvSTmVeIDHzZ
	 ahQZ8gAzsNSB17e5EPeY2meTBcUkKWu0SsT0aVpI5aQUBiuCHcG5qn9WO/YJL92J/2
	 DwkktLbWUnsew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9081AE68143
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 08:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177131609358.12810.4774048526763211830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3212b1d5b82232e55abb13f78f442e9d568324bf52e9f36747e087ef1faa99b
Date: Tue, 17 Feb 2026 08:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771316093
