Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B18F189913
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738662354; cv=none; b=F7MK1KKxnPp2pU0X2g/S3tVkaqQGKChlCM+A7xWrlLp5N/begsPhNS4B7zjjmotZnb10WsvUJYwQKMUorNFRnGXGUr8F7CNGM+FWYiwOgBY/MPxE5iTe9LykOxDzfUDldcEjqDR0iCtaqDadLJVP0AXXKsn/6T6Bxp1BcO38eQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738662354; c=relaxed/simple;
	bh=q1AMXXkUx4CyNS17s5p5EC6nlFy9oDmuaSeu1Qg3Qhs=;
	h=To:Subject:From:Message-Id:Date; b=sN51FXFsbFbSM9ibke6riergg++Uh3crdEwjnYvS0qh3VSuiO3+UO0eKR5wi2hpz8NmxLvTEqRpE8wtH5hYv9aogwIv+KCIaKKYFeL0RzkuVC6RLDskBCWUPA4niDDIy+rsipt5MRDfxEIkJ8D61kmLr7ltMAAnFWOjlhtsBnEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mAfDThmF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mAfDThmF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4996C4CEDF
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738662353;
	bh=q1AMXXkUx4CyNS17s5p5EC6nlFy9oDmuaSeu1Qg3Qhs=;
	h=To:Subject:From:Date:From;
	b=mAfDThmFwC39VRIXg4GtNcLGcJp100QEnqsfYFs0FW7RIDJi/xthOgVEJMlp0ozeV
	 qGlSCGEee2oIhUmmLXjoTB2mwKc6qa1BcRILYw4UGxsv7xa6FyNOETauEORKViFDNq
	 ARJRoUzLbRdhZIhGddzBEYbZXctLEszi4zm6suqVgixKQlAJaI8YbfRHlhQfJ8/Unz
	 fo/U9zH5cb+thDDbhNw+8RBA/v+E95u5kiyLt36ah/mQx5gcPw21efiuiVkUb9CBHX
	 iVWJGH5tClQ/c0g7LrElmAGqTVcqrfWocaXsYU7njZd5KAFkJ131vrlAAHxOECJMje
	 H64OLsxEtDdWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D84EC02194
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173866235363.29102.2017967261950745760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a442c4f61ee705355648eb88775704f88cbfce6acf026093becd685a537d5382
Date: Tue, 04 Feb 2025 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738662353
