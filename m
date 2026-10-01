Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5078E3B840E
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 19:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790883034; cv=none; b=rYuQbMwmn0mt15LlOr3mI0AEirliDekd8EaQT7eiEtlKIYhaiCaEfH+MEAJR/gox9mAJzP2tNsh/5Eq9Q0xmQb7YjCf+EeZp+aigEbhTixXEyY9QWGDU/P5iPleV2IVmCDW41y88mCGXNtrX9L0IqftzzKQAM7L4b4sAWoTKOeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790883034; c=relaxed/simple;
	bh=L6FOYfGPPFecrJfcGncPKIsc0XTDc9OZrdC16zC5UfY=;
	h=To:Subject:From:Message-Id:Date; b=dOBLuAfieRqDO/2bwqZzuk7ELLVrwrAJFR92xf0FqSd9qc9fOrR3vrMTV1t6RLu8uzvuw4PjlsR7OeK6JqmMSEHGh1JZdgzjswt1tNqfsE+za/V7i0vme5wNoFsdFC/6+c4EX61IzYwHHfjKvXOR5tR7EvXAqJEblZhfpdQ5mI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oZ2Dmgmz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oZ2Dmgmz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2D45C2BCF4
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790883033;
	bh=L6FOYfGPPFecrJfcGncPKIsc0XTDc9OZrdC16zC5UfY=;
	h=To:Subject:From:Date:From;
	b=oZ2Dmgmz5HKmUEhkoTf7l+vPfO0PzJuW6GCjDgLvemMBebHjxnhcasaOPrtU9cPgf
	 gC1kLuHPxJeqoz5Iz77p9CdrP+0XuVSpK80DtD/k3GJfRuPlrU+HQhheAKiYHaJ07d
	 aNaqoxJD7kfcbxpvgj0kTp8W79y1NdABG1sHB9W8/t4rz/31dJfIMvNyhEThq6ZgnA
	 vFk583FMi9msRWg5+G3e2udDY2LxpUNe5zjXBOhLsyQcU8oOlWbjj8EELzZBAVkT3S
	 ybE240ZtxIsgNU5XLKaSBYyBQmTRN62kcZfVutlaN6Dp29gi/427KNxNSUmTRPFQX9
	 N9IHReSbDlHVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB279CA5FD2
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179088303369.8380.9137781327447589620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec9e6d15e916339e139f7a8fdac189a2ba2e837509435a168a9fd07c0b5684b9
Date: Thu, 01 Oct 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790883033
