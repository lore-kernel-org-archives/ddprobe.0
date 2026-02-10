Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27FE9209F43
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 17:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770746034; cv=none; b=YyYXv/WuT10leiEF/uo+cNpEDWo2rsAGJ2RL50Vxyjb4NdBeElYi6qxIyRtMfCBjhl/YHiRzHPFw5/RqjB6ESN28ac55donpEbRoTL/CBlYMB9PVCGl4zlFexPJ3Apnic9hX2ydwK7B3uRnDDM8RGrUral469G2qreq0bZwX7WM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770746034; c=relaxed/simple;
	bh=vCwhc9eBZ/mz1tcrA05ScGV90H7tn9Q6dxHsHsQ6bwc=;
	h=To:Subject:From:Message-Id:Date; b=GKA0TckCkEZM8+PwjtiyJXrHfoFo0jDM7n8efZCyjKWgsurxz5c6sGZQ84Kb3/8AgyfbpxtAHt5hMC7hjgyP4vpLij/USol4jr3GpEkK0oO1prSKgWSNqMTyibzmPJGFVRH346TeMvKR9RZ555F69MLZvH5PQZSqjsJiTJBzxW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Td89Pc4E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Td89Pc4E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAFB8C116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 17:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770746033;
	bh=vCwhc9eBZ/mz1tcrA05ScGV90H7tn9Q6dxHsHsQ6bwc=;
	h=To:Subject:From:Date:From;
	b=Td89Pc4EDJuqs8BgqNRrkXiErTlqEhDPxIvrJUBhmlTiNrq1IPLHnCaM8Frcfpsey
	 6NR4EJw7JDqjbmj+CbrylFQYWBtHHSTDt4SI6nr9Q7BUreC3VtjxvYYTqS7oaPpop8
	 ZWEsPQWB7n6hafHwgx1t9yew6TVJkptEprqIN0JvZzcXefDOfDiDX+NNn2iSilc3J3
	 AvApMdRl4Wj++YcqkcK5l44BOt7K6mIki4uKQghlwQrj+L44BdxxyFoYvYJRC1hcLe
	 cxAscjnNtBLBC1NQF/1WEazEbPpH2lHucJpSDBMPJ6pZt+DP/mmOWisnlTiAb6BknI
	 iAiZ2Rs46i+Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FBD1EB26F7
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 17:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177074603363.24796.358162085267659992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0b2e62e9483296ce460f6ea91452d3c829b6b83278cb184159f6aaa3e081b3a
Date: Tue, 10 Feb 2026 17:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770746033
