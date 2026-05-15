Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCCE2C8EB
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 02:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778811633; cv=none; b=ZzxJ/lw54d1bAnH58T4HvrLIBNk2S9izRv+9MSZSka9fRzDgVMcwFCGZ1P72jljaKQ3fk/FXeizPcyea+OrQ3vgduWemadDTQNj1BEhhv/S7mtVhhlXJKmBSqGD5VECc1pHzhMk6GxETeKuJ8lGU2IbiLTq4f9uucv05hMeYcQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778811633; c=relaxed/simple;
	bh=EYe7ujUcwAC4ZOXIIOjmWWtG1Ba8AuxoNmLmWefZxuo=;
	h=To:Subject:From:Message-Id:Date; b=WKNuUQjo8VXHu8Kd1aYNJOXv7amwkgmBe16Brfe3+bref7D4rlTMNhe5iMOTluhrfCgGxrBQ6bjA8ZvcQC9AS/+in8ZdySDQxgpLWkAHGBOuCcSEAkFH/Fwcix7e/fzWjJvLbdu++l+sVl8YkYNUXBEMDH4RWqYnRruquCVOCXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N1lW4mQV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N1lW4mQV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFD4EC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778811633;
	bh=EYe7ujUcwAC4ZOXIIOjmWWtG1Ba8AuxoNmLmWefZxuo=;
	h=To:Subject:From:Date:From;
	b=N1lW4mQVbVuSY00IWqv/bIo2iem1lBZ2u1w2hqOGCRixusFWogzYO2HvHWI4FPPWx
	 Bb/G08jX2Ovrqvzj/KXMq6VjWjOxtnSLv65H54F4d7WRQckkycevSsKiqLKy4FH4GX
	 bSXnLzKyyrtqhLIRr/k56a+jbTb+ld9e6eu/7sCdxCp8VEWjpLePGYKP1CSB+/zB3j
	 bKuwxZG8Xb2pXbzxOkgd72vwA51p6Zz7lo7W01HqLz0OBGA2N+EgcHVOjDbZuBb/fi
	 fo68IqW7+qdg/OnqqR2dis8zINNrXzeuTVs5+Ijt2hhFDS9X3RACAcrqS8PkKa4zTz
	 oK52YBnojuDbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA7C7CD4F3C
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177881163369.16835.14828540034454822277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d729a3e1be2c938663524112c56a0609b82d0b1f2ff20a8e3e97dceecdd5d2e
Date: Fri, 15 May 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778811633
