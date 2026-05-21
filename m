Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44F1737DAAA
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 18:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779386554; cv=none; b=i1Dr0pmegSDaQwqVLW8+WYMr5cjy/ZM8CGZWAJxwqh1Yc3HEMjFpB4oRL2Ss9Q9CCtkJ/cTWZPvBAlv2B6XL7aEbYThuC3Pvh8kn4eL9RoShbU4JNf5afCtwMgTeQa9P/rnzybyLnV0C4bKAmfibPfY2qxtl0S09ZgrlYUhWXQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779386554; c=relaxed/simple;
	bh=U3BX4hjBr3BbNUXIAux+h6/48tghnUqwDckVRHj9VuY=;
	h=To:Subject:From:Message-Id:Date; b=DP1wTfWXCqY8HosX0mwwpUjueQ3o3ZaICplzS4j90C31kpNujoQsUC162YTKv5QiRxRJS5HZnXF5aspjWVNH3D7DbYWkPALQ9C0n8sgkDj4fDI+dAjjmvK9ruxIGSUnjlxSTcR7tlMNUUrk2mptIgsY1Ihx0LBNU2RQvV7hcAVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hOdE/myE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hOdE/myE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4491C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 18:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779386553;
	bh=U3BX4hjBr3BbNUXIAux+h6/48tghnUqwDckVRHj9VuY=;
	h=To:Subject:From:Date:From;
	b=hOdE/myE1AvLSbo2RZD+h94VA0NPokmrOOkaUwYflGuxOlyf7lxcNycqPbNVLxOgp
	 LfmTfyCWaHvIM6FR0ZCQ2N8OKezWMavz5zLwSiZjjReeWb/bPAH+KnNL2P5yqwMkwN
	 nI79DX8B3AoF7+eoPo+ljO5NwQ0VQF9sLDO8BjNUeA+hGAM5T5ZcIMBrQ8ZSdvo9FL
	 t0dQhsYVWbNLvWkOaQUOxbWrbfTCYwzvi42mp87S0iTvYzZ92PCUocy8n85HPnlYyl
	 Ls9T3NWf/WiX6YK48tpJs0TUM+f/pX0dcnZlv2PLm1tIphDoH3/kqVb2cUc51H72wL
	 vPqnbr5kBt1IQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB9CDCD5BAF
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 18:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177938655369.11557.13001997178234740416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f052ebffb7e8bec4de330d1db6d88518867c610e32804b8662e79b92fe5b49e
Date: Thu, 21 May 2026 18:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779386553
