Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 177971427A
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 08:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707035897; cv=none; b=sv7+nzss5iFRMqAQ1/g+xWiAH1H7IQhoniQ7f/XNCPo01MkPHdmLYCQzJVdnF4ShBO2p1ubFhJpVe1DU+tN1YPtL64dbh16ClqJg58aqjxauIfgYV2tLVswRaLfIhNux1BXUzPp5oMRhF7MaFxDGIkdlOO7rybc0Uo9ntVkWJh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707035897; c=relaxed/simple;
	bh=R2HLQv5TnfT2bWVa7OCoJn6lDlis1Fcf6UsSes+1IOE=;
	h=To:Subject:From:Message-Id:Date; b=cWeBI6UO6GFL7AbwXn2iRxhpAvV0KzMZCO1uzcotBBWyZzxkWzyXjD6hvO28DaPsWMowXadAtbizJOQioYGp9feNvppjVgB+YGfEwHRm2TkOEah+33ITD1ApkITlZioTGVoC+43eEzO1oFU5E/eiiisRlJihtYHyDb7b3Pso9ZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lbh/0IFw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lbh/0IFw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88D93C433C7
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 08:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707035896;
	bh=R2HLQv5TnfT2bWVa7OCoJn6lDlis1Fcf6UsSes+1IOE=;
	h=To:Subject:From:Date:From;
	b=Lbh/0IFwzYH0vO0jhn5Qr1Fc4Q8+qm7I+MXLwidU/1E1Na7VlhK/OT1s7CJo+ZnTw
	 O9T9LMpa781v0FxnflRCOdYUgXQKzgFo52YsXZxHZE3UISWBB2vn0l+t3I0EWvrGFp
	 hPZbAMZNosOQgyZpedeXYsfzFsPdtZ9x/+Qr7f6Go72N4aSpN4jrJFqt+7ge6wNo12
	 CgS8RMelI4l7yoamvmKuT2FYPm+2TPP7xZ3uI2D8qyAPuuraQB3UjvrE/9X0SnP3rw
	 ypZaBvOpwz/KWfKZaKzkvAlmzjsF6jtCHabpVCCMjKQQBzvbiApcxoTt6NAaEmrP+e
	 6Ph/BEmnhDwKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E3A7C4828F
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 08:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170703589641.26828.9152299817636142581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36583a683c8dae9e04f2fe05a5c54fd01ea5c309ca1868671231d689d3bba101
Date: Sun, 04 Feb 2024 08:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707035896
