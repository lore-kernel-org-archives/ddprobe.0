Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33E2C17E0
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752710994; cv=none; b=uNdJ4EBEUYj1P7WvA2QzsMVJDibeFeaof99nCAcDsdgv0ESeujR09vcjIZSTSciZbBmmXIKD1/8EelJTgmWw2bmMFOw5jRTqWdIPA8xzaHst1L79lKfV3m1aKduguAw0UOcYPkzQn+KCen8vOdbk0wEaIh2mllvDcBb2WlOxUZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752710994; c=relaxed/simple;
	bh=ygfMn6pmWfTcyQtlRLKuezd50HuRpvB4vgTdDwA0gbA=;
	h=To:Subject:From:Message-Id:Date; b=RU6Ob2OASjUf5sokzsEVUNfmko8M+7AV/k3F9RLN5D2NoGxnb8L7SFCPLBeuIPKUeS9eYdziy/O46csmPToV/KsteY8xhQRMdA6ycf1Q2gD+FpeDzYVNIU5oE6dik6bWtZb1moC5wMlGkr+KZEvalz/gPv1GOPvuzFU9jHCnUyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YajWTySR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YajWTySR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A79B5C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752710993;
	bh=ygfMn6pmWfTcyQtlRLKuezd50HuRpvB4vgTdDwA0gbA=;
	h=To:Subject:From:Date:From;
	b=YajWTySRm/qgpjBXV7Bv3LF261b/GTrp1OVsMhxAVG/Cd0fSiHHoj38DumWkQWxmx
	 ksx+VWNY4H+zNWPLMz+4Tsx7w4ZLVQTaoElGNd0cLbuQd9x5E2vUQ2q2S+8erSORlO
	 jWqYjsn8YlP0UavDKvXstP0CK0qvs9hEAH8v8XxSysGzOmDM4xkzMu5c4tF8zq42rr
	 NUsISypmJp1E9M18a2gVrHwFPJWMbzrJrQVT7rOlOO4gjDG5z+GpdsNccWdHzTiOpv
	 QH1IUgdUBYAO9nCMMu8kW8Nds7kMolRE+RhihTKME0Zf3MUrnXWq2NkG68Hj5jCXCg
	 SUxPVj26Bd00w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92520C83F1B
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175271099357.2131.8118229475601206918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70c7676f97597f7954e5f3ee3019f6b5a49e03c6595c38f82bf03ac528304de6
Date: Thu, 17 Jul 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752710993
