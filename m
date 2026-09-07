Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46F39326923
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 03:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788751834; cv=none; b=t9TMPY8ZsHIuoKRWbR9zlxNs0e1I676gAzheSCNhOcR/WNM+k4Bf+cPtusoi1fikLR0H9gbU/bJgixjmeu5lU8namGHW084rPs6qC9kZCyNz7JGEabANSa4D+10B6/UPGqt3lUlGnQuwuHcwAibuicqJSMizeFXPpvGtrhuv+7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788751834; c=relaxed/simple;
	bh=ZQwt0e7Ns2uj25xBLEDGwE/5yksk1kdbYIRMow6H/jg=;
	h=To:Subject:From:Message-Id:Date; b=HGChVxAmkbjrNjFWhSRx2gqbSaQuJJPgTEULDQhGWoK0U0tTBwHs5prpyCNwEPTRpgO67e9Ts0akKdFgVYV3v/oWXD1/DO0U9zzPE1JiZVblkWDuVFG1hnATF1bSWEbVnpi3OJy0mDMyLq5b52OigzSAxr8Y/w5UNNyRWwH03BQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tZXQS/kp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tZXQS/kp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEB99C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788751833;
	bh=ZQwt0e7Ns2uj25xBLEDGwE/5yksk1kdbYIRMow6H/jg=;
	h=To:Subject:From:Date:From;
	b=tZXQS/kpUW2ij+ydGMjlHDNBSSNSvvNaIweDbdp8DRwuDyk1DN5Ya7mdypC8kH6tC
	 X7yhA1DGpvvr6z3FsioQeFRo+STOPAwollcdlEsZC8V2SdMdHWKgGstH81vTAZqJjn
	 h9L3kvqeOYmfuq3AeZ7urns7KyH4lpAHg8eA04TM1rfLvg402tVfEepV56ayKOrau4
	 b4dIbykuFRY1ZQzXHLc8oL03+DL9EwWSf2AZFeGNMnupw3ZYN7wdK0UB0iAXf5p29g
	 mkyqk3nE2373PWsoPdykoBE3B641hTZ+992nuq2/HlLDMwffauOD+ijrGjCFFG7BHD
	 2V5REmPdkRm6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE63C79F9E
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178875183369.3029.14419050159177379251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9327c1742c0327650b81cd0ae2327e6403dac5a7ca3bcd41611d93eedca442f
Date: Mon, 07 Sep 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788751833
