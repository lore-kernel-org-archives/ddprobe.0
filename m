Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5955B356A37
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 13:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786542634; cv=none; b=RrUUjh79GKnJ+k67GV/aTHnYktgapX6OqS196hnO4QCujoohaRLjhw5hcs1ehaqDDIUrIGUng6v1RxGEQU9D+zj/3FwEg3EXDw3VwrEJoJbStRksrq1DLIHxY/p6uI+lEHL/LotASvk5NVqZUb58k2axF+b7I+10cZheNzraOkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786542634; c=relaxed/simple;
	bh=jCik88yUT+ZTktveNiKK1ev9WGXPSmdCOR6yuZsIQZY=;
	h=To:Subject:From:Message-Id:Date; b=PRjqQvxPPYl2pZGHUqYqPcnArsU7Ns6hB58h3XAXINRbT9nR+HKdK00hT0K6t8s5NaDsMoha1QBp7zK78ICRo+emBgTwCDfNelDBcR0RiI9PBGWmacJYiHeygIzQez+OyU+aiTCfgNuSV6NuJn3jJ3ugwGv7ZYhP6RKxvged2W0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FHINdrHu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FHINdrHu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4B73C2BCF5
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786542633;
	bh=jCik88yUT+ZTktveNiKK1ev9WGXPSmdCOR6yuZsIQZY=;
	h=To:Subject:From:Date:From;
	b=FHINdrHug+k+1D+9NQ2w5QD/YL7OcaUIxC73sUy5xzc69VvB2CMg8dOOYjzklsdY0
	 mImiD9qfu2dTz1po4l7dM0LzcSfje9uFxUiVfz9oqNobkVqNOEPYKH+AiY1p4/04v3
	 otD43rQD8KggK4VLWqe5dSFIFIIJc7hdSF08hYknLmqJ6BZNgyTMOdlm2ZgWRvtObV
	 NbVKAHvMWFyO2O8WHpw2+rEy2dnxB8NKx9ilMiLhWB9C6ru3VPQ00L2mdeX7HmT7FI
	 lT9GdKmVK+9OISkq0T4Xd7Qmfw6qkDwHS8zTyDPtaiWIcQl0WfXfykeCHQfgE5pQAZ
	 yFMRhSZ2R7TMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF782C5B572
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178654263370.13675.13986240956373337514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 093e6cce58e9aed020f4e9ce73a099d9b356f2434caca6f756c895b705846bbd
Date: Wed, 12 Aug 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786542633
