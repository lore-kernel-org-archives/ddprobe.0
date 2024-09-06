Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21738159598
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725660354; cv=none; b=r2w0BqSOtZa6MH78KnNfD9C4382QHPEBPr582Xm5iSAI/2IUE2twI5zea70+7AchazXh6CsULdMCynIlZpthFy0ERTkeYJipDGiK4+vDwD7HjhA1eH/JFf0XIAilVyrcN7iWFg+xih5iqnbcLpD33EPFIH4CIHL0Opook+P+Aq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725660354; c=relaxed/simple;
	bh=EnHGiAq6dvzvtjSRhXd+uK7Eo2zJ3zRcox49CTZzziM=;
	h=To:Subject:From:Message-Id:Date; b=cMetDbl+LBa71yxowGFrJQI07I0CLzcmO4mwXfTchvIZmdCQDuC/EEerQB0sOx7rzvidan8ch9sPBMRUOUw6OV40UzJr9rxO3jVWqoWCX4wKjxs7nfDSbXL+PYgc8tFv5N334/skPNMUj+LSqXhHX524OmsTH7gPWNDMfoIR624=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R9ZHPC4C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R9ZHPC4C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1C4EC4CEC4
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725660353;
	bh=EnHGiAq6dvzvtjSRhXd+uK7Eo2zJ3zRcox49CTZzziM=;
	h=To:Subject:From:Date:From;
	b=R9ZHPC4CsKNWC/nqjMP9lF5V9QpG5zZmxP91Ce/vX3MFXnb3rahaKscGOfRUdMRIQ
	 rRp30YZ+vT1c7iCqEHkSFpyYCPPI+ZGg24E+79WQ+KugYAIrYJohRSuZhxeZx4euTb
	 cNRrS58XzaSvciV18I27J95tnpYJg5pKwwFbO0vknY/KBRguYkTQ7m2dZTkW8eWWx7
	 sbyhR9mRkTvwAn3Et88m6CS5ofAALyqhRaXZZ5jVi5c7ot/dcrqw7z34gGj8YWTnzq
	 cKlhLJOcokdRMqCJ6ooYCJtM78ciDSs3/3SeqbhZlp7oISvkabN0BrIbyZGooD4vMH
	 v1+tQBxhjSNgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A141CE6FE49
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172566035365.22418.14787806725679677125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b23757158b2514b9c8e8476d25dd9722647d2d9612cbb842e2465ae8bbb39468
Date: Fri, 06 Sep 2024 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725660353
