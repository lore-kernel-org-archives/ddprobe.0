Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FE9D27874F
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 04:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779077434; cv=none; b=WJt0z4yCmNeoOQwwmmpteA6h+35cDbdoayVqOCsTQoJcQO74UQnE3bitS6f0jwBtph8Z7gUBFH/QmTKmptlOcrFpPqImWR++S+5DDWsIccQHZk/X9DYvc4E8S2EaDmhrMWfggxASarK9C7DFKhF30mWHaKwMi+MbsP/mv93zIrw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779077434; c=relaxed/simple;
	bh=lbc/70IpfF8grYoE77w04WtdnAaAGcRArXM4+01owp4=;
	h=To:Subject:From:Message-Id:Date; b=HI2VTw8sXos5es+EddZfzOmEM1WdHXOAhYRblZAUq9bf/AqLU4RO7XlO3ZzF1xg3Z6REyKtJtmihDlLEBETCMvOtJdZnrwLTW88Po1weEUtHL3XjPzSyxnWbOeY4++LCxFbcZnDfmVNI0nH4mfewbo5IejhWykc8fsF96SNJX+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X1eEYNPM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X1eEYNPM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5A43C2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779077433;
	bh=lbc/70IpfF8grYoE77w04WtdnAaAGcRArXM4+01owp4=;
	h=To:Subject:From:Date:From;
	b=X1eEYNPMm//9Jd/ZeZ9zhed1Q32e3By/lNyWvjwh5nmBFCVi+AG8vLQLeuB72Fss4
	 /TwZgX+Wnhn6VXgbYjSfWzcHDCVktBPeN+c4SRcFyzKxfbMDCAeERaKk46Om+c4Ke0
	 h5xafDwSCwhTsxn9mtI7Ic2nl8MszNFDDFy1SwQoFHTq2RcO9tRTdgd+TJDT6kNnhO
	 cIzGg827HgxSWqltCOaTyAkbaprzjIZkIzKBgLaFcbtVkz8DbTBGAE407jTwGcSm1C
	 w/YMszQ/fZUnfn+hak11OceaO4wd/OAeZrnkVHPfgICnaH1zqFJMAmEu0jcDVY64SJ
	 JZqIONPfkAaWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0A03CD4F3C
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177907743371.3421.1326586287271149494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 988081ee9a3cb0e8c02a75a692eee74de361cbf8ef55df678ab970e91270a033
Date: Mon, 18 May 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779077433
