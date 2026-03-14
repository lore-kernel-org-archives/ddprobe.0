Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12B9D2ED15D
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 21:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773524694; cv=none; b=MOWYPgha2MmOsUMvkYhT7zcd3YdUp7QV9ei4+YPWhnsoWtiHvFTxgosl2RcSE4UQ3h7VzReXjDmWcBsmF9TSRlYWDz2d/zeO07b6yZahed76Li5YPPdadc4RgHZTKvI13MMFldM+Ll38XdBLS0Cx/VfC27r/HnahBN785tASbHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773524694; c=relaxed/simple;
	bh=bdl+DBpBvM/LZPWCQbsKBKp4u+ChXUpsHg6PrGsfYtc=;
	h=To:Subject:From:Message-Id:Date; b=PLPH7/OBWbxYeVtJHrnVs2wnzN7NoH3T/1HaJ5t16ArbNFAc2e1yS1moCk7Mu8gEGd2EE/g7gP3IHuFIdyuUKOSU0Tz6fO8/N9cENoVtO2pFSKPFl6DtuY+0XpwC/l+g6gcVoqWBBlthHwH03YkHmVZk15pI78hb4oJiKZSmIlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ct6iIg91; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ct6iIg91"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9194C19425
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 21:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773524693;
	bh=bdl+DBpBvM/LZPWCQbsKBKp4u+ChXUpsHg6PrGsfYtc=;
	h=To:Subject:From:Date:From;
	b=ct6iIg91/aGt5QljwYCmzuIJ8rJbgIVaPofynAwA+0a0mxUydogpJ02HNHooFwce2
	 e0MvA4S6pSLBPH8KANb/sAjY/DMQZe7SG9Hk2A7H9IofVk18L5as1YDPwwdtI0yrzn
	 c6k6WbVZoRAJTR+4BJjIptzEn1UFdylnGYJdiPCARg2khMOQ09jYJH5GXUhzNWwy9L
	 IS0lONP86Py1fhnlqgroIaC7UwXOfEnDiusyUvD0EfP7v7alJaRMaxI8wBhfwSkQTP
	 5GBCz/3JM76nUbpxskY/lSC0KgZZSFOT7Fjx7UWrPJ/RqGG63C/3VTylIoqNsAAc8q
	 3OvTs0N+jQDrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9629B10854B2
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 21:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177352469358.23951.14092096404504033552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c503314d803cb4a931e6f441030ecb35988110eae8c21de84db8cb64ce25b87f
Date: Sat, 14 Mar 2026 21:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773524693
