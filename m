Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C1713DD51D
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 09:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783933714; cv=none; b=FZFL4c1gz6wOpOxM/wjLK9LJWLX79k6TOn6WLlvoc4x64nB3DBvpQzIJAvGP3RrpB/ZY4RZLWjVSvBOoHcUroWR7lYejxvMXcYzH1uDK0NEz3S5a4TgkrvrjU+edHoXdQBbCm1bwFdj9Nhk4lIFDFG29PSo2g/IdwlM0O9F1MqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783933714; c=relaxed/simple;
	bh=+ui13CZouINfaO/TwooZhwRp9tNgPFNhou1XWK+jo6Y=;
	h=To:Subject:From:Message-Id:Date; b=GTLYEe732u4Qrkw25Dtkgg9ljBwksS3BHl9IYQR7k1k3JbEFbMPAHlkxkeXVXkoUaIql62wn9hJtRSXf68MCSWDAmH2sPctmdQ0rLxk4y0sTD11n04kMiJoYE5dUW76b0SyF79fFAB6PZIbL94AbL+b5pP68ySQmBC5KNhixjWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eHqrpxTF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eHqrpxTF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9FE1C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 09:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783933713;
	bh=+ui13CZouINfaO/TwooZhwRp9tNgPFNhou1XWK+jo6Y=;
	h=To:Subject:From:Date:From;
	b=eHqrpxTFeLf2RW/uafp0rMobvwIFIirxKtZnc0ew07QfG8XDhVMC0TtO9750EcoWs
	 INt8nOqucOGFxSfvUxAYXKVUssWZvVQwF6bghaYI8fkTkrq88YExBUO+HMby9ku61t
	 LOk9ohThvQbfLjS7uhpHzW7k6ppvvAM0erqCosQR4LakA6XgETzCfhT/apvfoouqOP
	 PiHCLquzwTi0dPGtniwxf76/gxmBzt/oakheuEzNrY9hxQpcgc/uPbJFcdHC9+CS84
	 5vr12pdwXKUJGfFv/0OwDuDpN2DoIyipZUkARacVPyzXiNbGn1/x1Jn/bwkFrLzVBt
	 fJ5IPXh3OiUqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7FC6C43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 09:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178393371368.9077.3599000283216312229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8640327bc45f95af3a3202548a1a2a9b33f9ff0d4d3d4519f14d13c0160a0db
Date: Mon, 13 Jul 2026 09:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783933713
