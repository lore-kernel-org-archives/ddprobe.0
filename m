Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1232286357
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733855154; cv=none; b=qUuxym9nshhXEKIqCMAM5RwBMF/6Z3xTBwNjocEe1viH1M82z3WT0v5X9VWn/irpi4wIKkN2SzA5JJnAON3gUToZUJYMLu2KP7L7NeLHtW3jj096rOTkJ2SdGJuQWADnwgC1W+ljhRZJxBaHHzdkvtDzZLXdaDNUuQiS+UuESiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733855154; c=relaxed/simple;
	bh=6gX1mbjKYjaJJVE84Ib6jDdPB9qUTnfpocMb0mRGbeg=;
	h=To:Subject:From:Message-Id:Date; b=NUWztuTOAlNAYwjoeIxT4aNsdbU6sZKbktt3ToGvkEfv5smUNr+S0a7AGkseD7c+P70k72bNApfqBfeoPKcQGwsuAZRKURVi8rMkGQejUgI0BM8wcrAQb7DLZdODqy+3Upo37o1W604d+lir6N7c1SPH/vxssrP3GyNHY75L3DQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mvd6PUzU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mvd6PUzU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD8C7C4CED6
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733855153;
	bh=6gX1mbjKYjaJJVE84Ib6jDdPB9qUTnfpocMb0mRGbeg=;
	h=To:Subject:From:Date:From;
	b=Mvd6PUzU8FR7SQTunBb9RbdKAtbSynAO7h3STZH07bfDgL1I2HguLCKwh01sGYAUI
	 EclPRi2N5WjzUorg5/vANU4ltAslDO02KMUCXT5Zu/0tIplXV/xAjHIOVVY+L9DHWH
	 xLR6sBws/XlBWX9KyP1DdWrqfTcs6hHMW5Y2vSIkXHEggEt4+fDIJqd+5XwiAlXuEh
	 zzU4zCO3wldKQNASd0b/Z8+tsnsDoqTWHqLrpeExXtE+ZdpbOABiSXAAtKHDC9cyoC
	 KI1Uoa7DFr1xPs1n0CiRtZeZ1WJFVyAHsfo3xuTvmJ6Pc1V6Wc65NvTzmeYqcz+N+w
	 dx4nFfj8KtCTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 993D4E7717F
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173385515361.24045.459754951263651272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6aa6b3c030571d1880a4ecbbb5be11abb1f0b7a3a472fba789ef71b1cd88cabb
Date: Tue, 10 Dec 2024 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733855153
