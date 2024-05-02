Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CD0D13C675
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 14:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714659743; cv=none; b=HNzfPOBLvrWal6tHOKNupacTkg+0eQFidGoBC3p/ZdFgy7nS+fvNWTm3OOnXLSCO2WsozVcMGRx4A7HtLQvau4vE++YZClwpQDqWk4usydupR60zBoo6kqhnPTencb/BMRlJ3S6N5BleTdagx5cZpI/XPmtBieCadUkVg13ypYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714659743; c=relaxed/simple;
	bh=7QMo42g7IRaSMbbf6tnmzAn1cmGCwqRCIbp99b+XgfE=;
	h=To:Subject:From:Message-Id:Date; b=kfvA38S5M7sf+4o3THhASA290W9LvmmBfjYqcQieMWni3BUboilz/SHzwpBNZZVSkdabZpYJYfZ3QycOg4PlyhGIPMq2OwXHY2IBJkPeu/ius8Yqe6qwOnt0p7FP7meyWlcGyL3/erzeThGvZSh3coN9w4LOCa08IEA0vQ3NDFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c2KM7GUV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c2KM7GUV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3700C113CC
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 14:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714659742;
	bh=7QMo42g7IRaSMbbf6tnmzAn1cmGCwqRCIbp99b+XgfE=;
	h=To:Subject:From:Date:From;
	b=c2KM7GUVuKwS4e8ractwnaiBaaJ9fUirgr3sWJHcIjUImsSo/e8give4rojZ83Vn0
	 F70nubX8wQNxtnlMedyjvliM2XusvfeKepomexV+oVz17e/ScBAY/l4A+E1Pf8uWau
	 Kfc2wDcPiabvm5M8exjYDRh7j3z1REQCb+pRmX7k0tWyAcGRW+lG33m+McYnx15e7d
	 ipPxlSaNPXkdJJFjF5teslrQuGVGov6xhK9kXoTBVq26YakZSFVL4t+97J+asqzUCO
	 5vW/7u5Pbc+Sg4Rza/gRcY8yNVmdtflUuPh2OoaZXKKVuqRlVvhzGfpoI1uOz6g1iC
	 BSBSQgwLSoRbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFDBBC4345F
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 14:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171465974277.27058.8318070293981504814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7263dcc92c33718794c4f697a5e46d71c27bae97f4a3df36319872183959a8d
Date: Thu, 02 May 2024 14:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714659742
