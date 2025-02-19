Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 380C9146593
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 10:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739962134; cv=none; b=EAj4wHWliUPdYcPDJAuTHyyxxbuW7UIV4oU3Yapp+z+t15l9i1RJM3dJjvzMP+TkS4HVuOFg11P+yXH77zXjAQG5O6s+oEntS+/MColaDsBbY4aMJMbDr+fu+50DOL7r4em7Y+WB06vnKoL33FJh+bLy618LdccORI3IaGRdZY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739962134; c=relaxed/simple;
	bh=qXY7QdmdzboXXJASTLYen2zNejIF695HImpsBWDA5f0=;
	h=To:Subject:From:Message-Id:Date; b=Pbb+u/Uf+/b401r3a8QfFHDEExRRtcwGhPGru5mGs13LjqFApA/VUZ2YEvoO/khYg3OBtvShisSKCNDTMVbhYsQDGivH8Gz9+MGG/5Gkj2WDJiDr7dIqsSbYqXDnenMg4WG53o3cRIrzKuJwbsaeT6ErA4kVN+XVpZk6ejsrk94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kXcWDiI1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kXcWDiI1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB5DBC4CEE6
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 10:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739962133;
	bh=qXY7QdmdzboXXJASTLYen2zNejIF695HImpsBWDA5f0=;
	h=To:Subject:From:Date:From;
	b=kXcWDiI1TmSLZPFuvKF9VE9M4gFMpUU+HHJq0AE/50gnEthb6J8NvTXVGXQTby9Qo
	 cXpOR1/k655y7Fc+GN0eWkgFzTB9St+L9XFAwP4Ngefy1ZcuBp9VYfPy7YYcKOK2PH
	 kEbhmAvXQt4d60aHg3Qwrm8euarHu/ZWSVbNtSuIYmSuaAJzLCLExjBeI/JCDJIFgG
	 1fohtB7Z8nkW7aiahAzerhSceqVGrDF5W7eka/DnGjk/ejGMeTOSsH2Q+XHC/MlBJn
	 olMUc2ti2nZHuhQLcz9fI8bBPByAkWxFc0+A9xGHlJY7bivOcMfnPrs8lN1OQIK0iY
	 3rs1HAM9iPAjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925F1C021AA
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 10:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173996213358.9189.16981740749559893805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26de0bb5e3148f475d8e19cdcf716938f40a51f8c1b48d5dca58d3193245d592
Date: Wed, 19 Feb 2025 10:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739962133
