Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E5644C8C
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728201954; cv=none; b=BQ1cBKijU6HPn7KD9QhZIogG21J1TBCd/UsMUbJY+GnwxxxVAorHS7UC1mBB/qAgVNZ4GTjDbVUq9skKr1z01r0wHGZucjfAHdgZi7anZp+q/wprZFoFRmmQLXJFsGibnduBJnBN2ctQ8D2atLuOcErK2DibLQ3YuyzNYnZRUgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728201954; c=relaxed/simple;
	bh=3BGUhb20SaiG0OWrYYl5e4jisKtDxI9cSKLbvbVC1YU=;
	h=To:Subject:From:Message-Id:Date; b=iEurEUXkJZlWLFtuKynYCM8fkFq9njsvz0chI8traiBSuWSV1I8S7DaQK1Geg2EWdehwT5BCUqmxZHOHtSiIXe5QmebzptxPWjtVwUQX9UCJMt4I9irOg7WMXt+VTfVEZaZLlRcMomA4dbqM/H35GUdxB2/zSD2sA2g/92392p0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MYVncaC/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MYVncaC/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE041C4CEC5
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728201953;
	bh=3BGUhb20SaiG0OWrYYl5e4jisKtDxI9cSKLbvbVC1YU=;
	h=To:Subject:From:Date:From;
	b=MYVncaC/0J4OYbEuqxSUxHu9tupol6ELTbjWEJbB+JGnK9XnyrT2xSL48el8K889J
	 MeDYqmSJXHQhk4YLpTG5+eAQI/vjWUXxkp689XwWQIVGqfdQgmorfZ7QA9f1qOzfP2
	 K/ZVWzylIAk9t/HH4DdZFtNGbwFvCUxis7g2lF96DO3KSv6aAMmJpwSl6zC8DFwGc1
	 fDkMkDmdSzGkK0lYqOO1JeXKqoUQlYEQoCtnpungkhSO1yAm6y4g6NBKvGaoejYgiW
	 GT4k5iI5rBhqfiPxLHxi4GvIL9F/LLIJ26sVO3TmznEb2duSI7qYuApVBw5Fxf0Dp7
	 edWOM6XVVswIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ADBBCFB424
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172820195360.13503.9074293401197929498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6133dddf90a5747796b3e4d460a24f0ff4819d177ade75ea38cd5fba0e274740
Date: Sun, 06 Oct 2024 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728201953
