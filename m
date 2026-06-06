Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DDC712FF69
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 00:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780704874; cv=none; b=Wpr0tZ3S+WymYnwm9VTlztJTp7Sr9WHzvZZ8GS5r8ku3+1jxR43/Sc64DIVEZlQ0EGp3Mw7YR7EMmMST634hD19yT+Hx/razo4QAF0+cBR2ZIg6EMxOiSz2Ju7r3JBPG98z8wtRjcxzMcLVT9QAwCj8frqNWAmnlwGLO2MHDB/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780704874; c=relaxed/simple;
	bh=Oktb+qwZh6O8QSwvNo2gfNI0Elp1WgqfC2QL9oksyKg=;
	h=To:Subject:From:Message-Id:Date; b=TXgM5tWRdjG6RIhzNW9v6xnzOc1fyLS33KjF005u5x3m55WNsJkZpxDnntM1P80TFpGh7pxt44ad15uuj8eGWYXeGolmVZn19D0eaPvPBF7xDBeY3bvYqglXwz3NCXrOAw1qtcpDV0jvFh6VOZMM+DYKPkiohgcymLQYvKz3K8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pueDxRgV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pueDxRgV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9778C2BCB4
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 00:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780704873;
	bh=Oktb+qwZh6O8QSwvNo2gfNI0Elp1WgqfC2QL9oksyKg=;
	h=To:Subject:From:Date:From;
	b=pueDxRgVcS2KKjJpu6k02a2rmpofT4o7ddWe4vdshcGRxUa0goygndDvXi3qjzXav
	 aOfoxzPBDWwZmlLuJ558GJBdzgcOLOR3sIyuq9jZmw5952n6G++lEzfQLhVQ3O1gJi
	 rceSSHTms+UrHWbhHaesdXD0hCrqb9z424ChLRam5+4JffhYkbUMx47dZcLMoBDpWV
	 EMSN/yuS4Oimhcot+GZroX5gc5f+tPXFRC1RmiH94lpCS755nmmYPO/6BL/Yat5mLR
	 ZbzI2JG4OpNqlLItZJ1cOT+JQwLDGIP4BDA5xPMjCiZXXOjl/iKYeZCIs21BkucXZf
	 Oc4Pqd99PepNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE6A6CD6E7B
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 00:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178070487369.20471.7045964150074500252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80eb82d38d18df8a235b744dd47df0d030b7916455d361088d6642fd63f955d9
Date: Sat, 06 Jun 2026 00:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780704873
