Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59E9714C59B
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735208154; cv=none; b=u79lvuIaKDp7Q8LondOSay83UqH3bDXMQ898X0nHgVgraqrKkrau9XZRBYKs6+F3iYDxlmCOC12+MswOIAtVHLWg6Wg9vgvAyR8jg16U7xxcwo/6gE/ipIchQAlCu7o2qlxG4OZb6VTLBxRrD/3SqEQ/i6CeyofpHj9nf9MCvX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735208154; c=relaxed/simple;
	bh=YoWz9FOIqF+wuttqw3VrIFNk/IWQt2w+shjlrymQ5vU=;
	h=To:Subject:From:Message-Id:Date; b=OJhaGQ7E+0h0/QAjY8TXgYpLqMIimOYBNqu79zu8wF7o+/C+OEDkcRfMKliT2sQJpongQ0Ne/e0AQi/fJ7Gu58Q9lHlt4sENAXlD7sqFH4MWUXKcmApeBW40Oci/K4R1JX0wzuF52ICXEbodEQFIyOZQK80Tuetb6L7KW8zS1As=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CymItRW3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CymItRW3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA754C4CED1
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735208153;
	bh=YoWz9FOIqF+wuttqw3VrIFNk/IWQt2w+shjlrymQ5vU=;
	h=To:Subject:From:Date:From;
	b=CymItRW3dBhWc9h5H0bjBuekSRzYueoYKX8dmeTHqLM89BjIbk3byk4sJBbV9t7Wt
	 ooBOgd68+78oeYae/39mmC1ufRzqErMKfPNOi1VnztlqOdazzlTpB92QpFo/c9G4jt
	 Luyz2P1bpIkre5O/w2nFfgOTrGZwgYoa6U83vgTIt4Q+cnenmvcJlC9nyPS2DOCQxA
	 f5px0avOlM31Dn2dPfdqy+K/NqcwqgNrB+o5vXfT45Xs4+t3PplrN0afoGWuoEnQaH
	 6c9zhDdupM8JfGA7jrWBD9EO3URZYWGOkI/MsXAal/u5JDED3jZ2AhVsHe6Kr9BtEo
	 2mR+lOVOKehvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2F45E77188
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173520815365.27069.17317097842403459116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8b5d55cd753250c5ef424bb3ba7d545e297fef4ee37389bc943bbefd4580a40
Date: Thu, 26 Dec 2024 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735208153
