Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FD24418A58
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 10:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785924034; cv=none; b=E4dlVKoA5/Hh+Ag0AkfgxAUe/95mKiOsnyTF2jL7qeqriulo1qeapnNqr1M9aB9DuCIP2joKQU359yAtgXIxgwX6XPUsd/6xkHS1aA7pBcsPW6/P7f95vxlRtg+RsUn6Bc+NVG5NnaCIO2lb924E+4P3eW81Xuuv1vaje0UX3rI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785924034; c=relaxed/simple;
	bh=UjQHSpfsbuukuRq/XvKvMKtOm9Vgoo2QuowWgZSCWM8=;
	h=To:Subject:From:Message-Id:Date; b=IM4Ste33mTSKKq1derjVkwPb2vKgrwypcRfGl425h1T0lE5QWwdjZGfCra0bPjbDwCodL0FW0smQ0RVilvrzvGNw+X6iFA0Gl/xGNNPaJ2h5KElMdwwN7cM1dAkIUedBCYvgWVOY7+Fh/zXRi6y4zHYqZJQVtPDNePzn0UeqddU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dTEETlI4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dTEETlI4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8126C19425
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785924033;
	bh=UjQHSpfsbuukuRq/XvKvMKtOm9Vgoo2QuowWgZSCWM8=;
	h=To:Subject:From:Date:From;
	b=dTEETlI4n3bJARncEj4bkn7TNaW/PdpCUFVfmo88aTozrO346PH4Ya1VITSycPff3
	 L1XOeq8tIHC86Uity0YkX2m4oBbPhX9PBmjsn/7twX/7VomT3JVNGRQJiyGW2Jygtw
	 l7W3VwZE+wbXRfspn2JFhvg4Ds9FXE92FGz31zYgn4hbdo1PFtcQF9NBPI773B5eCK
	 3REFHTNZB//N7Ad2dqYZxIpsc0IofAyaWE95ztpRgwai0P5yBEoaSCbZf2XQpnzqE3
	 UtqM2wLbXCEpSBeXynqxpsl6Jq3hUTE6dIPib0aTfKLAvDdGoODVAU+zBfBWH53gib
	 QD7ZqMLXgQLUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF662C55822
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178592403370.2496.6728162950264907817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0d932676f96a94d1e1286ab65c37c3b2d59206855e17f630a6f613876f3a0a6
Date: Wed, 05 Aug 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785924033
