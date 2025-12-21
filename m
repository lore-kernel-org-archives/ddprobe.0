Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FC371C860C
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 03:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766286234; cv=none; b=SxDWJqfvUXctd42rgMYvtuV77xnR3wGp9Hltp43Or13AbKAyEot66GBkrsLCx5UJIZv4U7dIgBFlnX/976XzH4nMQExu3c+WV8Fa8AfUalo8G7k3ibiD6p0t0Jca8a1/DtfhXIMmf517JaRlfaRf+lRH4+r+JblEwCXmKeHCzDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766286234; c=relaxed/simple;
	bh=OUbrCAaz9ASl8juYiTfw144rmFbWtp2HGbIWui/a9aY=;
	h=To:Subject:From:Message-Id:Date; b=OvNfXNgskPCBBAdHPmpk0SgNH+0Sbk//z1SGB7g9fmNWumeDZdlxbnljBqii9dNurvF8NjhlfpJ+PMn7q2KuJ72uxMYBWHM3ZywzGggubKAPMdii6jYxTNZT6Ezv4D6OyGYkjXebg3w2s8qU1KyP4Uhv0hrjgPWxgF2UFFdnWak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sl72tvdq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sl72tvdq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC2D3C113D0
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 03:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766286233;
	bh=OUbrCAaz9ASl8juYiTfw144rmFbWtp2HGbIWui/a9aY=;
	h=To:Subject:From:Date:From;
	b=Sl72tvdqwq78JE30N1F58luelylFJP94BgwEPICf2M2qKBF+ItoZqUx9RrpZEoqoq
	 EOOBJDU962syBfMViONtDB7fgeuTKHwjtJ6GpaMJrACm6EEPc/3dgkF4jjh+f/Iy46
	 2QJ8Yjo8TGxAFVCyl2Tpb1c40LSPTcV1VgUk0zITPUtECcH2IFp0Ij8FtOE2Cg3Gw7
	 lAJiV+PtpZxr3FPnK+F9NQoKmVe1M1DEy5POk2GXL7C2mLtZLzqpxad86Q5p+I/0fK
	 SQMZ3gt3xywP96Ggo7V3VtF+0x6tfalRFHU92HETOcEhbLYN+dTGXTQ+H2m5GV/3Lu
	 yuGjq5XGgnung==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B87EE6748D
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 03:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176628623360.31267.18129116116249289404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 314311049a58910e3c6b584c8723d4826dd85620241d55673350d57dbd4df07a
Date: Sun, 21 Dec 2025 03:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766286233
