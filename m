Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25D3520E6
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734378354; cv=none; b=l52SL5C9aNGmryw5k3nfo+bj3trj9RwCIYHLQeLH5TK+SXuZ+245fTXvGIFzzoa+ZzKe/+X1L7Z+Zy+CmusuHl7NrmZJJan5Hl8F6l+xS6QO2Zdwi9RsB0snNid3UusZIsn8r3EVDlqNYNd33jAnILolYMdWkvUZH3ecG9gj6qg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734378354; c=relaxed/simple;
	bh=HTDbXrjsqDclz6yeUuZB2Q/vd53ZW17D1VkpyG/nU1Q=;
	h=To:Subject:From:Message-Id:Date; b=rsNBorsYkGV945o8gpMuO2fjihbl6fzTgDTh/NIiYWjsa9B45N1YIzQ2oZAOKdHhWMiKx6JGueDYo2DJGt+1bYuBlIESoPzsSms++cSDJkdztDmF2DaOZ2aTq3mg7IhUAm2g7ss5iWMkAuYLMqm9zayNI3QKd+tvYGchbZW9OrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qC4JbRW0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qC4JbRW0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADF75C4CED0
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734378353;
	bh=HTDbXrjsqDclz6yeUuZB2Q/vd53ZW17D1VkpyG/nU1Q=;
	h=To:Subject:From:Date:From;
	b=qC4JbRW0wMcycAyYH3LwHdgowb11Jdc8V9n2BqTr9GqXXzSx9jwEpyjpEyOEFNpga
	 KsfAKME3LPWuzZ4bdcjQz8GvhBY00GEc4jI4y2SsA3YAhzdLU9G8kmU6ztVKmkg3h+
	 tpi80Z8oTcB0cOkbEZr/w/UGkvpKWXcTQgmxWk0JPGPU9pgZMjmBFsAs5gIW9psG8k
	 LlAa/IC/kR1tBZKPhzJ4cdEKT+w/RcXC33aWxof/g6zBGlzJZLbdipETM9MvaTmgST
	 ku67XkwDTRuyyA+SM707bI+yomuYmfMA2T9fi2MYIGj0B3PxYUYsDZwvG9QG6bjidx
	 JoMf3NhJ1j63Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CCCCE7717F
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173437835363.8316.18400546148304357367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 503f65f6cb0e68b2edc59c12a99dfff8aa74d943ec8011c7afea009436c6cb47
Date: Mon, 16 Dec 2024 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734378353
