Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAEE422F77B
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 18:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768848233; cv=none; b=mvo3lG1+axE9zW/FkmOTdcPiG+Tf5YiF1O18lYMRRhoTqXXR1rP20O6URoO1jqSiKnRlM6+X42O2khrrLsgjgSwEpvmMEp6Wfp27yqgjkA/7S8U4i8hBt2fF6mDIgdXPkfbteaf7XX1DlNk1x1yNaxYdbz29AASRspT92c5YWCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768848233; c=relaxed/simple;
	bh=IN1Aqvo2fc6SqyQbY/7fFMTPDcHVx8LGPWkGyBM/NDc=;
	h=To:Subject:From:Message-Id:Date; b=s30+OIgI/pD1rdn0oLGL4jeE3+lBHItcMW1aNrm80fD1Nj6hThT90+2DLEcLoO8UjNYKvR/hv1ragFTTVwCr7AGPDNKrUJk+ZXSUY5j2YQEvRpTjv+ub4JZuzLMfFVA8BYbfYRHfHBxSP9ixBBq0pznMnkAG8ZV5zevBLOv6IG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oISuEspL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oISuEspL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DA41C116C6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 18:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768848233;
	bh=IN1Aqvo2fc6SqyQbY/7fFMTPDcHVx8LGPWkGyBM/NDc=;
	h=To:Subject:From:Date:From;
	b=oISuEspLmPlpgGGTZGaF7xclmVIVbKQmr3l6gpwUU1KUWGg8pDvtK6zQ1TAmU76Ms
	 1Kh+ly8NWEEFaFMK3R1GkpHLetgcZC+wimZZOw1sR1jlvFmr49yv6myWzA/fs7dhwT
	 zbBxbd8mP2Gea2VGit45bsJSC113wNFACrgJpEcGrAhnW8bqXN344WM8Rt6hHQTDNT
	 /FK6vJ8R5QbsVfF3GaCXNdVEwRLBF0O62AgJHujdogn344cfAePLnufq/Fm9JoPbbO
	 97L8e6Vi8WLX5eNihY1wiPDA1js9mQJT1+h5pDJLBuHtu78gHzj6hARQwvKh2sZmKn
	 hQ74xUL5weXKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905A2D29C50
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 18:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176884823358.3582.3536097402706863304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3f5e2db80f24e2fb2becf5ec8ef085ca88c716d2ab4d9c82786a361fe3116af
Date: Mon, 19 Jan 2026 18:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768848233
