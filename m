Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53EFA188A3A
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743722994; cv=none; b=d8LunUs8Rtgt8P64GUgZf3tpj9dhdFKy+nn+deoeqeYMJ9IK8NKPZauJddX+nZpYf7Qm2zZr6eMn36V1dcBr9DKreMy0D4W4BykeTL0kEG1Bl2wF9xQDgTYj0Z9K3kPtyHMwF+ADykpmgc/045SzjxJHSijkz8LlWud5jmchTo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743722994; c=relaxed/simple;
	bh=MQGMH333Yoi0HcYxPqq2rkbAELR9oGZTPJzPmc6v6aw=;
	h=To:Subject:From:Message-Id:Date; b=X9v8EtuSgKzVMBpKudqXl4GJh6YxiJBBSoKsChcdR/h43uDOrmwk9l2YzAS59ToGXYnre3S85XjY90A2vvIk86PR94VNc+6GGGUbNY+XPzfS+0oL411qXRKRts6Fl0YsIY/YT9UVlubkUF+yDM1U/RFMBFw3Nw2IKluXbA7zmS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rn1nDvbh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rn1nDvbh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8E94C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743722993;
	bh=MQGMH333Yoi0HcYxPqq2rkbAELR9oGZTPJzPmc6v6aw=;
	h=To:Subject:From:Date:From;
	b=rn1nDvbhXBlt5gSvCnrX7miPaXIsrJfOsVklbvGfwJf93y/xwuMqx8iMrPuHx2Iok
	 MQIMlmK5e19aKQff7eSVyTKJ1FbPYlCN47tF+xR7mAdDogneI1U+5Dcb1XVWsaNp58
	 wOKznekliEW9rzn03wFHNwCTZhfGo0XXTMEm/jf6m6+etn/QASwhVj0qxjqMd6vEfb
	 5kRG7iI86GA3ji8Bn2n6s1ifu6caOTOaLBCscofQqVVI/lcxyrryFFLZkMSKWU60j0
	 5X0ROIRAHAUa4XcRhXfnol5T+dmzu4dahs/NQxmO1ZupFnVbbKqhDJw7FoqfPg8G46
	 TlgJkBpAivLnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0CB9C3600C
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174372299364.17972.2513381407790596848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 047c59c3688dd810379cd9468fe1a5e1191e6a23a1cfc6542542cf723b7c558e
Date: Thu, 03 Apr 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743722993
