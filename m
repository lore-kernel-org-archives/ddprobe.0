Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B71F18BC3B
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753196994; cv=none; b=LM3uRyg4BdISomm4tFlSwkwJTcJYB4pIeFA6fMG6lrQan+ARBqhKq4+qUx/yYgDHtK8WdPyKBJ5LRSQtummcY6ixf4DWRbzJ2Yi/To3YPdxjgKJ1dBnD0wOIXRsnGirA4OC3NBFUQDjuTXZ/2g2g4Wt+bbsHtSq0qR11qXrFO3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753196994; c=relaxed/simple;
	bh=fbXTWoXf2g4wZuATzgdzhDTG5oLz0BeGiNoRwEu14ow=;
	h=To:Subject:From:Message-Id:Date; b=TAmoAy1OeCPqCOdP42UaiIxCPrk33rnrut/BjaaRP0DCSeol0LLxGBW74K066VKQRDOhmpf9Fx8Yx65x1vPc1eOTp3y5edY+8C5ATOLDHM3S2PgVkicIEc4dib4rbD+vmP5Bu4Qi4E+9MHJm7nIsdTuZlLyPY0CjInTaERSptWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BXttbozp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BXttbozp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2449C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753196993;
	bh=fbXTWoXf2g4wZuATzgdzhDTG5oLz0BeGiNoRwEu14ow=;
	h=To:Subject:From:Date:From;
	b=BXttbozpZdx5P7+QbuOSOCZHFo2l1LMvHbTZj3zzx44aSvNtRQfoi43ZtLZrDcqtA
	 GqkHFgnnZHxrqZcQaVuzfJmDrWsr94JDFkvxyIS+jadm9LmnYmObX66Iz8ADyUFqVx
	 YFbuA2V+ZKhNIXz7npfMo9/Uj4RRYe+/meTQTwi+Fwo5Q/HXQTj+HlbxS9+KCT9ZQj
	 llInbliNsXgCUBJWhfNdK056F41wnCCbRlcCgKHkgg3dAKlN9LTAQZpFhhWs4lwshT
	 ZEs1IoHLzPyQ+5rt1eKwazUQfkQ4B6I9pZfhhXkefIjeQMfTNnUHWHCkWvcbIQuKpP
	 UracdT0gG98mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A380C83F27
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175319699359.21315.7374031897640527024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f978cea7c7dbccf483535aad4de7ca0d606208335ecedbd041c76464c7ce106
Date: Tue, 22 Jul 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753196993
