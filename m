Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E72719E97B
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 01:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771981494; cv=none; b=mW1gZf88iy1bhRvbft27ndglW4By4ql/XRhz5M5hL0VYGeNl1DsiUK47rQt/PlO0vOflCHdYZk+83sJSEo7zsB2i3fPrjFcf53JR64YtH47RFnQc2z6oF/OfJIRL+6KCHI6AaVjbxuyeMvroMUVEMxhGEco0MLI5lbNhGb3eXwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771981494; c=relaxed/simple;
	bh=6GwJHK0rqKRF9cuopGfYD6BJf6RrF3Iz0bKigDfJJOA=;
	h=To:Subject:From:Message-Id:Date; b=EmclaEi06BDTiTQLgClqFkewMkKcaehDgHGZWfB7dIuq9iUbQekLloEc7UzvjBhSQpLcPRYTblvHshAcP6Hlhq6cuQm9nwX+8prmF17teIkMVPmXsdnFS4ENbfecJyKYZshUt8fxRPY2nRdGn4HKNrXO7duRA6/2I1F0Oro3LBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VSXgKvcl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VSXgKvcl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE74CC116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 01:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771981493;
	bh=6GwJHK0rqKRF9cuopGfYD6BJf6RrF3Iz0bKigDfJJOA=;
	h=To:Subject:From:Date:From;
	b=VSXgKvclmThlroEXTY+ZPuqWfmk4bouYE8sd2dK1wNmrXr1GvWR8RC7lJLOOJtLVx
	 +NPKq/WZ78KPWN27vNSLtLrLpxliDKsHEHMpfPe9hms1KPx4P9RDUX22hq44eodaQg
	 Ele0X4mW1AldnztjpwF1eQgRH7s6hCjuMmkSYxta22fW7QtSY5Z9wwPNSYzGG0SiA1
	 t5aL/xYtwhUolitZXt5Q5yLlyUdMoVI6EsnGPEAKtk8CkeBj1n6THEWSGRyVYLYxQx
	 MiJHtrqQjCg6Bko9fkjWbKlbut1xiqzYDaJ3AmF6ZJC/Rbfy2d602xy6c75OaCWMTL
	 VrW1djYKBkPEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CFE5F55425
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 01:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177198149363.19477.11326226168633667665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ff009c493073f7b58ea222d103949e9d09d3473345be648fdb9e214e63c677d
Date: Wed, 25 Feb 2026 01:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771981493
