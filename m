Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBA7F2D9ECB
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 15:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774279493; cv=none; b=dNNBwirqQLIe6TaFnZINnkV6qCF9dYWSn+mI0FA9Kp/qVxYDly/okeTDPUo8e+rFhgEFt2AsU2mYJ3HUZFESCEh4okVL+BuC3Ii+DBrco91tzqvsBr0XSn9xY4Ve3rsy3YR1efkmSqcRxoyHmkRzfFA7RnFGvJOLs4TD/YsPYQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774279493; c=relaxed/simple;
	bh=OJox31EMbpZArHhsLXzbC2mp02SuGvVggH5ztHbsl7s=;
	h=To:Subject:From:Message-Id:Date; b=YpZ4/vqgh1ZQkygUoMBWvn0kDZLm7UyeFPJggzSOCkNo20r073vX61Ih1nW2EIsR8SduuTMikX2WB0ESx5ERT7Nlqai5t76tFOZGwvAt7oPmJlqUhAE7zPAskyNAciDmQAb7Z4a804pULl3PHxiFvU/aTI1JnZdI2XwSqjWMBec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pjuzodOc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pjuzodOc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD5DCC2BC9E
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 15:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774279493;
	bh=OJox31EMbpZArHhsLXzbC2mp02SuGvVggH5ztHbsl7s=;
	h=To:Subject:From:Date:From;
	b=pjuzodOc+4NceXny3oxnFSSZC/4F9GJlnC9lUgyerCZfR+SNyBUzPIyOqsJmuXr80
	 knNmp16OFPDBA4eeeMN5j1LYtXAx6KDoK/dHH3PYzY+mf0vubcfKyXbFsWoY1qpdee
	 D8ULqvz0PezxTsjYmi+g9IoM6MxNzlymGTlxgxAW+6B2y7P3F9doWPkrQkJW22uAUf
	 O6XHXAdE5aOBvoyWkeJJGlyoDct4Rs0CG4RFi7UR7x/OBDssmK/tJA1EL7CHtTvF0C
	 Sm6rXChrptS2PqvvPZd5kceOb4NwzCloNnzS+xL9/vpHqaEtz4tCEHSHSTYwA1PRll
	 jVLUIYHBF/iAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CF67F4613C
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 15:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177427949360.15411.16332530780831702065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8f52c2ece00f4c2d54b746e50cfaf692cab3b6eb0c2040a96b6e6408f769e1e
Date: Mon, 23 Mar 2026 15:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774279493
