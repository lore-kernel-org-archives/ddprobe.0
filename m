Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 357783BBFA9
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 21:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780610074; cv=none; b=Del+1hOqXBq5o0CjC9/TnlRvreGZGsN+luHgimkqJwlKy4P9toC5zLM5jQCOwM6TTkYs24eZuoRK/3m0fXr41G/056GuVp1X5/HSl+lN/kAjVjuZjbM//WZ4YlVWXFMjKBbOpLJzkPrP14O3xH7LPLjTpp9vN0QQmO/pK3cvikU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780610074; c=relaxed/simple;
	bh=41kS2nUd1ijNFH9u9HOC6K9oo7iTWbza7YY+BJRQQl4=;
	h=To:Subject:From:Message-Id:Date; b=pengjG7fkjzN4J6qdXUW+ulC60BlgDEX+2QKsSA1yKBwWe4xaQl4AUViGJh20Ba92aeCCeHgCiB/W8XzKMEEZ6kZW3ZNQizYHoFV+xj1oFCm+74lCgImN9Rvb8NTss1ZmA8u/h7PnObUrg19lCNCZ4em/Rh7R35IpVkrJLsJTxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iuWWNx1P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iuWWNx1P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBE42C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 21:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780610073;
	bh=41kS2nUd1ijNFH9u9HOC6K9oo7iTWbza7YY+BJRQQl4=;
	h=To:Subject:From:Date:From;
	b=iuWWNx1Pa7kSy0/VPCyvtnYZxEjC+E+dXPHhgJTb9+xp3wPMOavvaolOdQ9f2quuU
	 27hAdzX3a08X65oAu6iEhIOrOvegZZSACsiK5gNf13Vur6zISlziQPb2pMHyVgxyad
	 dwDzpmNtrvGTNt71AOxOy2an4WijXuHO5PpYc5WG8XmtHtvQogm4CTqe3W36XFU7jN
	 eQ/op7uDIZmIgVWM9yL7+mfIVkgFAbis5ZTFzJDpuCJ2WJ4rbUsDUSy7fY/tsW+Xbo
	 18X3LHiYn7QxVuqPKjPzN0Na9EFag4RgZTH+AQqnB2gM/mCIRK9CG4dUvJ5LQzuwe2
	 I+RQC0nx+A6hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BABCD6E75
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 21:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178061007368.6581.14832005723509251868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43ac521a861789328a97cfd7c1a0de2ccc051ad75dc70eb52b56d8285e474226
Date: Thu, 04 Jun 2026 21:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780610073
