Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D2F2125D6
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754617194; cv=none; b=AMjgCY+uAx5YqgnA8e/f2y03DBJuAMxIShFPKIChnjt7bSMDkt7m1gqTgFAkGZz6rUn+ahvKyrvKZkFv0tygdUNdOwTMPZs2VZ61X4t4qgjFdPqJjbmGeMOukigrujYwcsGl5KLTR7uxCjNx/OF3+4MZskS5cX2TiHB9GQRDtP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754617194; c=relaxed/simple;
	bh=NTJ+pADVfLrKrdtw2/dQTjRD/OrIdz96ijyxaybJfcc=;
	h=To:Subject:From:Message-Id:Date; b=pWH0qcRw/DB8Gt4aE1ZMxPGqsj9PDX2zUnn0SS57bc0VrH2V1R4UAwqRK4za2SS/QuFhX9Ap3pmkPscAQZXSPmXNZqBbNEaHO/n65BUUmX23m3nxOfd5yc3PandUWrVFqXMi1tej9rbOhSAFFriGud9x5tMA4gwfvxiJzUiKFUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O+xrCOy2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O+xrCOy2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A60CBC4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754617193;
	bh=NTJ+pADVfLrKrdtw2/dQTjRD/OrIdz96ijyxaybJfcc=;
	h=To:Subject:From:Date:From;
	b=O+xrCOy2S5rKcy7Kg5z1/FbrEevB6K703TODotrvcefpkFwM8mYtND3TOOMrcyPvn
	 nAEP9SgOWRjuNSFONuwBTBV29218lIwcWyUeTTj8RaOcbeVvZDMbxRqJTmZdHZKCaY
	 SRnWCz3VP/1oqpRNvH0xJnSLLiOvjwBkaam/e/B1S+SDYPF5BgLwukL/9O9RhoPbC2
	 nyEn1TzPMfbczT2tngWJqLL6ENrikv/FRCcug9NT7IApyqTroRHCuJKD7heMvy4vN1
	 57nEUTO/CCIMaBuoRQjUKLpTqkfeIRCrbuUIpa0Yoxjl3l8qTrSkt2OIcw+GOzno84
	 5SSSaXhGqzYeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9243BC87FCA
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175461719357.31537.5325099193169043785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe3ce40d03fafc80452df925e9be93497778c764610c2dcb530985a93fc57a8f
Date: Fri, 08 Aug 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754617193
