Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F5CF23F40D
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 22:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788821434; cv=none; b=Mp+dIRIUav5OPlObaLMAtIQzL0uuApTZ9rPjz1wgqdfDWFXLzmLerJjIzDDYFWztHDROfmRVsnvwTs+Oyi8WMP19oBOiSY/a6Lu7l/JDyGy1TT8JcbVnaj3AhaG+T0uOjIu7RIrIOCEwtXG/zyJ7Bt1AL4eiBL3YvxCPmAWygKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788821434; c=relaxed/simple;
	bh=0quyp3GLh9SJXM/xp5/Ay/NHu772i0gWHvyg1lp4rDw=;
	h=To:Subject:From:Message-Id:Date; b=GeKUebBroJNamRpNpu/rGEqCyLVHAsgtccPoaPep6eHHDE4MOu8kOAGbAGkSl1APJptKz+hqGXJ0LbrzIQ//jBZ1N0Pb4VSDcuXLfeDTaooaxfiYaupLX4iNs4fFBGN5z4+funA4G5DkSvTfYrmCmcJl2fUCGX34YWeQdmzg/sw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VEEbHuQz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VEEbHuQz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8DA2C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788821433;
	bh=0quyp3GLh9SJXM/xp5/Ay/NHu772i0gWHvyg1lp4rDw=;
	h=To:Subject:From:Date:From;
	b=VEEbHuQzHUBq8pMxep7U8AphfUqIFCcAwom9fCdWqfJld7HfudzEQ51dHWN8zz3XM
	 QexEtBddDIP6eV3EmVnJg3SmPpzoVBdDUdp4mvuVAybT0NFPFa4tCi7Klzh5arFL/L
	 /x/Ny6PVXiYN0172s05+B2yw6Q+8QSxH3yb9RpyHkq/zha7BxN7fEqtwP7TkzT+v+o
	 HQF+wM0tuFUatqQekrAFHIQBc2wlRol28c9YoPF9kI6qypnCVCYCpEAH3at+ceKmYm
	 ViowlYd2jmThA5+dfsSKIBFJjjhPXerfIE/xSeHsr2m7ZApqQlxTF4lPdtvCghJchd
	 X+ci46/Lu/G7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0ACCC79F9E
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178882143374.12098.7085812848939764538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 149a1777c1fefa77563a61eff2196bb2c055f806f419b01d4a47fd533cb6dbbf
Date: Mon, 07 Sep 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788821433
