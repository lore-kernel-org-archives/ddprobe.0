Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3681E19006B
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747424994; cv=none; b=sCi1kqpzxVlEhGYnuPRRYAScHk7wbU961aECI0bJ7xIcM6j6Y/qD3iBkgJdqbgBF/5UXiafeVSSezQ3zm4vJuWjykmcKumvnBXQkgSh3SlL3nL1tbU5egH3p6lYxrKKPh7NAG2DhKCQnAVjcdHIIW374lTgqbu8RqmRER++JT1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747424994; c=relaxed/simple;
	bh=juSCzM+wDDLsDWfQNTnfh4JjYZtyTOnK84edgWBRlbY=;
	h=To:Subject:From:Message-Id:Date; b=cjfGCAf26l+iAT6GPaBcd2BdNB3ZlOd78OyP1FpSI+iTyVseFB2VWtUbYDC78qJNkSODMie973vD+m6yvSy2/S6pJ9I7Ya5nd1RelEC0iIxp2YW8N1xyj0nTVxygUnkhqu9BRnK+pOnZL5IYqsTSyCKokwncQhjakMiCBckVyLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WKDrKVkh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WKDrKVkh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B41C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747424993;
	bh=juSCzM+wDDLsDWfQNTnfh4JjYZtyTOnK84edgWBRlbY=;
	h=To:Subject:From:Date:From;
	b=WKDrKVkhQZRkIblB763VSwycxMLebj3pcw4mlKgtbBOhjmYUUlwGwHvauFPVA3TYL
	 +K0/vfK6c3q7gwKtf/rzBi9M6rTXa5WFROhQisRkGqJta+YwWp0A5bRfTkOR82zagI
	 sesUOAHnUAB+xGLEywYHgrGfGiDf1iMMyOGfdKPfXoAXEShT397vOHwjA6PXY6iD16
	 dIsenF9+m00Yc+XVb2FUnYvCHETx/4w0pKPTQ8K9ZsRqK6v4UUH+MQ8vklIN2XEgZJ
	 L2Zju0hDBrwPHmo7NhC+J0I2kloFYjUi29exSTrCLKGN0b/NwyKKVe+z17hfLSL49V
	 gjAhUcejc1iXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0E5C3ABD8
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174742499357.636.6864826765727670308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c16e04e90d7175dbabc49fb39a53fe654f7d6e63024d3961e27b3be06753a99c
Date: Fri, 16 May 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747424993
