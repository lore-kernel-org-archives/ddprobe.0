Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EB7F18E02
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 03:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713239363; cv=none; b=u/uZTp2u+x1XnG2qOICoay1ZsLGB6luZTyYzUoTQuanFAANF5fZxXQb1LzXkIgU7rFSnoIOswjyo8Hy2X8LIXf+kQ4lw/FmIkq91vfoohtftNarqmv2JTKgi7XNwErLwHE6aP6o13oE05EzmoOTVx+qmEGLnluqLlPXwMKOtExk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713239363; c=relaxed/simple;
	bh=bHtURznNkAMNg51AfSsZtQYzsJcsfW+f3P9BH5SO3uE=;
	h=To:Subject:From:Message-Id:Date; b=LY+Ufn3N4aOtllpzn++c6jEzoq9GdSDQqe0DeFUB8qyoGoVbY49Sv/rvl8iWI44qlpUivv+kopySLylHpKQSPBeKq0g2NsPVkaeYbnSLzN7V2PcFh0+0VLliYU6rOz57PPItz958ngbRelm0SVRuYNtnRXhnpIHjS/Ble52g1Go=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YKDk+V5c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YKDk+V5c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DABEFC113CE
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 03:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713239362;
	bh=bHtURznNkAMNg51AfSsZtQYzsJcsfW+f3P9BH5SO3uE=;
	h=To:Subject:From:Date:From;
	b=YKDk+V5c7FWMUyV1+1k9qN4K/2WAQuro9N+h4jCnC3CiaXF+WUhkszGidczxWZKY0
	 2XCU2p+hXX4tQzHkJf8yteazcY3dapRqLW6Ggtsq06ii1JCWtbacO0vJ85+XTii/eI
	 M1kLfW20Us8PHx2AX1TfMaCWPcpFmf2Je3JjUgYoyl18lelhq9DL40q7QErOZcmdCJ
	 xZVqZ+cFFt5cN/ij+fqcbhHAe3HE/uuQo6GZED4Z2saM7RWMnvB797K1XOc24zkGBs
	 iOTHNfHvwz89cseHIXCo0AwH4U245JAPoWaMuoyPsWjfURddnHak3nD4W+CgkzvzZ0
	 MbMk3bJvM3+nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C20BAC4345F
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 03:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171323936278.21552.18266502966757148660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dafbb5510ae5b06398c3b8490e287cfb673e050a0887bd30b3574cc823d38ccc
Date: Tue, 16 Apr 2024 03:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713239362
