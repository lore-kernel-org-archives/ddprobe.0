Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40BDF15EFA4
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 15:14:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719501263; cv=none; b=nzz0PMxYb5Qe8c+LqiE6D01aOnlzqw0OT3g5zO7lPGhleY56QzPdt1NZEBJFQWUFdBmsGcOhITAtLrdIAna+wC3nhdaADc5vUID66C+Z2H0wg/9DbW7biEYLZqTLYc4tRWxTQtxzSMUUMEzLyfyMQHED83vkkc+iIFA7HPo9I2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719501263; c=relaxed/simple;
	bh=l4hhVMUhgtDf69I+BOtiWRdDMo8auBZIFyRxUZKuTd8=;
	h=To:Subject:From:Message-Id:Date; b=JioS+5MdV6M7Isrm34X3ttDNYw7HgOmfWhhucLs7o63RphTHARSvfe+3VG9EUjQk98+CkDZEi+shrT5KCqhPJhAgnBURPXic2mKgtCti/xeQogQWdRSgVsOj6mQsujsHd6leIQgKecA891VrR9sq0eO0uoIO8uxm66snBEwSUA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QaAN0jc/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QaAN0jc/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFE18C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 15:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719501262;
	bh=l4hhVMUhgtDf69I+BOtiWRdDMo8auBZIFyRxUZKuTd8=;
	h=To:Subject:From:Date:From;
	b=QaAN0jc/so3PsKltKlCWPdiWjQ42LNPnCFqsWLDBqu5cJXgcUa9/OUCEN4yi3aBXJ
	 CpKMD6aqeSmieZ78EArQAFGXaMv/YEL341jmbzrlf8jcDcJcL0DnUPV/kzet83p1Rh
	 y8eljwN2Of0w6iJ0+8S17PbPHzG23ttzeDjz9G+iPk7DOQ4aZLKv01WmhlByPQMVyV
	 KtLrEqVGsyBavFGU8mIFeZYhtHItztMbP3I2GfG0lOOkhkphOl3jnTruk4FhqjJfrp
	 aam0ewcqmnTVMXQnL2reQCKGyvaqwCrr+lJuA+kPN0JxKS4f1qV3DMVncyZr4gBQxX
	 zjDZh7cPIjCvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C02B2C3064D
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 15:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171950126277.13992.220872366734491952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9aa4d270eec8911112a7a5176f1c798c4db3c41b547b378cf758e104ac315189
Date: Thu, 27 Jun 2024 15:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719501262
