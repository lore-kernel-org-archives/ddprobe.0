Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C0F212D755
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 12:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712667497; cv=none; b=k//keW1RglPcVjGnLGV8of+EMncJfC93M7M78WVSSdCj/Zg6C0V6HPiJTkHvFQvrNVsr5Pori0ERh/qKj0eaPYgPLr6yDIIyFiSnsXrkbHZ8USpSojz4GA0mAm2EqqkdjzbKy4cKfYlvEXXlYX7x4Rqo13SqOxynyD0cUJjb0TU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712667497; c=relaxed/simple;
	bh=d9ccH/pR8C2K/hMAX12MmjgH4+4fqWvMFPrcHkzv0Q8=;
	h=To:Subject:From:Message-Id:Date; b=KqEpemOJmi1rZLI+3rPvEdaRdSOOypY8GEUL70x7ewWn/8aRjwJ23YsBxcOM9ACKbmfwPgoX6bXamq+nZGWgGsaMAB4XTY5qZUvguFyZThdtDaNXOJvVMAzlDBHq1mtj02CNEBbdXx6608baivUCB4OYpGq1I10vdbuHhyFSTq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=joyqj0Bg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="joyqj0Bg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81CEAC43390
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 12:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712667496;
	bh=d9ccH/pR8C2K/hMAX12MmjgH4+4fqWvMFPrcHkzv0Q8=;
	h=To:Subject:From:Date:From;
	b=joyqj0BgUMNz7zzzL6wsbT4EvPTKkmCDvGmJWwIOpXXvs51lzyD7USRJvkKGcP155
	 sPochkwtpaJcXh/hBoCotSkyR42sxyp1X8xL9IvfkdvLVpjV+iafdJsOYlGUtdJwdP
	 9qo/86jqmMYvv/Fndy4oahmTXag3h15RP4ClcOJp+vU4oc2jX69TQLPnQ1yzEfYreK
	 SIICUodT/8HM76ydm0ZRkWot4I1QYbThcxRYAhjgL9fUk6MCDXRj66jlFJ/Sryqt7a
	 GU3T8gdFrZK6ArennBaTPrLlg7+V+hiNt/u3+yC3sLurIbyBT/rMdKWlXvLnk+eOhj
	 vQAD8NF7UkIDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64A60CD1296
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 12:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171266749640.3112.16653531939343584286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34399a8452ddc778dd01f8ac74d0fc58cb320f801f53ca6b2c65db04f44a62b4
Date: Tue, 09 Apr 2024 12:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712667496
