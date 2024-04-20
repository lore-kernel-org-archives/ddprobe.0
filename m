Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FB241CAA9
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 15:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713625823; cv=none; b=lv1kEsWkmg/gtyi4AtbWgw5fBqN6EkYtyPgYMDlngiYou2yQSKP6juO9YJdj2N9uFnTT1Vv+Jl3uIm83O97WnLTrfbLBHqhz0MXDJXV3TC0Uqq5zZ5hs6O+d1LYRv85WB8iZzJeYRn5+Fqn0m8sSNlKMCkckPjYpKdc5IPX+76o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713625823; c=relaxed/simple;
	bh=cvu6FuvnAEgZMm8JXvw46+EfsP0ut5SUDuvWgfxCsVg=;
	h=To:Subject:From:Message-Id:Date; b=bgQwpVfDW7DC9sgKJ8+5kP055nIETFI6QonblvGxUPcigUfdYdQdCHJSv0W03XQI+1hoB7JEJMsDfDE0Uiy8Ggi4euio7F8AIXtqUGze0m4wyfRHEdTSj/3kK2bhF6F0Mp3i70J0Lt+64/CJhFH+wU34JHy9TTEX9DOBjhUQJFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BW9gfLY9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BW9gfLY9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3ACEC072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 15:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713625822;
	bh=cvu6FuvnAEgZMm8JXvw46+EfsP0ut5SUDuvWgfxCsVg=;
	h=To:Subject:From:Date:From;
	b=BW9gfLY9iwyH+9u37n75J3jkTWoOnnnq5vreKES33+OJM3RxDdG1XJux6evMo6fwP
	 aw2H2/SC9ZPXsWE9t2Sp3LRMJ8g2ek9RHiLeS98zdGN+797/6tWsdZvpVn9GbDKn4d
	 wei34a4X5asCmQtRnx6AYCtlFSn8+4CumbZleaI703YiDiDsgCCZFLdGyBHXJFukgx
	 r373vdNgdG8VAW7toQSpVtF6/1lGH1wNMBjlv3B4N8A6R2/4GaXjmtCkDgSzBK1YRl
	 YfO5//8q6ylA1qC2WB/TgxLAVXqLZKMCevq8D5KtEC3wNnvkQymw2pUyD9T9gGz13e
	 OFnBsNNY0Scmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8E59C4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 15:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171362582279.1106.8926967602014901251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e56f8251bada85a995a8b5e8a9ba33cea4e78decb1e095b645c986662b2778fa
Date: Sat, 20 Apr 2024 15:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713625822
