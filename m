Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7576245A2A4
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 10:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785838234; cv=none; b=TsyjRTOGT7xCZwno75GTdrItywHM961R7tpPhqoxZOw/Pvpt9YexLd58f4H1HwqbWZL5WrTQY16Z0DxnZJLteWNLmINvStRW0M23n1FoTKY3q5K9TBle2+uGMg3LLgqB+ywFbpQqu1NAn0r03cYhFyPf3ICWov+vn/JQ2STwy7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785838234; c=relaxed/simple;
	bh=v+0Bacig10HIqZcEmOQaCgbcdOSd4u+chlZ/xjsXgFE=;
	h=To:Subject:From:Message-Id:Date; b=UkxX0L72l4LE8GgksrKkP6FNUZ9rkW0kgR1XsLmWv4oRaHyWZ7DbuJTk/YHchWMkwFG4rPiaHHkPJ4+5IpTSTcYgPaTZCESinmJ6jEcxXfUHEDwl25/WjaNApytqwP049t9DqCu7ZUC6Eg7+ASmTm40hNgXaS1ViJNJ8y+75Kfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=slj8HnCD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="slj8HnCD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 05F7CC2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 10:10:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785838234;
	bh=v+0Bacig10HIqZcEmOQaCgbcdOSd4u+chlZ/xjsXgFE=;
	h=To:Subject:From:Date:From;
	b=slj8HnCDwWMUduTcmsijnoObTl9+GI4MS/GwZHeqYEcAGE8B4NMxzknXuHuNetgqE
	 Jr9zYIoAzMB222UTwt1dROBjMXayOy7QZlLTSagLGGl++vIxz4FilxjCTt3I/nDSmu
	 21ziCkUw7VE3E8C78v29vMJWEMUTtDBy1TYXbt+BOkU3wn+c6S1jVp4gQKyQHUiHG+
	 prDBk1U4tfJkAw+Qgg7q+QTWOEvTafVY5Y/6XiT6K5ORYb670Qerc7ltCMMxjKyhcX
	 Oj2HDrNVKhSjDNbSHvq4y7vwUNbTcJBDHY3HAGLlfwi+60JvHt2xzSKtXqgFgdcpTq
	 gMHyL5X3FzvbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC4B4C55172
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178583823381.24549.1048406655461029678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 048fca770f8227240f8fb774f25128f3272f76f2278e3729ddb09fae85e64762
Date: Tue, 04 Aug 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785838233
