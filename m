Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2DA11CBEB6
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729533353; cv=none; b=EzP7YY3xoP6jenlprQlivZ2RyxTVbfyhl/ZxSg8lGU9uKNKwXSKBR+pf/rZeOIF4XjyELsmx0rRbq4OXWMBKSuU4IUnegCQo+iIRzTgXtH1vptuIWzGbHXPrHcAh58a9TSs6G9ll7f8QKIfOFt9g1iPel1dVGvstyz0v38Trkr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729533353; c=relaxed/simple;
	bh=cG690oXD7Ld1fI6f1C0JSYKvBgpt67+OI13Tj7phCKw=;
	h=To:Subject:From:Message-Id:Date; b=r41vh5GS10ixPY7xuww1vDTzMQ/Eyk/LdEnRLGLpy4TOXL/TCPFEsESpOUNJ0pDumiQix/0e5rfTluobCqvM8IzFnGgasCV1wbSRq54zXvLRHp7KOSuwe9fGLnrKuVXi/NlUgBMba0P0hFYwjbUftTi2FIhCikUq0qdAncn87HU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E8lWWoF7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E8lWWoF7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7CEDC4CEC7
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729533353;
	bh=cG690oXD7Ld1fI6f1C0JSYKvBgpt67+OI13Tj7phCKw=;
	h=To:Subject:From:Date:From;
	b=E8lWWoF7yoFswVZt2UlCPgjC1HJkpkqWeDh+xz6wjxNaiZ3aKaXSm8sH21JcSy/Ms
	 gm7TPq2rkXrRMJeYdS3fYtaO5o469kH7uM4xbDk1rs7BVHtSGI7MyTR0wk0ynUFP5B
	 t3kUGh9EmLbeYK2kKDmQzE4Pk1aW6QCgpzKz44qXABYjiEncVdYywewVju84uB9Dgd
	 YrooAyzgxNncsM2J1asEVFLUN58iSipXh4qrbOd4mVtKelhp/WJ6BnMxfoPq0ouNKI
	 p3kcYLEHPmV021HFgmRAy1FI+U35fPd1MTtioeimNxdh5XKeKnXNTTP4I3WnVbEss0
	 L0arz5ejvw/1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9015DD3C935
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172953335358.2920.2955470283898911055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2be7972bb0fbf12c7cadd5805a4f88e215a58bc9abae31c8c00745432d380bf7
Date: Mon, 21 Oct 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729533353
