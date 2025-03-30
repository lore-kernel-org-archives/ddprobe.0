Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53E161C69D
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743340794; cv=none; b=bv++dDa6LHfKMzK9ovmOgofudTqo8/5GArNKpdVOiBaJDcKrkGJP7WpuJfNajUJH0i7CnoqZvN1iaSfDdUDbejeqY+/nAGdvvLM1LZiKzgeyhEuMLbHVdYw9iZwSSObdGM59+wCobNy10KWppMEnEfWzL2lPbNR/zm+K0qglvh8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743340794; c=relaxed/simple;
	bh=vL31oN/q/um0V4QAHHgCPwZ9pWzMr4p3aOwDNz9JRKg=;
	h=To:Subject:From:Message-Id:Date; b=D9FFaPcmwGtZ3zxdSkaiNEaOPbWCAPiCUYjFgh/Edby4xfhwhP/Jc9R4cpBFgY5F98HjkgzR+GAOCYOVOP7XeMxIKr0tVrg7S1fwF3JoL+3mEuULPSdY6z8jSlNg5O9RhrOuKeDzKEAcmmp1wxy4whLD8Hp9zRdX3hTvPd5wpaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XfWEDdpz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XfWEDdpz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B37F5C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743340793;
	bh=vL31oN/q/um0V4QAHHgCPwZ9pWzMr4p3aOwDNz9JRKg=;
	h=To:Subject:From:Date:From;
	b=XfWEDdpzjCsr79+IJHHDCMLd5S44eNK0E5vgKNdBHUIEe8lgQ9Ms9MHsESsMWOk+w
	 c7Om4Xpir197JQa8txo/i3RpJcYq7SgfXyzZZ2DCsxdVDRCq84Bdy3p8v3TbLBojYb
	 vd0CJZuRdNAHHw+C2t56wl8wTI/oOL7jbdTLaPT+Kx+udCq9vV7+/4YKDNpORxMkdR
	 CJagQJM61qkb29wsYRhfs5oF8bXNBEYrmrTQk8803a9QuhDDiNvGyfGAtb0E6+vr+T
	 AII+/DERoKL7T8zw1nBW2FsmxhuGm7oAhu4weGo7QyNeuqDXRv0MRMLQnaVBS6+tkZ
	 vxJ+eJP+YfEtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 978C2C28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174334079359.12246.7169231368216788414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e1f0b1892e3e08d6acbc2c0f901f56d03066bfe3a4ae6635cff09ee0c302fbd
Date: Sun, 30 Mar 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743340793
