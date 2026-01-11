Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B87F199230
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 23:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768173234; cv=none; b=NgI6Qu+makQdWij1szLfn5x+g/xnwFeb22wzNPwHF5/HZM0D+IPFPl9YiK5+wRju72kiRg0awVmxhUq5CxhF5yN3sP2Y0FZew1vlJnKxl4mBJv1U3czjzDAq3vupEbpA0DLN6sDQ1MaZspbrzC8em2CsjQNRxjtzpRhxncubI38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768173234; c=relaxed/simple;
	bh=Gq9q7r6QhPuljuXBdZoaXRANsQrqYnjwNJvx670KTug=;
	h=To:Subject:From:Message-Id:Date; b=B/jIlKb0a5iB5G6EIladlygFRuY/1x0CVzqvNlasOn2sBsGauS1h2zfhBhmaVvhApSra+P/cBataHgC4l7pWV/djKOAjWFMYF0hpISYnvVrrl/Ne5JInsxEyYqsLpSM4MnAo47q+UPFVaYGTPMXqIL3d09sm5Xe1g1XZZ16lKlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BtQ1T7Xi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BtQ1T7Xi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5BE9C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 23:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768173233;
	bh=Gq9q7r6QhPuljuXBdZoaXRANsQrqYnjwNJvx670KTug=;
	h=To:Subject:From:Date:From;
	b=BtQ1T7XiK9V0TryW3n2ZjM5exVgnbC4p8P3LLnAzMrL0iOo0H2GZlN6o623ewPr87
	 NuJs7D2lgxvzagqPQKdII9WN8N0X1iJIsI2eogTtHZomsrOgn0VxgZezkqyaavvfg7
	 IU46CPm0DyO7hIkRuL2Xj4ZXu7sUKfH3CoYKoT4uJx16Nn6Voo82y0H8GNpJL8tMAg
	 fdYD8YWoKsF3gMG/8qbroLZQCnWFsrhlWbZXLHr245s7RYvy2wusdtAy//LlsOv0NW
	 iAWKBC/nT0vPhJadvAeZXZLaa+hv6AY4K9NR0Cfm9gsKZo1+HCq7GhDIHuc2e8FG02
	 4RV4qcFBp/yxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B718D2502E
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 23:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176817323359.31560.1925982528276822399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a3f7ebc13399b84d7d1d70ebb69ad486fb99713fe8627d7f0620545bcdff263
Date: Sun, 11 Jan 2026 23:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768173233
