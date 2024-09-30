Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46C3B2F29
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 04:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727670954; cv=none; b=IyfAU0EUzYWicWoujgPt9LYNmSisAH4imp10RsDSttjblu1EI2bxqrdUwAbqOzZSGaATo/2vkAXRDofMXG+cOCbf4we4u0h8usxmlR+lgbalZ2epzhj5SGBNSC17Bn6bd28Q1t79Df7Q9oZR0j6cobmB1vR7WhAyIxfHPb3RlDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727670954; c=relaxed/simple;
	bh=ZXYgnaEhlgaaJ0YsTyvAtOLdW5CB46D/a/CEZ6r7Kfc=;
	h=To:Subject:From:Message-Id:Date; b=cKs5erUlM+6k1E97unp2ttiQd6r6W/kKZKSogP7AsM0uR49Gtik2WSo35OvJiaoUXaa6ugV+FEEni4W8m0S6+ULPJ8d7larleNfY5A9NnydkAt70pwV0SIfkbU0Je33GS6b2DsjrsQ2n7bKoeVS6zLjO3vuUQprNcTcl/Ja9SwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QEIerOYo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QEIerOYo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA7D8C4CECE
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727670953;
	bh=ZXYgnaEhlgaaJ0YsTyvAtOLdW5CB46D/a/CEZ6r7Kfc=;
	h=To:Subject:From:Date:From;
	b=QEIerOYoW2YJ/OwSeN0vUX27O6MgfXQkj1uYMPnECWG0wU5lq/v5h6wUKdxj2sUFw
	 d8z3wxVi3DE+YY/df3Nl9LWaCW9d1xWJwj/81DGottmKbTjl6YIdyEeqtRXA26s6KA
	 ZHP9I+TpwFmgbNtPlPuv/EnUxhJmylz0diUadIYflEv9Xn0P9zmcZfX2Zu8XYE/L2X
	 fL9cC8qTrY0l2SkDX9cj4zthkZSJOs1sQI2O2Jyi4leDTPU0X8ZrCMbVL8rA5+qpV7
	 uGKZmqDsIlLmJl8K0HuGv61tfuESDZJp/BGMtPxkayHmWbw7SHAb6LmqBrnLLp2Bbq
	 14NcTWA5pdpjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4722CF6491
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172767095363.17667.18355521492751382146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e9d9c1812184acf916906f4211edd4b6da86c9f50790c000ce02a2cbfcf639d
Date: Mon, 30 Sep 2024 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727670953
