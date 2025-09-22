Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E08126D4F7
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758506396; cv=none; b=Sxi4hSkzVOhG8IExQx5k6DscxoQbnQuazzopMB7ncixL7XHRwSKTe9OjpJSiHFnX6O4wayzD+RAv2k9L4EInYI3+9iQTZqODXxfzZx4CaGAgAK+sOAIoe0rkirvaFjoGpfC8ervh4802j1vWbMtlcKM4BicICyOi6AwWSIyAD80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758506396; c=relaxed/simple;
	bh=NowE1hKvX0D349u8Tec2Vf74NxDbVAZVo+iw7Hzp3z0=;
	h=To:Subject:From:Message-Id:Date; b=a6ivLbrEJI64vwMV4kpY/VDL8WkWoWLYllq+eCPSnUoFnE3ghd9w4CnbQcdhws9vLYwrhUA3cBX3/v2KydZRZooy4zwvgW+z5G84yrrBzylwFCE26Ieyn0odh7VAdJ8BH2oVBKaHy8f/XIsLGPTsmLpup/CAsjedBaNFFOtpjFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tA3h58g5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tA3h58g5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D62C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758506393;
	bh=NowE1hKvX0D349u8Tec2Vf74NxDbVAZVo+iw7Hzp3z0=;
	h=To:Subject:From:Date:From;
	b=tA3h58g5cKHQzl7nq3w5KlbeRh4R6bTH9Z8/6SW6Q4lXWW2PLe8zCqV5NvKasg2qP
	 YHW2uKyrgfhWI62jWW/WeF1IQWcwLAQVjKFotwhLGo2x20bdv++gCpeZklfVXEdXuP
	 vj9ZskalSmbJ99fYHF7chCACwam/XQ8eXdVVztSP8BAb8pJDBs4N7kBbTrykt/dAXn
	 s/nX3Oe09d8OCJS3W9GJrxpC9Q81u7DyVWNtQjZGnBUVrWB3dysiM/zJyBXGksVH3G
	 EMPJEiRICwCXRLAyvIBc1J+eKjMu7mlVgb7mwd7FF2AZGtiDI7TnB9vCPyfPO1X25C
	 QIicw2VdNketQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DD5ECAC5A7
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175850639357.30456.5565286189656266720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f53378d630f73d3ede1606efafd428e43bb88dc0ff23f25668f8a3f46f8327a8
Date: Mon, 22 Sep 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758506393
