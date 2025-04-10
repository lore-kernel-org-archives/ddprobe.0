Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40BD0280CE3
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744287594; cv=none; b=ibCRB1c9i0UebtDGoipfGaEgglmYrk1ldY41WvzeBjvyNRqocEWZaqAPQLgCgpQqHn3BtF3u+sxw5frbQdfHiKZbj0rixYPvozyeKhl/WWxuDDueaCMmFwFrd7RVFoYLaeqAqh9jOGEaImlUVw1RlnHZeqtuB1srqF1wDaXt71A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744287594; c=relaxed/simple;
	bh=tbRioMpCmx/lIcRHdwb0XAjJO74QhIarZLcKvJMPhMA=;
	h=To:Subject:From:Message-Id:Date; b=HRYy5UEW2Zn8dESaEtyrqgXhrpE+96xcnWK59Bp+OXaXlD6ckZa2/WuHE5keS98NG40s8h99IhCmbNd0ENtLxYsyT8IkbSjR6Supnj93qbyX3NW9MOwnaltcuI/a+8EsbyNGty37WC02ulxYTMGTSO0sKq5TtVFLTjnkwKxS088=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L34LCq0W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L34LCq0W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B7BC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744287593;
	bh=tbRioMpCmx/lIcRHdwb0XAjJO74QhIarZLcKvJMPhMA=;
	h=To:Subject:From:Date:From;
	b=L34LCq0Wsb26TZlA1jjUON7l4Y4WutXT5P/TyR8mNLRJo5cuheQgpE4CXZ4krVUlS
	 le1k/xHfoHbfHv6ECIgbOjM57anCeEck5ep4AIv0SpwAZtdGz++91VE1ORn7x9TOr3
	 bYqmzMzcPLO0njWTF/qTgtJaafnQsECDv8qdA4DNAM76weBIx3jhebpyo5AytT3xLp
	 bjYVDJdE0/kKb1T+br+61S9Tw2qxg9gsM31Jdy0Rjq4ELS7CoSTxsi7KlAv3fSAqw3
	 bJ+oIz+iwKayVyMPwAi6EEwUkIXWN1ypEqd4LxGrGvqZNvYnWmt+m0gNPIMlVBbO+M
	 Vx+V1I4FuJA4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F3FC369A6
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174428759360.4848.9640649786816266554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31469793dbfdb7e706aa374b8cb0684726ba55f712eb50903c3f9b6d9ef7f372
Date: Thu, 10 Apr 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744287593
