Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DAB7B652
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758338394; cv=none; b=EmP7048CUTqyHXUY+n8RsQRcUEJPuMXi5WJwAY4XvNKslOS51R6LcULwap/l2v34/dzBs7YRCJJX12fBJZ/a9TN8ToX+slbnR71t6pJdviB2QyT37pgWntgDbVGgwoaJ/B+GJW3OFe6J2bnLTh8Id9vaWJHZKAFNMFMZBDdMZV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758338394; c=relaxed/simple;
	bh=Xc4MwhXSL1pvAYrHPLmDoHj/yU27YwByRsr724fheIY=;
	h=To:Subject:From:Message-Id:Date; b=onDj12ED+OJhxBMp3+rgLCKMA67z1QL6gUlJ1OSrnZz7M7sO9kspWhFpzDc1CrZTCRHtkWPPoQB62SbmZg1KsSB5Vo8nQgOFpQ/x/V67Gz7/6MaxsWVW7Pl40D3w4EEUVounWPlYeR4kwptZHxhYfPJ00S7sjJEV5BfA4OiGVwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u+jS39KW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u+jS39KW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A519BC4CEF0
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758338393;
	bh=Xc4MwhXSL1pvAYrHPLmDoHj/yU27YwByRsr724fheIY=;
	h=To:Subject:From:Date:From;
	b=u+jS39KWb+auyXotSQCF+wIaxCeCfngLFD9bzXZE3XXTsBkugcKe82vpdKkGrCG/P
	 IUU0kQqMSUhrAX0p8+WaZqCVEuH2jRwEE6vTCGTJnTbK27Nd8WZkozoyklwUfpo7bw
	 LO8neNzT0t+DBLqpzwvKzyGCdjWC1Uysg74kfnjwW8Jj1FXiRSSHf17CVUfirL71zm
	 naRFmiL8yYGFs/0V+Oy/aCm2pblN4bW8wO/bctK/dJ18jJ86c/kWDSbY4TJX+LfgP8
	 +B26meNCuEJmBAJTMz3PEdoM8d9ltCkmL+GTzZW5Yue9OK92PZmn+ft2gQOlhxWisd
	 6ZVrRYunJWxlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9246CCAC59A
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175833839358.14980.12427526359585623985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd62504e64f82fac6236b011833dd6741e4dc544725d5029e94159f7e93f5242
Date: Sat, 20 Sep 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758338393
