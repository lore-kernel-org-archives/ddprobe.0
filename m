Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A811257830
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 22:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765145574; cv=none; b=NH5DogPHuksz1xFXSthRCp4PaWIn2qkbHDEui5E7lxd3W3DASaatff15HrGkIirLxSHUvSYllp32GVEkqysDpxO/TJUZ7Mn3IPQDcBxebO7zxbYVtvYUdO6nqQnqaq3hk+U944NqQw1Yfy+u8Sr0VI5cMBPh6sQE2L6JgxUq0kg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765145574; c=relaxed/simple;
	bh=XlSUqio78smsH61+pmyftTDFb+5xEDXcGTBiGYN8lPI=;
	h=To:Subject:From:Message-Id:Date; b=M7eXX3Df8+1E9jSSGilGGDVIpPVKyFc1/1MsZAXsjRxdR5GDifoHprkOfMHOirMA+JZIfdSEBL8acdZTgy2pP9frXf9KOxinLU8MgZRw5O4ZaqEV8HRtccbVfhT3N8CbJlXBH1Ftg5ASQwaGa1YCpT9etQ4Z8+k5I1ILbUKn5y0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YTUGTZMb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YTUGTZMb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA41BC4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 22:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765145573;
	bh=XlSUqio78smsH61+pmyftTDFb+5xEDXcGTBiGYN8lPI=;
	h=To:Subject:From:Date:From;
	b=YTUGTZMb4sGV2WjDIHNsvXx6kC4D6rKEXFEn93wwxNI3Gs92PGToh/HkpRXUtL+G9
	 w4W9qCcTuZA0Jtdnj0KyU66eTDb4xScAJwME1/khMEP/FeIbDDM0kOip3aBRoLEaKd
	 IRn+RMzpmEe7fuUug0mi1RhEcX/le1PrNNT9GjOEjzIaIrQ769kMKoc+ZiVnBMED+l
	 g9kUly71xSsMQG2Fo/jwbEWCMMW70z0tYMoaSzCP5RvkLXI9RiIugvp6v/ujB6MO+Q
	 s+Ys2sedzjIzVLnd7tKlOvdJxwmtR7GSAS8QG9pZ8zrEXIMwMh68D3oBQP7wRVnvLv
	 SC2EiJXp2QAuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9442BD2CE17
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 22:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176514557359.27000.2968630308438160616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27bbe98fe11038cd9313ddbc767df0eebb4e25332c7f389207ba3e13243ea34c
Date: Sun, 07 Dec 2025 22:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765145573
