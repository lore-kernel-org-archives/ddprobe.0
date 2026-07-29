Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51BFD2E6116
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 10:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785321034; cv=none; b=qNMmLP2K6oRO+IgqgmUAIIcjTHvGoH3IUeILP4ZEbnK5yoG4xGAE1p7/zNuPxWTcF7W9Q7/LS1R1hXLIqz5Q9lOpM0yCOcQSwa3/esZmqyRlWY+cYi2rptGbzxr5n15+7IUPJ44HxOOgMFe8o6UxeefPVF/1YAW905SEDZSJcCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785321034; c=relaxed/simple;
	bh=ErN0TVRAFVU5J1/Pk5jEu1LaxBuoK38CMQg6eWHMtZc=;
	h=To:Subject:From:Message-Id:Date; b=paQrjx/RJ6HVIecjU8M1alrGXDhrtLLn9awb6Zi71OoBxf/HdIHANbkG5UlshEvmIcd9tbMv9InbtWHiNy3amYpihHEdzhC52zByWBdJfvXl1+RP6STpc8xw2t5A+T6GmxsQ54UDmBhrQlOQJCxST1DPeIS1xi1a8Sdmh1ZIXdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kiVE414V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kiVE414V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB8F3C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785321033;
	bh=ErN0TVRAFVU5J1/Pk5jEu1LaxBuoK38CMQg6eWHMtZc=;
	h=To:Subject:From:Date:From;
	b=kiVE414V5PA0deSSAvziUehH65Onr75je7AaDIsCtfANIJRS4C0E9jZBQCRNy1Atc
	 TNXsebNdn5IOzvnlfGEdA8OmabBNKk2J5Rh8ZkUrIE0xPF/M6uyBlnQLjSRP+yvTFL
	 FD+qNkXObJia9bynqbHRi/2CkQ+Xsko1CXQGuiUgYVc81tzgfIlsWE99wu7OFybu7Y
	 NTjUk14EKEIGhQvD8eSXVCHW86+ZUPiimk+z0roDvzgsdG1ZQCou8ukZAESv9Q2Dpd
	 eGhIWBZfj7VsnNBOtyFiFyWe//pqKiKUCmBZFv6fplEzAXF0LSH0l+U6jfjNbQFUKO
	 IIH5ef8YfO2Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B671CC53200
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178532103370.26377.5268657913218208872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 016318dea2fb29bd2a1f659c951a0d7c5a1404bd174ac84ddfc7ee793baa801f
Date: Wed, 29 Jul 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785321033
