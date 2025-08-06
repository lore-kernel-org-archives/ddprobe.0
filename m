Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22CA41946A0
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754505594; cv=none; b=I9jQ1sjyrJ9fYKyLODOD53c46orkmFHGrM7xOlsonzXnEKwbSnPAaR9JLUW5lCXhgC7xmusTzdd+8Rd8XDLSWvAZCbwL9cK4IvpffLCNWc8xJXNELb3DfYusGxAxr9cfZvEQdVWqlCLjq+eAQ5mGIvri+gaazbJQpM/sLggxH2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754505594; c=relaxed/simple;
	bh=Wlmd0g4PdyYfhUBpOTl0zBEarLV6z0CWPSkpN1GNvmE=;
	h=To:Subject:From:Message-Id:Date; b=SVNEUWqTXT+KaFbOTQ4FcvkSUrprc/rPszio3nylbtlI75A4RFi51VqHOEtpsHgvbk5JkS2gHkQd+j/o3I77FdnYi/TiX90h0WnOgagtOOfNIwRsPXFqcf5ppJDcK9yeA/U45O/8xVGDI3LW85YwDSiIqf8qmFccIUmNtp4Gkl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W02Xqbqy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W02Xqbqy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F1F3C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754505593;
	bh=Wlmd0g4PdyYfhUBpOTl0zBEarLV6z0CWPSkpN1GNvmE=;
	h=To:Subject:From:Date:From;
	b=W02XqbqyCJmhl08DtVSfeyRFo1Qv32RoUhPN2PrBp3C8erE4m3fd59Ma3HGR+KaZ5
	 KJZ4tua+U1awN4oHv3IWnqtVRr9ROQ3P5bDLlKuPQl/r9on0pDKhHFoADDml8Eg2Dq
	 WjFK2KFYgqQFIGsXzuChThObh+rXBY3PRcQo9/NtjSTXiSnCeoLU7Xb11dLOrCMdhr
	 iDXTyI+o9yCJH2J2/a5w8LzmSRtM6GeMMy6m/gVhbKM2B616SWNuiUIXN73/vmovQz
	 sjeLXWfLpSJTD+QLq2bJO1agwCVIAYoifEiv8wW3zACZLOGLqqy2RX4KGb1CafTjJ8
	 sxJr3fPlXiClg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90153C87FCB
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175450559358.9517.7033981233841503792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3bf17f3d99f0c6b0d682fdcc628929c4b47d18169554e9df33d956df1ba3999
Date: Wed, 06 Aug 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754505593
