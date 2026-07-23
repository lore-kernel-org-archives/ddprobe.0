Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71D0E433BCE
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 09:39:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784799574; cv=none; b=biurSz1YxWBkCUXlU/Lj/50eIaQOvNoF/GSEAsZDPix7VUSlSMb7ZU+zHicgyPzAKdyXe/HhhXiFQPFE52EFRfRJdJgv2TitimuNLhIINwessDtpoj79H2d6te9OZuSSZ7X7DWMqy/FxbpI0z+0on0tyqv914QkP/AoHwafMbjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784799574; c=relaxed/simple;
	bh=ahVcttULKzYW0y2MAc+86RPCJcEWAHnCy3qenR+Scp4=;
	h=To:Subject:From:Message-Id:Date; b=Ftg67if8dAamTfZ0PcNNbcht56DdnPGtvMlgTayYHCf29Dd0uHMSOIakzeu1xoteWwP+fubY+917OD4kob0/n9w2lk6meM2iF7U5xImACk3SsAkZQ+RbcaEY7/lk3NnUiTklkUvTMunyV+em6W5DtnGAdJgiL3lZ705k2rkEcf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hg7id/xW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hg7id/xW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F061AC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 09:39:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784799574;
	bh=ahVcttULKzYW0y2MAc+86RPCJcEWAHnCy3qenR+Scp4=;
	h=To:Subject:From:Date:From;
	b=hg7id/xW5l4bSRZxBQTSwDTCo+FYHoxIM4XHulRtAKzwqbIWI8Ufk74NRNkfQq4RP
	 lYIZquAn/dODs7PAELFW/LxrfT/Lmi4ZGMluq7jyudtM9eGCloUyBU8KaZniUA8Biy
	 xo3xEklNK1T+suWDQ/Wo9xbXUEgg5tcVTaQJ38lXdmf464LOswZS3XqpG1idYnA30K
	 K+/rNI54qUIdaC7Vx/Qo5v636txijjNZMKt4t5ABCotdII4uf5br9ghN7pflgi5ggm
	 MXfGr4h1GTxmWSu7LjS3EA3r5ZR7yE5qKMmdK4M/GhnL0NP1rmD60Od6VavMvfV1nh
	 1SQlw6vOHEqtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4079C531CB
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 09:39:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178479957379.13147.4774812918486944403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c2bf417c18897b326ea333c2418295f4c4a4443574c801a0da45b7cdf8bba43
Date: Thu, 23 Jul 2026 09:39:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784799573
