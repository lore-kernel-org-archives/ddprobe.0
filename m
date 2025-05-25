Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4831A4C6E
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748147394; cv=none; b=ipDChgpZnvQus9qrufpziejJCJVnrW3hRdqzxbPhp9jL5WI/BYVPB9HTO6utTqxl00xf+JHDOd2/KD+CEN34tKJlfcecwnMPjv+MBKX4BjF3VUx5tgrdjPWkKim/ZeUH0nbSzQ8n78xmKdwDiroBWwuATC99RpdoNlCqzhIhWjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748147394; c=relaxed/simple;
	bh=kaw9bZetBmiByAkjAmAzLgdKgo63WRjuT8FfDqzfU/U=;
	h=To:Subject:From:Message-Id:Date; b=GicU9Z+jlB815YD23DB4QSSKgzlXzvXTLsJHou4FNYnWHyT5jh7PKKaMQW8jv7MvVTzofG98TI8rvHu0amcXpneTcCnXdv59EiIWSzSm+SMQe7PuzhskaEHtmgCr+/XIEEWFxgcXvGDcIbit/+khlbd2+gc98PkQyn7Db1OKHpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aV1AqOil; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aV1AqOil"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8690C4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748147393;
	bh=kaw9bZetBmiByAkjAmAzLgdKgo63WRjuT8FfDqzfU/U=;
	h=To:Subject:From:Date:From;
	b=aV1AqOilNWLKelbdu2cDzTHxa1CQ9HmXgykj0x3ClCXqnjpg4Nbx1Bzcg5O4tGBQu
	 R5iAHdwZW+E1ypCoXIi+SzQUnhUkCMTWCqsb9a8ncSx99iIVhEYktk9Nh7yRn6E44K
	 Brzxfu8oY+OdZvjbjkD5ZhDqrsyhhOrpSThe8qQHfQYznaVCsBxUTBs8zpUPSpHjyX
	 Qe6cnGepy6fXtZztE4cBffLPVf24g7bnU7HyVV3wnqRe44y44WGijDh1/Ln7wX/Dn9
	 TB0iZa3/Qo4yQuQmBPgHMX8wffDR4Me7sQz3v9TSV3shIboiTpJL1f0H9geCj5W7a5
	 CJ8N8whiZBvFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930FEC54E90
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174814739358.950.17335421160278794380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f62e13c459251727515cef30aec044df7eb1bd8d50b715ef5ba7781910466fa
Date: Sun, 25 May 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748147393
