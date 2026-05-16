Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E13E33806C0
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 08:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778919034; cv=none; b=kxYhVnj2wbgIJmrw2+SUsNU6JxtNGEWDt0XoF3mvfpfFrUPaHO40o6STBtNvfmTq9n00Jdgy7ovlPBHveMQ5wXB3t0VJAyxDC/Eqd9PbkqGi9HEagJI/HnfejiTpP8hq+rw6wY3eaaPXeDbKFQVM682gHjWebq9SveDsep3xsfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778919034; c=relaxed/simple;
	bh=k770MS++hGhjICqdQVFEOp+cdBUzdx9y14LynErCuGM=;
	h=To:Subject:From:Message-Id:Date; b=rqGDjdpzhv+Gx/NRziN7CGYaRY5E9oUG37dW2ukUCQ4HO6YwGhgl5k++m9VkJSmeOhiQkOD6vkcAXBI9HHfs4hJzcNjMnbup52jaqQ6GoBp7CJO0Mi4CPCsvHRJLCEoKx7jtqdF0AnJ5/jmDOVLM5l+s5zS0BWCndf9MXfar6fw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pPQ74auG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pPQ74auG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0797C19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778919033;
	bh=k770MS++hGhjICqdQVFEOp+cdBUzdx9y14LynErCuGM=;
	h=To:Subject:From:Date:From;
	b=pPQ74auG1mbPaAVRSUvteHQtql8fCWXQ047R9wVImLkyAuj13unFcHUT7fZNRVi/+
	 uU3W5YzV65P9bfxzTgP6RhLSoEwvttt7oGdZW5Nkgxbyty+A4hcgSlp2xdDbuNOQz8
	 +Vhur/Jjf+nor8qvYwt9D0anPKpmrDkzZ8EZu2yYe0TrMh28dpRmCTWvuple9be8wp
	 0O1vDWE5JEV3n/LGjfR2/Q9TgmG3hBuA4s2R6aCEPDuUgYiHRMG7vegcv21/BSZmUB
	 BUqfjAkkGWSTrLM/ykRzMYbHn/S8B7zScRdk4yNAVl0rHRi5bhfU6Xxbwy1OxvHMaB
	 XPMTLchZIubow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF34BCD4F25
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177891903369.20360.17196484515603852985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec756032144a2a3607051f8bae4c201a6f4baee496f5a5a5e66a389e0e8b5bc6
Date: Sat, 16 May 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778919033
