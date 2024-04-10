Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B4CE1598E3
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 10:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712745497; cv=none; b=Od8RGNHOi6VR+ScdA8adOrv6XsDhIL9JwvUcgFxEJuBtOt122vadMDYzHnEJvxuKo/yllAqsecMUsmaV6F9fZHwQVXliIVU+E8id+1ZkZolWvTvMNqH7mvbB5PnXTh3WsJ1FxpetfYVHNI+Icd+SolQmZiSMD40WxoSeiScJPj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712745497; c=relaxed/simple;
	bh=U8/dXmcTI+yxYB9z+oYF/rtqFTYH+k4GrbDehlqaLXM=;
	h=To:Subject:From:Message-Id:Date; b=b7qsFf6tNg/xX2wu6uR/dQPmN48Mn7SurHNM0l9J5Obk5XAkxhPaNdjKak0kxJ7u7Le9bbUsTHGibRojL2wBHKCy4DjP3uF3Lr8CzEXddJfPd9IN62193pc/Jxqc9lw5V3GwbFyT+1b1dG+7CWp7kgXpUz6JhGSjcSpcGKXpvQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NI1CeB8f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NI1CeB8f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DB36C433F1
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 10:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712745496;
	bh=U8/dXmcTI+yxYB9z+oYF/rtqFTYH+k4GrbDehlqaLXM=;
	h=To:Subject:From:Date:From;
	b=NI1CeB8fGxJxGFPQzzaWg/3cq7wSY6lNeIPW9ijh/WpYpxDEIvLEke29NWxZ2Fo4Z
	 FIfTl8enSIteGPF2c2eomV/onItJXSbJK1MlIVtB/+pfZ14wNLBihawp4syP2/blWF
	 0Z3xM8wP4OWB+A4gDdVHe8XSZ+6yuSnc/x02rfop4FP4aGfCEip2852ZkGo13ZoS4H
	 yvaROo3APfHl3OGreeM40p8dO4wwjUlNQupvZbMZFdm+NHFS3vBCZ7OVjWGxIeKmlZ
	 CFeSQdb4qwDn/fMjylftIUbPMF1oxlLCulkkuyk/OYskt9JoWBV5J+AMhX9MGRoquI
	 x0NL6m6/1jU9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65FB4CD128A
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 10:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171274549640.20642.5216353756149891296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12a9b9a9bdb850d34a1d5954f5491709ec2f47e75df7e03ef3fd3cbccd6d5a67
Date: Wed, 10 Apr 2024 10:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712745496
