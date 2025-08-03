Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6E2A1F91D6
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754255993; cv=none; b=ohle6+K50I3Wrg7yAWAGFQ8maGlVcLBC55dz1AWKFKtr3cmuy0X/4/j+9wANTIFYj7W9txSKCH2pTfZZiGRff8CI1fpPFjRx2XjRDa19HDy99DVBS3DyJ9dlcUVz6geUwSOhvJVIj/8/EPrFH8jMxyRfDrqGVoYaNHceI+iGUfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754255993; c=relaxed/simple;
	bh=i5HaIRONq4QIs1Dx5xJxVbvlqXINLO/pPPwVcXGlPRQ=;
	h=To:Subject:From:Message-Id:Date; b=ei+1+7rV8kCoP04C/hWUvIQxQTHaSHdaTsxCp8wIkytzp7r8CaKUaKh4PS/jJwLQmF8+EK+mYDK0mkYUjz8mbNlkWx6R/V+4+AHRcioxR4LhmSbh2b0UC5gnxH1bIqkFuPidvYi4auYhJZiWkMhk+E73hCKM30NnN9dIlgrGitk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cM/0wUdE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cM/0wUdE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABB51C4CEF8
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754255993;
	bh=i5HaIRONq4QIs1Dx5xJxVbvlqXINLO/pPPwVcXGlPRQ=;
	h=To:Subject:From:Date:From;
	b=cM/0wUdEO8UPYcoIIxdMHYebEF+bkaGPNHaFt47bS9FwzCmidkF6vLZW0tHrS+v/e
	 3EJ96yiwIAT7ojZZeWyzvZsXB+DhRYItvOeQL2CC8v+gh9kJ3UJn54R+XwMwC+D02s
	 dVvKqtXGnLeGZXkBDmFSZjL5W2FveHXpGd823UbNT2GI02JEQXshexH0Bwb0YIrK8o
	 BtUU5qHOTDUN2qgrZeS4eF0zY2nofSm/TWWyOA2vyZO/ocxjR3BFaVsFEAr3TbFU30
	 GR6+J2tYCco+kw1XY+gjPKe0eYCLuLUT+C+jzbR1jwIuDPTsdB99Vg1AscmVW9I+yW
	 Mr/VDqt93XAfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99ADDC87FCA
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175425599357.4529.5481577259500463090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3c7b3105a8876966c52dabcc633be57b09ba54c01bee7966e02b40e6f7a0ed5
Date: Sun, 03 Aug 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754255993
