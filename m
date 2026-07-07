Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DD053806DD
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 03:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783393714; cv=none; b=Y+l2s5baN9ZBFy6dv929/hHb2YkQKbgMXTayTdjCfftnYCGb0xtZkYH2HcBK+Cuni8caSym0SBFunID3XTBfO1jd+R+4alzBf8QcoJG/3nmoXF3wkFa55IwXHzEHXXCpWSaBQ8OyLeSByViNWsFJzZh10G+3I7t6IJf9Y8bTvy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783393714; c=relaxed/simple;
	bh=HTYKJABF2SVze8mww7qjZPbhM126QEipKK+RxX/ksmg=;
	h=To:Subject:From:Message-Id:Date; b=s/uLag6k9cY05xpqYECzftiKVgDh13rW7D0ZnZVJZRWoMduYy/XKFDn5Db+MfgtuqvA7o13psLbFc7KCApuIqUREmZHxDc+KGJlJOZdAEhTfIRpCw/592tztGcwhbCJfnmKvBHj2XzMPwSx8ZaDCBeRbuztVxKuMV8iUYFvClZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QdLZDL/O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QdLZDL/O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E325CC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 03:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783393713;
	bh=HTYKJABF2SVze8mww7qjZPbhM126QEipKK+RxX/ksmg=;
	h=To:Subject:From:Date:From;
	b=QdLZDL/OJ6mHBbqwjsUGHXMTsWVXYXj0FSeNVh6++qUXCWNKTlXdF4aNUfPWlKRTe
	 zqDxU/CxRPLSBMHuJWMvkn/umthjzj6h0WRNxZ/EGVnvJV3wrnrbTLubyl/STqKZ86
	 y5R4uc4b4icyp6NOzj9jRRtwqNcil+gAP0TdlZXYhi9c6abFzCV76ehTJ7/grA9WLQ
	 uPDTf8TGwsde389rZ7KmoNvCLLQSjZKMGasnbZvV7zEupk+cFrXfXTs8FJGI0GgbH4
	 ci4Nh+sGaUC1vMAwIY5818u7ppp4kABJtuS7UisA1RoA42Ta5zv12zG7/aVAq+tcfA
	 dqcqRJLeDrz6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDC1CC43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 03:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178339371373.7372.2991755032207422127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3108fddfdca004131e7a3a20022744fcdf8a0b967a538828cfd21343662caff
Date: Tue, 07 Jul 2026 03:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783393713
