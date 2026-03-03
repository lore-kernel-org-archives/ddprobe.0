Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D3B1351C39
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 20:54:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772571294; cv=none; b=pRaJGhoSv4OacsjCmM0nZlaRCSHRmVI3GUnsR8DiucdFWlVovmwhNF+x8Ykku2q2zEYY0V9ypHL/pucJWgSceyaYSAJ4GixwI/HppMuHW+1g0Nw9X9uaFoiHNwIYyY4LDwKgsLHuM8GloMQOaFIp3xPtTzRJvKBGSMX1rBjJuyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772571294; c=relaxed/simple;
	bh=5mhvJMNCk3qsNd/LALkmgQB584ch586qU4p5gFnP3/0=;
	h=To:Subject:From:Message-Id:Date; b=Afy4wKE9c/ge/zlbyiR3RUQZAUrchbCk4IiLG2RUmBiD2rSudLQTkPqUofVEwE0zBuIjXwqG0ZNGsnX3pPdR2WVc05iOlB30cKBajsENFXSWsQuY88dnKB8N00BdR1ww+wsrOLiBjfPBB6x1n8FZ2LiinXxuq5PdYrKpx5ovfgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P/o8a2ZR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P/o8a2ZR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0AF69C116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 20:54:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772571294;
	bh=5mhvJMNCk3qsNd/LALkmgQB584ch586qU4p5gFnP3/0=;
	h=To:Subject:From:Date:From;
	b=P/o8a2ZRj6jJAj7K/Emh3NMAznx4aktTJjqFwzrWxSPYSxKUh8/9T7eSWnzmtb/xZ
	 wwxSBZv6Nj3loYyGO38WJaAO2vyh9RRjUiuE3YhrBBRpYwqNhRL2PvDOxRHDx8iWPD
	 b/wkXCNWgbu64BKOPY+FvCfXt3vDz1XQl327fRxl0z9HSfbSbZB9qXxqn0yZRs3BXq
	 MGOkfoHH/oAaZvU4CKowzvurkVFBCg7lz9jxq2k0VQPwCEarroVL7rg+AoFgqWYFNw
	 pfjyWjBDtX3Fi9ytNTJOmk+mhT5qf2uMHRdpF9PD1lHPSBFwxf5zPYO62M1PQzNh4g
	 tg174gqu1RMsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DD556EDEBF6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 20:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177257129387.2984.9229256798407424491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4e45a253b740a7bbb30877bf7db460009a425c9179fc67145fd68a4f1af47eb
Date: Tue, 03 Mar 2026 20:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772571293
