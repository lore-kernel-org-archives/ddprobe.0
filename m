Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38B26148FF2
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721501754; cv=none; b=qE5eKBSLqSz7DP/R0H8sgoSdqhfmCpT/R6TJfcP7QzA0Ld8xgaF21Zf5CWAHI5zW0IUSVmKcc0mMwsaHmwh8Km+7A0zcebfgIGANpG1aMepagBWNr8oq4PNmSLT9/uk1kKOV1V0zbwc6uqIWIQryHClYla0TNuD1cTLlR5vsQJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721501754; c=relaxed/simple;
	bh=FazqpE5ITH3RCg0j+4fmUQaGJclC04vrQTkRzhsfcgw=;
	h=To:Subject:From:Message-Id:Date; b=nAIX6DYl6pqYPtLvbmmabkVUm4TPY8VfvcqfQ+u9u7YeMwd1slbsFz4udlcsLkAp5VBlaEsULOiW9DptPqKlmJCJTBJ0h8nDC3LtqgZnUSXk+IT/1HAnCL66o3rMMC3pMSl7o1uF3OFXQP7l8MADP5DR9MM7a7cjx/LV7SWAS20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vLJonvzh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vLJonvzh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2BA8C4AF09
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721501753;
	bh=FazqpE5ITH3RCg0j+4fmUQaGJclC04vrQTkRzhsfcgw=;
	h=To:Subject:From:Date:From;
	b=vLJonvzh8NZIzsydCFTv7kEBqjr21g7J89/daYiXOizkaoSXst2Aao3NsFio0oGcU
	 lew285z6W2M2GLtT6bV458Q304DjwiZ9bucx2VeTJu2kLu4j4pRdZeaB728kxegEBg
	 hOVpEEdLXzwpVowxq1nF+Cctg5irTW9DUHtav2n+bLzFgAYjdwPvQPsxrLRzVV2hBb
	 IqqeWQ8bhLOHz0yrsl/uzf0AY533wQII8Gr0mI681obt9Y4ElanhMgGVSRd3313hu+
	 ezKj18WyHlhMDEWNUe+em6fipR7FdqlfADU7zN4IyFmffx/wmPI8+e60piD8RN5aS8
	 MkVOu5ARbho2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D64C3DA59
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172150175368.12728.8342896437111293908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e154611c898841f8b099d5a5eeebe93515b02ead3d473c41fdc31eb88cfe7fb7
Date: Sat, 20 Jul 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721501753
