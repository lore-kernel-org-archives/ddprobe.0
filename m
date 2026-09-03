Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DCB54F30DB
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 16:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788454234; cv=none; b=RpmFJtfOXgxLMctZuswDKKdaVJ2HemmQLFcjW2ZjcpXiQLF/DbbmNUyqzpLRfbVCzWndrWYfwxNEvYpx5hDCf4G03OrnkGWJMgT3U7Nui7BvHKoq76g5SlmFiCo18RNcjRwW0e4vMDJkBAREKoLFuqRJIKB7idk5uNdwit3z140=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788454234; c=relaxed/simple;
	bh=7VeLPdereerGYNfuvOY2Ikdxoulic27Jys6kWUQefXs=;
	h=To:Subject:From:Message-Id:Date; b=F68gfliMwAi4IzDaEa5RcZ3bPC0df2uFOhF+0CzsGGfr7KJlBBFVU3/ljiqft2RAYcAno/1F8wPPyW+cXpVmSzfNJ0FC5yg5BR09uyQ9XMd3rrXPweRb+jKnY8JSkVN3sfB/nXlSKXQzQdKAOJOz2aPTUF6ktU6CUhhU8ZYCcNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KHsb38TL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KHsb38TL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D49DEC2BCF7
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788454233;
	bh=7VeLPdereerGYNfuvOY2Ikdxoulic27Jys6kWUQefXs=;
	h=To:Subject:From:Date:From;
	b=KHsb38TLuhtSgC3/uRBvbTDyRHqfO3tvRZNV7GM4bFjWX7myTtzJMhYTOxRu6u0EW
	 5dgt2VXMkTUIf7GLV4Dq6Yi5up9hAbDmyv4xF1HheXQ4Va/DExWbRXKQCeKVLVvRHc
	 tx/TJIRJsCL2cR+pFgFqtcxlHFWDGcltm8o1PhLEERQI+tke5/pmOQnls7Sl8gCorT
	 klEuDrqRr5CS9gDUbrFwNYMST6OMmRTom8jZVNe4Cnc5F6Iqalmi4E66LtHs3dF/W5
	 vMHQV3Keb5t99IVNDcbd+8JQ+frbhzXMRu8sMHdqHInRBJdK91n/C/7PF1keAc8EJZ
	 bnwviXLpgfh5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFE5DC61DD3
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178845423371.16780.1519055904928430272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a2d352911c8c3fa746efb748d9f24ecf08812be9a9649864e3e0387fe69bcef
Date: Thu, 03 Sep 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788454233
