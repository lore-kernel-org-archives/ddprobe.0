Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24AAA43159
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749259194; cv=none; b=A8YsosDfd2VMYlaADPsv7M3p5dIR2czM12R4jm7YlH2dS5rJSgmtxWn98ey0kC1U0HgKa9YV+3M54MIg+IAuVDHhkECA0y+E8DQCmTVnv/zCIAGccZgSvZ8RyjgVWN9Za1ttZw8+eVd8icVUVaMXBXsZwan9dBeto4abnlOYl1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749259194; c=relaxed/simple;
	bh=uBZF7v/qGhmpMuqEilc9uzT5D3XR8+KKafNc6zmVCa8=;
	h=To:Subject:From:Message-Id:Date; b=GLvWh96Md09WcInvyFJV4mlD2rrPNddlHdswFjU14SQChnLnjCN05FplKBt2Hh1KtiizX92aWSA7SZOJhMTlHKtthTTMOM488Ws6acEjCu09YgEJYHB2OeJYhpH96VEdryTfMGOmoFg/EJrjHUlNcUWNhzVOt1rms8r5Iu7nMCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NrAiSOHc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NrAiSOHc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D04C4CEEB
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749259193;
	bh=uBZF7v/qGhmpMuqEilc9uzT5D3XR8+KKafNc6zmVCa8=;
	h=To:Subject:From:Date:From;
	b=NrAiSOHcUWUcTShhHwPh7mh6wTtIQK7q1hHDHweqcJvEEpWnEZ4PlN3Ng4dfDksq6
	 8Hj3usAGfKteETj2gVhwv0R8uWILyUQFHPV9alLRgNTWm/MqHC+6FFpcDq/WuLyQuT
	 EvcAPm50KBhIE2i0neZjyfgulk3eZU1LaPbams17oA5uBgfD3JstRoTde1XBIUdSF2
	 eNaodE4aQK/2K0ZK44e+Mpx+g8MY/ZTXgyERFPyhPcuDZyyRzsXvCchKJU2ZIrOn4E
	 DrflXPPNbmEZ2NJ6Ua96akX7oHD1jZ2g9VMZupSP/ZR0nRVLUX3KMfAPfpRfWB6VVE
	 EIkfervPljVug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91672C61CE7
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174925919357.7304.10212656811776377278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adc8414e9aa9fcdf68728f57eb035548065d812d6ac858bf10e0c96a7e2ee19f
Date: Sat, 07 Jun 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749259193
