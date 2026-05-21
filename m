Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 490E5361656
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 09:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779355234; cv=none; b=DPbM0NvQzqEkHVbonYEpc7uJ42vqAlU0yITcFZOQiqP9bhavZjiqdMozIa+NGR7IlQ7XWSzVsdkcOuGesiKyVTq9wkWZ06Auj8Qgn8Eu+JL7c3sefKfSv2FPHT1uES4JUGNoioCT+mob+2F6al1f5+gk0w/MaTm/KjeUMy1RB4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779355234; c=relaxed/simple;
	bh=u4xJsWD/79yh02RMvzntcalW3y+F4gTWxJ5c0fFZGOE=;
	h=To:Subject:From:Message-Id:Date; b=BPO5lDjgs0EgOOAZVCyH8oco49vXp8Q9qgwkq8gsi8JgZYltbdU/q6ijhY6D1Z/lpip5Q1q87B/wzwc25zpiCyRPBcGr8eYPDU12yBv8lMVYvq010wxmjZ3EOtfIzO6FhJBgG9yswxAl0j8+jWVgf7YliJcD+Wo+VW7Z0VgBd5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aNMBDqo2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aNMBDqo2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6FD5C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779355233;
	bh=u4xJsWD/79yh02RMvzntcalW3y+F4gTWxJ5c0fFZGOE=;
	h=To:Subject:From:Date:From;
	b=aNMBDqo2lU9vq4MDXfpmqvZ1B5hatpoXwL5KIU6dfeX3OKMVee+pf8DCaUaWjh6KV
	 RfD2iuTb5c5XHHK6kwPEAEJyeKqZmLb7ky9WURNKauHjr128YCrKMvw+chc0W9q41X
	 Y0uuVyinc4pdTq7IzYL4UqWPzKfTUSYZR7IXV5qF91qJGscptlKtVwvVSTi8b/sFG2
	 YiFKesajViaBnodhgjPNCKcHQ1sG+VzhpAuXK/yT3I+E0gRNpLPPq4aFZzabx/V3pw
	 AC/CN8sSa0FPllyktA95oJ1+btJAQUzny71n+IGvBtofiA6YvsYJprH+ze+XCbFfgq
	 ip9MzolQbHzug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC6B9CD5BA4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177935523369.1010.16534100182166853784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 608c8a64540d5f5f2e1c07355ac7077bf13c80745c2d793dae394c1cf155097a
Date: Thu, 21 May 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779355233
