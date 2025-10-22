Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 276502F4A14
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761160794; cv=none; b=Anl67eMQm4lFhCwsZQGw4FjwEV2V52dBQadn7EH7EdB7suBoVyuff2jE4YYbpVK0DUgjn/b5N0gCRhPSsBxi+PkMlHeXCgHhKV1DPTZjEb2If3XQxrrtwYU9On5nbxJ6RKsHNFbGwIvApyxgtfJSW0qlZAQyTb4hRDH7xCy8E00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761160794; c=relaxed/simple;
	bh=GI+VoBABtIV5Vl1L3nPaolLDivOLUmcjSNoCHiin3/I=;
	h=To:Subject:From:Message-Id:Date; b=auU955UXkxx0+MYrAIC7C/4VaIxLToJn+BY2JlqznmkMXBIXuTcgtZ5wNCKxXmHwU3M1Gau9ky9+QDf7/fCsG/284xB9sNv3q14DkkEUm3sXYW69EfKJlde7y08dxz5SK4S5TyZDf1pmBJ/QS9+kHNtj1e+b8N9SoQjqdQ35Wyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Go8YcO/j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Go8YcO/j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A745FC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761160793;
	bh=GI+VoBABtIV5Vl1L3nPaolLDivOLUmcjSNoCHiin3/I=;
	h=To:Subject:From:Date:From;
	b=Go8YcO/jqik8y9Hc61GfLuZatk2jKWXqtBVJ7pWeOSStsbrBOaG+JGzflVdJS+x4B
	 FmFPzHzKzr0qrCgtMnrNWj+xPh1RP4avrAm9nRQapJAqL+r61nSJY10u7eD3P05JQx
	 IZPt0A6bSldCRbXC9bZSUsFQrr6+28d7ura9sDDYGo0zxTt6J7ddMmpck/7Ba9HD8q
	 D9bzc13P/YRRa/jFODXbwoiDDwVePCj0y0NnIeEVHo6CcxWAUnlxlXfPspsX8/pYpP
	 aknmexFmEVNDlYpvZi41Fy1GfFXdJ1lJTqB0/S8QxxdQH4zagld12AYyUJbeB5xLeG
	 SARptpFaYZcRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92295CCD1BB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176116079359.14392.6060540359669213201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cb5d3437e0f5ad2eb34425d58dd143a73dfff42008c4b8281004b1395b0fa06
Date: Wed, 22 Oct 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761160793
