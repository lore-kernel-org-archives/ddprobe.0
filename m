Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3102E157A5A
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 21:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777585654; cv=none; b=qwufl2cAKUQOg+tMF8D2epBOojJ1vqrBx4FkbKAvo6JXzpb9ZSlYptbQBPHaAYZyMsCegTMWOwnWMvHuiklDoxw9sVOx6HvUamQKYpJOtv0Y08tFEUc24CW38ZXpbyYwx7cuop171McUU8MBlqNC+UeM0TWj4rm0psHrITAgDrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777585654; c=relaxed/simple;
	bh=0f2HHHuQ28FFXNjSJuYEtjzvLo4OdwRX3gq0DpzecU0=;
	h=To:Subject:From:Message-Id:Date; b=EzP7hlFaLTSbDIr6kOaSqqeQrFNIWfYicPcMwf+MQGTVgqVm55WH8ztzdsRUL/e2XyG2nBTumU/Z4KKxtxAxyRHpOuj0FCYDJU+QYM7T2gW9n94k2d13Gcrk0Lj0QCaLAWFdoMNYQ5Bn4CAIBZfyYOuyFV5q4uv0UvDTQWnSQsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZL4e1Pld; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZL4e1Pld"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEB32C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 21:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777585653;
	bh=0f2HHHuQ28FFXNjSJuYEtjzvLo4OdwRX3gq0DpzecU0=;
	h=To:Subject:From:Date:From;
	b=ZL4e1PldzTGDQA6ICnfy+O3F3oMaZF7rvo+qlkGkxxk2IpauNVN5/WG4XU37/6UsX
	 qKRsRkJuU34Shko1P2ydkTXOe96jR094darPzyi075+ndgonrGk8OCvOiHyXGh1HKh
	 BUO/e0ibr/RdLfDowDPQrcwDU4dxOQe1em5scnzyC0lIO4jGuYHjrN+JFr167KFCtd
	 fG3dzlllzxXzJsPRXSuuz03/buMYERrJDX8Wc7Nva/Vch0bBZ/1wFpKEGcsIPysgIH
	 ogPMR8vE7CHMbSK/O6nntaJxtYnw1gX3oozQYowMZ1sGbAIfo1gyWtVUUWIy6RmlK5
	 /iIkYMA+BwLcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD1A6CD13D2
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 21:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177758565368.3255.11331247179801704416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30301070c5b1f261f4efeaf1705c0bdcb86bee560ea2edbc7c9047cd56d655ac
Date: Thu, 30 Apr 2026 21:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777585653
