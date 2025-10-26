Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F11722CBD7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761467394; cv=none; b=rZBH/JlTKwtTNqIiDb6roxROu3NBsi25SQmGP/APdV72vItQfvR8qK/xtnpgFexhSSnktm7eGGIX2CEdYn3vuOrfcUXKOMUPdyZomSXIcxDxsa9xw7gcSQ49nKhSL5rKa//si0opbGdsCn4g8JBENr+pP65RVNWfkCfR/6oS7ag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761467394; c=relaxed/simple;
	bh=hNM/WbdMuhTIMmzQB9evFUT7/TRB8V47j9yXjdzMvAE=;
	h=To:Subject:From:Message-Id:Date; b=M74+04E9Ky11xj4kBJ/ek5Y263JjezbWMTDOSsYkKKG+BoGrKdjD4U+fz6UPOBWKHknLrLavW7SA8yYJr87aX/e8xUvOK/N4LkNDT2ixEO3onm/iUZJsMjCFTkSOoF/oApWKpH+hCHMz30God0b+AKGSyiDjEfbzxtD8GqDZhjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K5tKs7WK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K5tKs7WK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D87C113D0
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761467393;
	bh=hNM/WbdMuhTIMmzQB9evFUT7/TRB8V47j9yXjdzMvAE=;
	h=To:Subject:From:Date:From;
	b=K5tKs7WKIcGJ7L5PO7EaXIy3/9nlfxC4K2gXAtOnSpK2a0wADc4uBDvTHTo55oWTh
	 juUt0jNzIoEAYwTs9GfHq04oHYPTN227Kmdt2PNuATpT43x9y2iXit6AVBnVtGU32S
	 wDDN00TxtjS6Ml4WUGXmKg+g3gpXK78i5VKEkd7U4FdSotA7U9ZlX/yLEI37Nlm8IJ
	 HZLkdHi1or91Dn7Myv+ZRuI3s6VwviLTWwOl/Sj6YndpAcXfYlGfvTqbsvIgyWCpj7
	 FXJacKz3q3BVhZNyuVIErGS+BkIfHjqSqFae4UlfDIoyQbkdiPc7mVu9k7TnS/Psi/
	 LfqOBx2jywd8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B81CCD193
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176146739358.28226.922873297108448300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02a48ffaebf9e5b0203ca1b540946fcec6cc00ab79233d304b583b8077733ba0
Date: Sun, 26 Oct 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761467393
