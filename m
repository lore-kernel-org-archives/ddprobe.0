Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 204F0219FC
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 06:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778048854; cv=none; b=bRBjxix9MWbsYcXtVZ6deXXoi7yRXOZ8eGXWCufLvVk7t7FGf1FArGO1BKPBLlAF5mv1vssSifcf42dB6ZC3rwzuyXUTabYHuKDlY/Dnk0ep8MnchihtHHLyrdJb8U2VTiMk43BWG9LWWfTwR3zOI6ZrXxm1uKgd5B1Z46BoqVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778048854; c=relaxed/simple;
	bh=Z5pG6jFqFrzeoLhIicpVY2B8vehYkb0yecFjFOsgXhQ=;
	h=To:Subject:From:Message-Id:Date; b=lED62yN1PU+suAhhcoiSsKY9KotviEimlSh8aQaC/wpRGPADSAcV+qJ8U2e84FiYZkFIxpX433PnM6f950P+6y8Jchx/nwkd8g+QpMjKLjSemCxX/R1fL/Jo9xklsBPGwMIibjkeL0uWxJXMdQ8PEtM25EQzvwFOkXj8E7Y8qA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aw7dwPop; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aw7dwPop"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C03C7C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 06:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778048853;
	bh=Z5pG6jFqFrzeoLhIicpVY2B8vehYkb0yecFjFOsgXhQ=;
	h=To:Subject:From:Date:From;
	b=aw7dwPopnIV3IO2063/4yFnff7bsfSbWDlYXShTOpE67sl/rDD/75niifTPilVbkF
	 Nr6TMCDGxzKrQZx2lrAaILFkvdmKa0kwWHW8jJz/IGdi+UXzxWglWOcAFzTQzAsSHu
	 Mqb+CbZflAC7VJYDNclLjjw1BLG49u4iX9WJs8hqZ8QryK7dQzI0brFV1P+M+Iv4iY
	 Obzs0Q/HgyGNrmXZj5rxXCibWzML1+CAlxYrBy8aU0evqQnFI4UgWv30KB/uNLsN/Y
	 1oan6Ow6T6ULfIpOlQgHUbtXjzztueV4WjXtX0a7hnVjTm6IuRmHawUEAzJdw4133e
	 qi65Im1WC2N0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC16ACD3424
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 06:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177804885369.17380.15189896768678283603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa94cab77a7c6ce4ea415511add1164cdcdb516045398b9407b4961637790499
Date: Wed, 06 May 2026 06:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778048853
