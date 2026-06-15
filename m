Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 243713F39D4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 13:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781529394; cv=none; b=eHMyiWwAFnf63llKafXbDOSFaTumSe3uBtY4xV9eDTJI98gJu/0iS6fp5gIvdDgLUaf0KySBq5+sSggSXYn7jI59H/nbrjYLAwfA/3JARnpqKj4HNiOKftAQLW1ZzRIAX6/j+j7UbHP+fo/90BsHboW29lY/WX9hCKksuEez6UE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781529394; c=relaxed/simple;
	bh=0GqOREa9+3NPmgQJZ49oG/Nzw0n6WCIqoHhSh9hKR7k=;
	h=To:Subject:From:Message-Id:Date; b=H/PEHjB9bOQbbY6JNSE5z9IMcHU2iLu9RTRqMXU1/Yl740K8qWvyNoQ1+lNY+YKhsndp4+6NZUtuIve72l01Q4dvBBED8Y0d79jiXuxxNI3HrwLzYsLd+p1ibpyMY/ZUfppHNmNs+5jaqyT4/ZOPgi/rdMJvE6V03x1FsaMuIB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dJtNbiri; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dJtNbiri"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C958AC2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 13:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781529393;
	bh=0GqOREa9+3NPmgQJZ49oG/Nzw0n6WCIqoHhSh9hKR7k=;
	h=To:Subject:From:Date:From;
	b=dJtNbiri70HJyoKCdZWzMYyEJ/D0W3RdTxLmsA93tEk0pZJRxnIr2XsilSVmCoZo2
	 v2N8v6f916/wva3/zbpAK417GJqksSsjgk565XsitGMZ9E8cIFHI5qCsamRGoAbe/O
	 5grjfBRBLnGl3Qhpbto4igixC83KDtvdluRbJouP4UE+uDJa7Hde5kMKUfGCuWrkYv
	 4lAWWgVod281GKyHoq876NCYxnDwE2GhgY0DEm3JQV8xhQw4vTvzV7TFsJxPQk/YiK
	 gKOs289l9/v9CsyKXgCtXOMNaDN/yjhxxcs/siz5EOaYJLqgBWVKmeaJs1ZlaPl/Nh
	 lVl2wJS78TXAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC1DCD98C5
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 13:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178152939369.9493.5784663961203033952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1b2a1af542c5264b9432a6086d59c99f18df971086e524e8caf811c03d4b40c
Date: Mon, 15 Jun 2026 13:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781529393
