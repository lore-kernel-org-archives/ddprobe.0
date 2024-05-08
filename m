Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F5F753E16
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 18:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715193143; cv=none; b=qOEsG7fIlcbTsIWGK4OPnWX/wEnPltmTrV84TfYgPHfczm/MTzeqhDTInz+eUcaOdUzWfPXsUjNIhKbCoiVcWkpk8ckX2iccGKWsrk8SXlKGx1jXkxl+6qys9cx6gqyVgSQMD0vYtxSEDeDgguewdHkdtUM7lvy9l+NRiiFzk4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715193143; c=relaxed/simple;
	bh=N/z0SoAqsQ3OMc8Xmop8g9W9lKc83TJgtl/z1iL18+c=;
	h=To:Subject:From:Message-Id:Date; b=JzaBUidmGVcjQhuLHZL4NMQyFNV5jUfu9L7hapNwfAxt1wHHqEfuz4kpj/9wvpiAdqzArG445AL/21riRxXbE+7BbG+EXcn0BUcyC00Xmaf2Kbgk9ydBGprDIuzQPwFUVB41SxDZvPlsjVbd0Zgbb/w/qyb977XDpo4LnCZVXVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c6kFDs/R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c6kFDs/R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E62F1C113CC
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 18:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715193142;
	bh=N/z0SoAqsQ3OMc8Xmop8g9W9lKc83TJgtl/z1iL18+c=;
	h=To:Subject:From:Date:From;
	b=c6kFDs/RA45RK/yCc3tCDfl8ABh53LoM6n6s2/4Om7uQpahJ3yFFTksjJwrYsGeTS
	 dkOqs6wjFCLRUdf3e9T4YVULD6eessdnZs1MME5E3y0KEyG1qnhRpvSSMnKqXNNaNe
	 JWddfyACjWKJI0K8kadLtC/DBiNL0IxwlYzPcMbNSO1W8yqvy4wLcFj9F2yTN6hbhh
	 RHVyN/9n2UQZ/mqvhPj/eJmdJAzFeKYH+Ve7ArSjbg+tgdDJ1FDubw00ID4HvrPyCJ
	 L/tS6K5jYwxRgjK1r14Ow6U/E1WlSXNUC/3K2reWV0DyhJpyzn5pooInlCsf1E8mME
	 TwBNVmg//mpkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C811DC25B4F
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 18:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171519314279.22517.7044816768264647819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ecfb13910171e23d53d11d6d4c2bab285c1257da511e369b3e93f23838dd310
Date: Wed, 08 May 2024 18:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715193142
