Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 363CC77107
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721340954; cv=none; b=GMu5tz3Ssv8/CH4tQhjhowDjV5Xjm0P6anDrkF79MlVgzHjHImI49rPE8oVpjx/8f0qcSsskVJzf3sqT84XTJ+V3aRixFodIzKrMr0NZ5vt4PJMCN0Gl2X92IhyVFchGmUixhGvtT+9WbS0gSBegRD4StoIWFuKci7yBmSotEYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721340954; c=relaxed/simple;
	bh=EcRGemEEvfWymzi7dJL/bbDVCHrl+wc0WFOnc4XWbck=;
	h=To:Subject:From:Message-Id:Date; b=QqdwiiU0bOzKafGrZnb928rtpMQuIJZrL2hToBf54W8gOr+PsBSe7t5q+yToh8gnTJ/Pd+0yqwvXLfH1w5o5x62TIzIZT+tnsevuu1oaQDuRGITiyyV+o862BfboGD7Y74OTOYblb/vNvIh+wki5Owufr5BcYZwWozGIRFRHanA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iB+p6U/g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iB+p6U/g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A572CC116B1
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721340953;
	bh=EcRGemEEvfWymzi7dJL/bbDVCHrl+wc0WFOnc4XWbck=;
	h=To:Subject:From:Date:From;
	b=iB+p6U/gzYrp77fRJb4HXZlx1DFHReX28rLcq/UkWN1wEy60LFNr6AYtfEh++y9JU
	 yq0yMH0ylYo35qXGyHpdG1k315YAiiMqdwp6dSVggtYUh5dUFDKFo2V4YLprM5oA2X
	 zJ3Eew1jzXDQ1xppkcFocKr6/ZQLAKwdjVtm0dATGPvWrXXNPjXXU7fpXg8XAy3wBt
	 Ss6e7LJeXT7v8OPBqjuCHSF+pL/0J+wasNAwJTLAPnbJJv3JnMG5K0vpzHiMOzOb33
	 iEvR1yDic8CMx69LNPRw8jRcm7zSVP/TZ7HdMjriJORJTNtTsic+AW5ECaAcrE/sOz
	 jf4mLgNAli3kQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CB6C3DA61
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172134095359.20250.2198829022608139500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6facebc71fc96a4836c985b0010e71deb85cf4ee3caed03c2a7ff3a08d7ab5da
Date: Thu, 18 Jul 2024 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721340953
