Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30357221291
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747894194; cv=none; b=r8aY7959dr6hTSzSCgD2JhlFckglu/J1WJ5XnTNEVTrmyo9mkh5zTIO0kZakYK0tKrtqkNGZj+tWX2OgsFcT0w/PnqWc7DYbvT1ndUHoqKcX/u9XBIgvPHKUFgsFlxM45mIIZc5CYQB7u7gNurgPDR0zcx3MV30MfBXIYi356yA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747894194; c=relaxed/simple;
	bh=GdXC39JLSoDy2L+3UixhPLblE/EKegpJ/99br36JHYM=;
	h=To:Subject:From:Message-Id:Date; b=t5clfOdSx9FXFWDH8k5SV9Ne12GHTfz+r0ieRf7XpnEXDgQfMhNoyQr3YmslXB//TsqgMY+ZjCeQt59UJO/xA461qFYZOW0DPKGhI3BqM+dZAkHE5W2EjW68j+30IM5bRLzqnpLGHcO277o48dcht/B/HSHnlZ++lSNkahEHYbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hFU/a3yR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hFU/a3yR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6749C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747894193;
	bh=GdXC39JLSoDy2L+3UixhPLblE/EKegpJ/99br36JHYM=;
	h=To:Subject:From:Date:From;
	b=hFU/a3yRWh6TzaRua69+xpCIRsCUnjFgRn/WhajErah8xXK4+q/AkfQMO7byM4PW4
	 ujqQxGgCklK3Pd6pSKmUq/mJTgF3jI+5hX7dDd/GXrexsbS5HalBVUkmtAnrtUW2lo
	 /dYr4/WQMGk+fNm8Jyh9YwWpK+HwH3ZAedbsjwhA5ZtIElIhvFrmWqre9rHV3DlzwC
	 1EoebgecbBMouotouzdPg5MYJRYVBBfSI4444Vy9+AbTPR0di84Ec6W7xinuD4BqGY
	 epuWhL1F0033/aSZyJJYQ7UbmgHhD7nJO7NzQosJ/UAbXVoPu6Op1L3YEM8XjeZHoz
	 UphBq7NHP82UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98314C54E65
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174789419361.32178.14272359639806613097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02f43f7cc87d745d24e0cab3381a284fede495dd12a9542ec43b6a1905ea561b
Date: Thu, 22 May 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747894193
