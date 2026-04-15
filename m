Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1872F346798
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 19:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776281854; cv=none; b=HRVigBe0fXKc1N2gLUD79Ex4U9rBTJjGZ9zLiB/meCdUyT8lKkXc6SZ5rUKFGHle016tA/lOZZvtdCgzQjwrFpxvoypnEMjoh0ztHyXDIZDk6uUhEFN7tX0vtxMc2MYVyE/JxAsmP7YfCFRjQzMk1iyyzM8/4nFmbp9woXtW6PU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776281854; c=relaxed/simple;
	bh=n9oyRZxj9i9kx8zHcgFdjoBphuXiccfKE05jNhSTwas=;
	h=To:Subject:From:Message-Id:Date; b=meS9uri5Mjb7hrSK/pDUJ1WZX4Ne/XwA+EQW19iM0bB8EnqmHPgdqndlIhCsUeQeJ7mts61H/LBwF7ycnKpejD5rLbkHTkSU4dA+ROBPQOoGqhColMIfynxzbkoCRFKNSBYlEdyT/oSohhhFMCmE6pMi491Ehc9JsVe5k/CyJ5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bYvDgRFW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bYvDgRFW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAC38C2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 19:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776281853;
	bh=n9oyRZxj9i9kx8zHcgFdjoBphuXiccfKE05jNhSTwas=;
	h=To:Subject:From:Date:From;
	b=bYvDgRFWFa9IyLULbG4sn5Sw2jn+PMldZKg9ToBtRTuIwWMzf35nPy3/wE3zU/v0K
	 CmohYw/lrDRsZkEDa8cbTb8/uR4dL2n3GfSZKW0u92NhdCu7LNOp90wORj9ELSdle6
	 aDUg+TaLsvPkfNOWvfrhDhjPqsXFpoEOO6Vahj/0olqgJbGiKdHjsgO6BrNtiLiSQ0
	 Bp3vlxm5DFh0qZyiBf3mL30zRJh75+0sjdHVkEgB6KmaT6c9NuPRIbbRp6SZhDEk+j
	 JhfF7uhSd2tGJafgn33Ni8Q+kF6OWko5V4po9qabGuZtLroQZVuJ/0y8BsJNw8b4Sz
	 9iUhX62pxGEXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4A1F4213B
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 19:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177628185368.20495.14527124333864800803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99e99a0c355f8da886f26720c8c52b17339642ea52adfdcc5549906b7d6dcd33
Date: Wed, 15 Apr 2026 19:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776281853
