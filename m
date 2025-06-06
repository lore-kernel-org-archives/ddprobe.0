Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48E23265CC5
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749199794; cv=none; b=TentA/RPkX6Ib7j1QCCK6D2spB4dwcYdy/oenpWZO9FNy86jIy0XYq4S2B6lTOYgfQ0c5eQXMiu1Uv1norzaGagpmlg4MvIpVjxunSiHkr7xvQVN+pVtk52LDZMCKpdoZ2EaxcpieukNx0ulLXNwVbnfP3FBzqZSFA25SKnNip0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749199794; c=relaxed/simple;
	bh=B3HQ730HxKgx3Xs+hE8YgXSM9vp8XlqUA5Ri1J6rNic=;
	h=To:Subject:From:Message-Id:Date; b=gIk+zSCnwJFggOlcNVsw/47aEFOBm107uY5xSw1L7YTkvBPxyLNXp/+chCbR9zqf/Ci2KyDvHjWYP60EzO3DEHTBnx3g7PF6eidIgXl/gIlLtoXDEkU5CR9ISMiarKn5Efv/qSNrYuPoCl5Km3xEuiWi9s4oOsgcQ1YeoeJrSE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JLONKaXr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JLONKaXr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A424BC4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749199793;
	bh=B3HQ730HxKgx3Xs+hE8YgXSM9vp8XlqUA5Ri1J6rNic=;
	h=To:Subject:From:Date:From;
	b=JLONKaXrvu79LBpM4noCh+LuXwWIrB9qJIb6zCT/8VowsHnkeaWfUQ+Cyh2JZ1soh
	 AunG7OBafujsuEIKFOAHCRUsETQGZ4kd5N/WK1avy4eZ0Hel42n/zzncHHXWGCqqus
	 ij5+IV/X3unpTopVDq1dYbi1zVLIbBfaYyGQkkmiAIJuPFe9/+qY8Rr4rGRbsQunmD
	 achMV3SjlxswspGpEaAtPusowNWtGmPjio1D1OFuot0w6sVEUDA/YZrmAeFFnAjWiN
	 HKprczCLEQy/W05ZPre+DormUJtGpiQVKU8Q0iCCOn+2VsFxt67fqD62y6Cfs9RMa6
	 dJg7RIWtrYdpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F921C5B549
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174919979358.18956.3870598375357314287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9ead676d31ef9ab024829f5c3932090d2bc181f68f2856ac8c67ffa10858885
Date: Fri, 06 Jun 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749199793
