Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65A46139566
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 05:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717047863; cv=none; b=dfo3MKwljC+eoZuYm8cOy8Mkn+IxURMjcVBrWDq5J42oFGfVtOcmgv3SSN+mqiq6lYTFk+M3DueRzvQMVm5fDoYaJRoIdLQbTwn2oMpLVXx7tSHLUUdn5rykM5j8dhRq+A8ZIEjxVV5+VdJ1IuREqtoWvV0PsCXCxlfskd+ni2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717047863; c=relaxed/simple;
	bh=+f4DljiTdxo09VfwkE1v7xvc9tXuOKmFBc/xaAiKYOM=;
	h=To:Subject:From:Message-Id:Date; b=rc7ky2rjQmmlECFO1qU3lX40OV9OTiTxpjNa7DyVVzlqJllOh14F33CvClxwW/uRTsHobawDfZgJBahlkbAr/TQNT1MNH3XLxg2cagUIyz9Uhx+DpMfue1THtMHB+P5yXtAtTlOWptgn/b8u6qatO49WetD3ISDGG5T8D0LWjWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YqkIGPZW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YqkIGPZW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D52E6C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 05:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717047862;
	bh=+f4DljiTdxo09VfwkE1v7xvc9tXuOKmFBc/xaAiKYOM=;
	h=To:Subject:From:Date:From;
	b=YqkIGPZWLnlltPkVilz9dnsWBnc2WqqcH6NU+CzEQj7cBkmd1uzlmm2HhWjTr4NNH
	 YHh/VKJ+bgB7p49nD8Re00ns+mV3K+znUEdOsl+OgEwi88u96/54Lw3vaJHneOCv9e
	 FORkP6yRZlBU5XdMSuXA2e0coEDios9O9iPXAHiMo+qls2RflOZDLIZhQVssr82tu9
	 dR5/eQCsNNWnVYOeqaO0ZtL2FXl3f6tx7+Cm9xntluv3yf+vB+twaTNtYBUTjAXxhC
	 EfA7z5m/2KU4gs2dNCbuDB/wVAIaxgVfnNaIEt6G2bttE0AJU8JcK1nk3yTs6psVCG
	 +IALptSxgrK6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0445C25B74
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 05:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171704786277.4595.3212129945281283872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94b785b58bade005d387ec9aca7444df8c8f3a71ecca86482c4f2ccd8c3b99fb
Date: Thu, 30 May 2024 05:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717047862
