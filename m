Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32E531C07C4
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749906594; cv=none; b=keOZGbmU26JLDtYvtde8Ip4LX/JsPpzt0A6dZWZ4oH3OB1T4aA8XjUlhE3x0Zyem3oULJ7sCfD/WSu5kX6e8hC8fPIOw7NKDrNsjUAnS5AfdI+FrBSwXSRXZf/YquuQEkLx52GN8c0chnqbh7hWG3XkxADRs+mBigZ/c3QlBReY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749906594; c=relaxed/simple;
	bh=UDT4WvhHHfIw59T5l2h4hEEoMpf6yt+0jYwlRFInqcU=;
	h=To:Subject:From:Message-Id:Date; b=mxp7Gx/3U69uWeDaSb5t41GSRH7Cw9XlP+7zzZe2CRaaZ302T/D3AAMLWTvesiW/xPtxBc8MkCJ0FlchtLRoY5I97SNfJiH5efa/jYg++ZPdY2/jEcXE1ltCu1SOHt8frP8RUJmLSvNed6SOE8eXeGiHiai1OVsjRgzGP8PWh8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZnorFRv7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZnorFRv7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E88C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749906593;
	bh=UDT4WvhHHfIw59T5l2h4hEEoMpf6yt+0jYwlRFInqcU=;
	h=To:Subject:From:Date:From;
	b=ZnorFRv7EppSwTFFDO3vxkuEMCvmHPGfajcaRtv13A+sTmqT36dAazuSNQ/LXH4Hl
	 4gtxQSeAFzVt9vo8ngoFOTeXi5n7cLbYIWfmppArUXYP0Xoam+cN121504gs4agatr
	 VCehqvzNxPNEyihImeGYSKVcyhNGkGkOZM7X0K6nWzaB3YhqGBjROiSId9gXbp1Ko5
	 n/e9HsupfrbaidKb0xQvw+nahxCr/ERyI0iqL82qiI18zkiM1i/WVJ63gmx1s+yS6/
	 MPYMKXOTifghK37c/bNd0C42VuJHl/zZa0PWya+SJmxakXHrwF6BX1YpQExZaEjbWU
	 LpKwUpLix8enA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FACC71141
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174990659357.19606.5227846546316005733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6e856299414ccba49f19c2bf32984ae3dd3e3c7aaad6896045f0637b252933e
Date: Sat, 14 Jun 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749906593
