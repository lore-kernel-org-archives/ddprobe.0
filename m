Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D24E5387378
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 20:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785788434; cv=none; b=WCAcVxdIsl35MRRTfWdmXKFcHneuXVQ8EXokkvWjF9oE70ePKPrjZYAZxBOflK0JMShmTFj/MA/BMIrsQfz9HtAm0hGUiGl2t07qkFhyNZR0U1+kCcMDEahl3PBCWQ8BYopV0+OSPvNa0DlDwTE2abjiqXBF4RoPxf2NnKBbrJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785788434; c=relaxed/simple;
	bh=KLmMZ0zhGPtRIcyeuVVulSJY9gmAEavmsPz7qYX/UYo=;
	h=To:Subject:From:Message-Id:Date; b=TU6VvJAvaa0HYjcZxqLnBI/xO62q3+M4r+3WPWi8eIzstye6hL+SGLrXQ7YqEsHyr97BIJJuXTUtQh0Z2396T69vZtTAJER6b2C61ppOI4AErQgmBtu6NxDrHyScNIlu2eVU77CNmvErawP6saRfbGcf7mSNzHHYb077CZw4iiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GgvDC9LM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GgvDC9LM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFE1FC2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785788433;
	bh=KLmMZ0zhGPtRIcyeuVVulSJY9gmAEavmsPz7qYX/UYo=;
	h=To:Subject:From:Date:From;
	b=GgvDC9LMik755dMyKo0qYU3rA8cZ9SyUhzwzm017DAbW2YjrarAA7zCYi+wCq2p9W
	 1xnlcCkLym02m1ZS0kwfJBRfrZSq+KAxso+aHZr7IN21UVURajNoRngyZquLL+k/DB
	 2dPQaX5IDlfU8ST1H6O3aVQmutmXtvwaIUCazqzPQ6OHVKUCpni27V4B1nxTO2yFkj
	 ISxzO5jdBhJY5CFiHoU7KReiK/hRPPJj7Vyi+EuY0zkAbUKxrvBiqMfsjVAb+aedgK
	 flxCc7Z7opq/JxSBxejXLqCA9vib16dSgdIMXrr9JEGADZy7KhBtAzujnulvPbxKds
	 GInVVV/0MQlqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4C5C55182
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178578843368.13350.13163733979027494842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0dccfae77eced62d0a181fef341f859899825dcb60071c126dbe41398713b27
Date: Mon, 03 Aug 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785788433
