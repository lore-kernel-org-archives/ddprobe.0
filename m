Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 657A027462
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 08:36:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720514183; cv=none; b=qBv97Yak1QPQ4vM8XvvzdBwAM3mTVCdbKncNPp4cQMCf2z/EEuo8oGn0she7K6ZvNNJEaJGPlfoENTT5LZREwFA4S2t0YYZbLxn7bg4aHkoolRR14G5VE6m6yZ7ZlcNRtFqc4qfyF4ETy2oY+IsilBdKg/Fl/IuBndw2IWp/qgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720514183; c=relaxed/simple;
	bh=FWv0MrRRmyWesic63xcHI8/+qoZeiXKUHD+yFcHqDMY=;
	h=To:Subject:From:Message-Id:Date; b=NNZVb3XhGwdFa1Jlv2tbuclST/llIbD9mP2ZsnHU1TbgBuFVZSoDbVkddaZ/Qq+OrnHsYi3y5RXKXm/fxu03lQqdWrQRPqr9rJ7r/N77GlmRJQW3/+70yqeT92I/j0/FvxB2ZQGclohmkrI/MoLyXn6xg6qNYwoSDRSzsNRntVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BjoXljW1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BjoXljW1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFF4AC32786
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 08:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720514182;
	bh=FWv0MrRRmyWesic63xcHI8/+qoZeiXKUHD+yFcHqDMY=;
	h=To:Subject:From:Date:From;
	b=BjoXljW10LyKNAaGXLcITL2SVDEKiikHsKE+ZAMIUxhqTaXhWEhC4x0XtFMQW+VK5
	 y6cuV0zBCjTRRbdP7UEHGMr8MZRRPTbPzuqYICb7S+xOEFXvBgELTAsALIge2Nkc5T
	 hQcHr+sFSeI8SStRGVvYEfFc5yxZrb6sxJrum4H8gyjlW2UCwACU+rhfVOSGF2kbIn
	 Vv11It6VMipFrQAOE/KJ5fsbJdfyX7dhTjGIV+H97Sf7l4pdn0qSO6r+eh9x0LjbLm
	 ndAd6dAAscb5P0VDF2WrTt+kYsaCjsI4MPnPmzlH3xqsBYRhmUeEjfEwxZgSK99XQo
	 ZEopZFyoFeTMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD025C2BD09
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 08:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172051418276.10899.1984052892303792530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c8f3639e6e55e8d4fe44fd5bc062572957684e0d5b4b24aeee99d97eb2c268d
Date: Tue, 09 Jul 2024 08:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720514182
