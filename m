Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 278CF15530C
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755139794; cv=none; b=IJi+2khPAxNsqccNb5WpyNtGD9J0wJlRYXAzBYG87HSnh7/6NSdsOklE3h3hx2zt+PGO9eA43od6H72qCCIKsR8dEgCRE79kaSeAXqdkX34g93Np/FJIsbe+2xrix/2fRoCAU+VjTNuLlv67HCIn35gfyVGziogolY+frJJfsJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755139794; c=relaxed/simple;
	bh=dqs88r68eszEyLUsSEszGLvRkicfAKUYtWSSksgL3MA=;
	h=To:Subject:From:Message-Id:Date; b=SjxaqlWdAarkQnOzyPevp2E9IUoFGKEGbIHX+4tw71WRdYRNT+LNFWoZ8QzQKio2pew0Co00Ip3ErQMPYDjDRgVZctClpV7mXDDYSoRZQ+gc9Dc8RDXgl8tiT+etKX/SQr3gYI4G8mo+qr1en5KyjXiTW2xJm4lEMSxiZ+6oo98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p041VFrk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p041VFrk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BF46C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755139793;
	bh=dqs88r68eszEyLUsSEszGLvRkicfAKUYtWSSksgL3MA=;
	h=To:Subject:From:Date:From;
	b=p041VFrkT7CSu/sk0J4GJRQfwAFAvx8wnOvff7bLwsHEiD+tBx+DQhEc1t9pDXDR5
	 cz3tYeiy364DUSLZwBao2wGqcXL6npdGmYMBmxv91BdIHWmtj7fBu8+raoMtArhMGj
	 zajMZQoYj+38vVt4RTJuBUjzpUOenBGQMgdeGUIx9PajvhiX+EAH1E0A4At9x2aXN0
	 jcTsRtzV5AxJ4kjyJDFF+KXPFfsT5AwnxLTwjO4S7eMESrGHCJoE7kixyz8wda7LHw
	 H2jxzbHlwPsisQdjgQG5BeEnKedKPj2NOySt5NFqeCffV6i2JP+6vrPucyWC/eL9mz
	 b4KJqamCMECIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DEDECA0EE0
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175513979357.24689.13622489975177038068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c0ba9da633e840fc3e4492fe1fbec3f5844e867da3bde8b1db781c2e3080133
Date: Thu, 14 Aug 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755139793
