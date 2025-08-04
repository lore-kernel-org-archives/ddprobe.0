Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22FDCAD5A
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754297394; cv=none; b=nz8C+PYXVN0dHEx8z4MxwTrP/QQnMqE35zHtqI0JnAetMN+8PKt5GNLN7n1+KJKW3zEYWtwbROcBSNiNcyGao68E6g6cGdfKV3T/Y/vsInt4Z8HDAemA0aEelx0XV5btHEf7EYVHRlHaRI7ZcmYjn/qTvXePkWhvoQVW77OxCjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754297394; c=relaxed/simple;
	bh=rq9arPglElEJff5bjafKoXmDSBkor/AZRxZP5zODBs0=;
	h=To:Subject:From:Message-Id:Date; b=RJoP/pn5kppY3hkBbOAPFaBTCp6K6KFMGBZxvsRT9cvoZstOixRI6s38GS+9znM4rmv3EythFxD8x+ZSr9DRid/c4JyuvyrdBKWQcNlFzfCwPSE38OiBHNZd0s3+xLDOedGL5WCVak2/QAINgPum9MsbwpYB9TRX9qpN4iLXjnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p885lMQZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p885lMQZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D6BC4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754297393;
	bh=rq9arPglElEJff5bjafKoXmDSBkor/AZRxZP5zODBs0=;
	h=To:Subject:From:Date:From;
	b=p885lMQZtl7cnsVG4fhMxaqP9VHkvT7Op9M8JpRUZXsf5hYPyyCV/UEKeu/NQxfRT
	 OBA6EouV6KayCJGPIoiJIo/qkeXp1L74SvvL7yWq/5n3Jd60FZt7bRGC8aaqasOY+0
	 qbEfmChbDUCyAjzdrq0oKD2gZAfNBheyIm4n6gsh5myy66sTIBuX0OfvV+ddxYLX2b
	 t4WE3yRurLcMG0jxf5nvOsweoB7lnP4kzLSQIKkw74Cor1WSXTe5Ju37on05/Bx08M
	 QTCQCqsLPzVvNMxQSZXpAmfbFw7hLoyLqOjZUipYjKcXUWgppVwDpcUjIWTB1HoeGK
	 W7UHrI+ZkYwsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA81C87FDA
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175429739357.32435.2262365920022740582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee6dc378a27303a9a406cf61c47b6f292a105dbf9cfea4bf73acaf872738c906
Date: Mon, 04 Aug 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754297393
