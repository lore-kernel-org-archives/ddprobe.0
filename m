Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A1E23B295
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 22:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721081723; cv=none; b=mIBFnlT9iXadBqAi5+ffRreWcbz7KAvgD+TddvQyChDhpVWR3FSP1GA8Jo5tEHJ+M7OuN8e6eJ2UCURer+lA6gvJkZXf9RXCid9jK7ucBK1FD1C7KerZLKZ/gswWyjcVOLzmTMETra4jlT1c5MUDFfeehl4dRyKNvpgkx8oNcmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721081723; c=relaxed/simple;
	bh=PwH5G5VCj6prrtEamC6bIShQ7WOIkNr8Qqt8XH1HvMk=;
	h=To:Subject:From:Message-Id:Date; b=hynnqoPT84I9vOor7hQOs1eolizLuylfBxjyZtRx/+34ouz32AvxcRrJocU5n2ARFTKB/KNilWqPBmMUR0ESQnNlioMgrIR5NMRtEI5iv74NmJa7FeZeMpX7aRXesM3rPrEzMHe76RlIPNKsDrjrDgy15rpA0ALimMpIsi1WCVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PsLaQd+4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PsLaQd+4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE8A7C32782
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 22:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721081723;
	bh=PwH5G5VCj6prrtEamC6bIShQ7WOIkNr8Qqt8XH1HvMk=;
	h=To:Subject:From:Date:From;
	b=PsLaQd+403plza/wWgXUopl2i/3xte/jYvIYiNCiMcBF9Eu/gBq8FbidxGkNe1G8s
	 rru5ZPQ0mRg4gKGy3PnRt5PUAtmb0YWcqBByDSuXR2sSIAdnucaguj1QAxjyHNOWoj
	 GKmNSsi2CgLDaBh5A21IZ0dTpxwtXlFoT/EJMxz0d84wlCz3l5NpOs5CN69cI2ys39
	 AS/8A6sso8fFHN+GOBlnBoSRrxzrjqkariA9lp9cPwsMvSA8mZcbgVWBxdzPV2sgNK
	 w9sxgHZx3bKhmhFV42VNCV3Zlr3+ewoivsJXYJwLACUz7un5+3Sq+xpTzzkueLI+Zq
	 qgeCWMcaeZ4yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D98B7C3DA59
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 22:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172108172288.29861.2836554632719827262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f18a6720b671981fbc85081107dcb6e7613f3ff6edbf41b0ee1a75f41accb6c
Date: Mon, 15 Jul 2024 22:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721081722
