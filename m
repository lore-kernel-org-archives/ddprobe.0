Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A9B5158213
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 17:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715706143; cv=none; b=cOA2Y+5NgN+Qg0aLaiGrOWuVSWtwlvMDgNkbgl6LFa7kgnVvRVI9QkIReIRj1bFrgo0FO2a2TEJYaBME346+mHpBCpC5XjeFKxxQ6UY4v3t1pbXPGQe+dCYK+XBYch/xO7xAXieeJAErIAODG10+fJK+r0xhqn8L/lB6o24HSuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715706143; c=relaxed/simple;
	bh=FIyG1LWCdZ5SqtPvrj/Ic/uQMLA/cCVQsu/HZjRyXNw=;
	h=To:Subject:From:Message-Id:Date; b=GNDQt9B4BPGJJ+1vBacssjRJ/LHBnYl02JoL+iNOAAeEznooQszNsaRa1cd7Qw/A3+d8OcZ5uPSyWuFGpbN+uETMJLgGZcHi6ID0IVjCxRkVLXx0o6k55MEfsGY0TYq8GQd+GdRGKPTVpP/It43xujg7D32UcJPoHfIdsO1HrqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KkoikxYW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KkoikxYW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1708C32786
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 17:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715706142;
	bh=FIyG1LWCdZ5SqtPvrj/Ic/uQMLA/cCVQsu/HZjRyXNw=;
	h=To:Subject:From:Date:From;
	b=KkoikxYWNEkmHV6Ta4BvgCU27Pu+W6Rb5J9688PbqClOZy3dJrJeom7a22/Jb+4TY
	 pCAPsQHrOPwrTrIsB70akq+HaykWnaKmPIA1X6uBWnd/vNI2jtuNJVW4wVM0HmB6GH
	 sIIdIzsdvansSwF4BtDO3uenP7ns5WoOH7czVMZg61JMGP9zzSjupTHeSWBOpB6Jh9
	 ry4/U7iDwhtoKFx5h8qWuzHd90KiLQ3bsfJgFT4vFOyTw8nVk2mFdo6PyGy1DQZ5ni
	 lDetTWoS9KyCtmf6jAjCieZFsgJDAb4xf2qrP+Ciy/+vm0XEMTipMdd93nDWetDl+/
	 hBZpYAQdctByg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF62EC04FFE
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 17:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171570614283.18673.12143812314899414713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b837a4427f0ac71104924099f79a057f628f1a1ecf8f60b7bdab0ca67f070cab
Date: Tue, 14 May 2024 17:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715706142
