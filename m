Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 193A12135C5
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 06:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775630734; cv=none; b=iOaqTklUsll6AbQ/1clw20zoYA4R6gfcbGnBrWjXz/sl9Q2hvzugk/qzdHfu2N+Ji3XSCsTb1z91cEhXkPfKRZ/0iym3tKRz3BIJIT2vglXbcXV9x6Tvlip7JDnSV+csLQEwX93OXlU+BXcjITtLjLqa2dLpkVYBwgnurUechX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775630734; c=relaxed/simple;
	bh=zRfNxnZTaXz5nrUJtX6ZnMmVPEib+hgZnOgzVb/khsY=;
	h=To:Subject:From:Message-Id:Date; b=nek8rCxRztc2mK5cipNnlnFMYOGJ7OZBcpAXYswcvgxvbWUfoomW3jYn9H5icaJaIOAUHu0IfqdDimPzj3SxXcO9j5ChfueU9T5Z1NDAjG/yL2kwBmVtA8CqzMo7Pwui2NmMHf6ruHRsoF68BRP64ZIES/2aMKuMJmINY1h5G4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AdsX11hl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AdsX11hl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C37C2C19425
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 06:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775630733;
	bh=zRfNxnZTaXz5nrUJtX6ZnMmVPEib+hgZnOgzVb/khsY=;
	h=To:Subject:From:Date:From;
	b=AdsX11hlDOwglhb/lHYk86XO66fEXjF88qjPQH7a9nV+aLrXai1ieTiCGDgoep0l/
	 Eb96XuJbYH+eIUrJr587RszBWwzc/RxWf38wrjAUaKS7f56hmD/nTiOARnHGwquMe1
	 h9PkHAThO518p7k5eKLkddsEqUI2XGgZoj1wpCYkjdHy3YMyPYkzf4yoNJstwjcghV
	 L3P5J+V/Zhv43gI4IrL79jJg5t+QUMys5nGj0gCU7RjonCR52SK2kiky3TVsUojxvq
	 Ub4ElIdm/zKLlAR7g/FNAx8dL4C/+l/NzTi4fNTuDPoZlZuNhuPWn9xDlRMIbulhKY
	 K4u44fMyCT+fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4D88FD5F61
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 06:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177563073369.7056.1980419477514036501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4a254bae76980e30cd9570750816e0194fd21d83b9ec0224bb0d037a8ac0733
Date: Wed, 08 Apr 2026 06:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775630733
