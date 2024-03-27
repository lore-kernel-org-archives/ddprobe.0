Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E00F71F959
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 02:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711505897; cv=none; b=sJdU9fyAB91qIUxcYd01K31/xoTh3SohiISkUGMvOWHt/ih0DlM/NAzTFtw9VVHff20idka+2GQJXxxRtj9jXBi+zVIZPAz+MQmm2N1iZKx7bQiIr6SrUftH6h1s6QHP9Vxj7h5txM9qlIV7J0HOVIZY3EObQHnc/BHW2RxhUuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711505897; c=relaxed/simple;
	bh=I0J63E+J4pCn+YypXcupNFT2kgofbUzcnKTwWnAEM3k=;
	h=To:Subject:From:Message-Id:Date; b=lpIwMcz3xtxDmnhEWaWZki9/LLBX9/dlV9aRvwGIubmwQLdTOSl4AZoHc5CzzLy+mkhwN635j0DJIl+JzykLrvx+rvWN64FAJensuBtd5hbypkxhBRdZhmn+oVAmspPEKjRWwEaljP07b9/e1vmhnYR0grdAm+zJ2T+eKXJKMNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pVOA+sSL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pVOA+sSL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76BE3C433F1
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 02:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711505896;
	bh=I0J63E+J4pCn+YypXcupNFT2kgofbUzcnKTwWnAEM3k=;
	h=To:Subject:From:Date:From;
	b=pVOA+sSLgb1sBrGKuFzx1ueRtX60ZCOW7GCz6aIeSE+sM3T7qtO5L3y8377Eb2UjG
	 woww+z+6Zr/Uix0R9jtxvI9m2caxxcSAWARoudcLMVFa+RP/A5iDcbgKT5J44grZd3
	 4G/jVG78NxihHglfs1zPBxNczpMLpYev+frrdccAfH/x9HPd+hcMkn6sjURpQFwKzP
	 2ECcGQETUc1wrfqjf0DH4mThJ6U0S9b0JJFyrzQgV9lpY2vCVW3dtt3q+LK1Lu6/SC
	 W1WDDIeVJ0VezC7wPQi7Omh6fS6vB01DLNufcWYET0gRN2n/iLzU6qvQEsoewEHMBa
	 cdH8D1WRr+qVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63B04CD11DD
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 02:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171150589638.19215.9983075111063058912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a77ac439a2740aac29a35aac5605750ef6d19405bd0ef553ec9419fd226e3868
Date: Wed, 27 Mar 2024 02:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711505896
