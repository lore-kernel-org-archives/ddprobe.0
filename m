Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 454DE37F729
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 08:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788250834; cv=none; b=stlhqgMJ8/owWhVk1meKtBUU/FEC3qYkoPHmEsCIIFoICwzhJ8KxVuSbZpoRo0z9gUBhdn2CiTGYBB4wsL45ZJNsP4aDUW8n7/T45fUBh3HWYKYcr7VyeTUQIChh9bT0ysZnVuBkh+PjbfXWibv4gImMgMVaXNlVkZcJntQ5rA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788250834; c=relaxed/simple;
	bh=3eC9GOm4LN6HPp5ZDtv/hszcrKvb4VPvRw7eobXRC2Q=;
	h=To:Subject:From:Message-Id:Date; b=UO7oBv9gJwFEAmpwLY2r+Zdt/LZItkdKU0F+vigN1faz/EkbOssS/mw1+WWI3YcHH9l/9Z8MjYfNAX/48zTrHryQ+4il3HqJiotGAwrvVwGo8P9C3wmW1x678CUme4sk1O6grlWBiwuZSzf9l/yvFZ+YDb2LNpeGv3Fm86w4Jqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yf8nKXLF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yf8nKXLF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE5ADC2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788250833;
	bh=3eC9GOm4LN6HPp5ZDtv/hszcrKvb4VPvRw7eobXRC2Q=;
	h=To:Subject:From:Date:From;
	b=Yf8nKXLFHRMZYoQB4sOOEIlGiJdgVGNdbtPa/xovKEcAE7AvaLDPxrZrhMW3d/+Ri
	 Qvo0GHyh3+FdGcqDi85ZHFqQnx+jhrQWf0uAqyK4mahgH6wuPOTJL8nTfcR669X3zr
	 ql3W942sO2UbxZlXLlk18tLoeu4vc40v/VcBp8fHJj08TY6F4DxUebdO6B27RLYlZ8
	 jTw8giCGAb7tBcTjPfPTMXhGiBi5B0P9qiVnjBnD0iFzl2B3Nw22b8ataYFjdnkU4V
	 dGjpCRhNSUkdTI//NtUelu1WS+SZq6CA9CwdeWQOyWrW+d1bbJxZCHpgnGG95Ffgy0
	 YGhGk09O9m8qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAECEC61DD3
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178825083369.24636.12331683675362238793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22447e24dbd8b879d34d76598d0f26b3ef77d40f7cd77aa69b0de4d0ada65079
Date: Tue, 01 Sep 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788250833
