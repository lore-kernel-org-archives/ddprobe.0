Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26FBF1E4A6
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728909954; cv=none; b=HVIAkqDRlvC30VMvSXsfokSO0aolEpl87yxdzSrpJ9V7vsp44gNOzUfGFeG4Hr3A68YKBHPmbNzlkeECEutCDOHUu3WmCgbgj6xPcMa9+jnBttf1LXQQ20vIgu4Dus0HL0GodnzehHQ+Dshz5dK/tchWda4ZarbnSJcrYlLdpaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728909954; c=relaxed/simple;
	bh=d4rpyDWgXbh+LNkgUuZk6ShAs8pK68Gh8mz7mJcDV30=;
	h=To:Subject:From:Message-Id:Date; b=j9P1MJvMFRq9oiwjISNkilYsIehsfUU4Ex+/wbFgQAIRNoEJxBVovo0BMQS/H1WnggsZw/3wHDsIAjfrpkq1WquzBjQV7S61bsKAY8drsAVegAMIwwZCbVQaEIfdVDChxexRTtFKmLAlv2GXsQAASrUOValPjo/ad+UcwHiSMGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DUh7VeK4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DUh7VeK4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0A1FC4CEC6
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728909953;
	bh=d4rpyDWgXbh+LNkgUuZk6ShAs8pK68Gh8mz7mJcDV30=;
	h=To:Subject:From:Date:From;
	b=DUh7VeK4LqTt5jns+tzMs5/PMw2cGj26wNl09bMe1LuxCw+0JmAbK1YDc6LMiku6I
	 mcWpOWNHX2Gl5kWOe1QzmkWU+AwQ6WYmLLOAcol/BkcopH98sQIcSPI/EYfDUEWIsS
	 iHbMwEJZlkOpc2Wr+pq7GoZNsV2+nTPYy2vrU0QRtnpvT4drL4n3e6H8o4iZmdYNb2
	 kUG7gjbySoXLF9266juZweBB9v51AJP/X4yFw9Me1oq3Pb2cmh5EftUGKOgXjLB4Df
	 8wt78jgZXU57RY7ripDIxHcryRObiiQVG3896irgwZEKCW29Mgh991T11NiPxTtuj1
	 EALLq45Wn+1bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CDABD1625C
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172890995363.25334.17289352559408599065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 897f136429152f129077989bb7e8530b13a2999dc44aa45f39b4ad9f9532921b
Date: Mon, 14 Oct 2024 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728909953
