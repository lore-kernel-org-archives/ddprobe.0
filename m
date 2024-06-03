Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 746372E414
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 21:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717448723; cv=none; b=cc7RZjz5ac7Tmme50xm08Zn0gQvbFOa9DI+j2gE/z/yoaWAXJw2oCK8w1N1IP9KdV3wlIm5L7mfAX0c0p2vDtMDzoXxKZh+2X1nta7TNJtg9hzcPCrNrY3TwPO0K+b2SshWZUiRH6hGCTo2lDjz9Xf+SnBMV4yZTi5vGXt9DXcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717448723; c=relaxed/simple;
	bh=QHT29NRP8lP8+XwOtw5nAM9IPkkJTNA/8zj14isd+J0=;
	h=To:Subject:From:Message-Id:Date; b=GuATEd6dCrTXnCacr1HfJgHZ6TfQsN3vOa2/z10kp6PSgTbS+lL4FHvvQjOw7BiAqsUCOeUh7s8yEnPrxpdRHWsgT5DolM1QCV0wqt976JlVejyExDxGcRB99ktStR8PDRvhxS9TKPCFF7hox/3oeP9BViz8ocJCWNog6b7w5/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dDzSzOok; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dDzSzOok"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E436AC2BD10
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 21:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717448722;
	bh=QHT29NRP8lP8+XwOtw5nAM9IPkkJTNA/8zj14isd+J0=;
	h=To:Subject:From:Date:From;
	b=dDzSzOokwWUWlvbc4Qp1sv3cctCWj02A0t00aK+J+OBUE6U0CMugGTz1jQG3eC/zx
	 4JRYpHjCQ9+hReVF1RyAQtkEqaUFakhKRBFpf+qRx+eoY92JjQN5Cz5ixc0QWXU7EZ
	 F+QkoVkGE6XbSRMS/2w5ASzGRVkTV5sYJMJP1M7cwbBwDbiWRCooGDxQrrtH7Mzlh0
	 hU1v4StrI8kEtZU0znMjJtktyYLB3lnePRXisDEclahBWT4BaTbKye3vtdEY8XCgJG
	 8HyY7HgGSPXOu0cRoHsApbGhTb7p19rrf22Te7CmJQYVnm/zKGi9JXQCDswdjYxoQJ
	 8hjrXHwpI2fiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9DA3C25B78
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 21:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171744872281.10624.3653261870167868435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4965f8a3634721def274c165b38cf959ba7d2cfae77823f58a3a14aafe8b7f74
Date: Mon, 03 Jun 2024 21:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717448722
