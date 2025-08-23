Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45F411FF1A1
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755990594; cv=none; b=p9IgtT08QuEUXiNh2t8mYOnC7xdyzaZVf03JG3MKrzg3Hlu3P6GcPLjV5j+BVQT6CwAeIKbTUDNRUT2fOMuqwIyG1+8v9w2DlQ4SMmDDTjoHOGGPwO0vawqCFMPgOGEcuQ7fymo7kB34Aq8BQXuIf8jYFYGFM8JTu9uQi0M5VpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755990594; c=relaxed/simple;
	bh=iGh5P4RyWhmAD/1XlBH7/8HYpPwPrO3N8WbyokgIux0=;
	h=To:Subject:From:Message-Id:Date; b=hSPSEV55JqW6iWr++wW/6sLtQoEqhRuJzfvwpnqC9AO6f8I8tQIg/Qc9CqxbuRGwI06myMkixy44K1As2A1zq8QxSpfwU+GdYo/9ejCqMNAbX0o4j7mpUg0CFoIp6pT2EQNXyHKqFBq2rxTgmg0MdknNsgaT9nFuy8aSnJSi5lE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l67okDtY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l67okDtY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E5BC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755990593;
	bh=iGh5P4RyWhmAD/1XlBH7/8HYpPwPrO3N8WbyokgIux0=;
	h=To:Subject:From:Date:From;
	b=l67okDtYBLz+zkah0Blv9uCmjAu71XSHINgur2GqmF836J3ye/bIIfFZ0fPex0Sjd
	 9ECrmUNs+TTT9qK5/oUeuWP01BMWp2AfmbyjAAkzpn13pqdeElYYsszrhfLqsOxp+i
	 t4qbYsJAKFJIhOBcHs8+lGPSr1zHdSObtAB1eUI3BfWnPHiC6l9fG6gGFqkSYmwZ43
	 0pONT64w/c9FiYSXzvBSjJ71T58qd4nFwEUmYumr30q8+/qAYDhutMGLNoctYAYPW8
	 /OVsjOzNMxcKlmfG708jFya055HhM+YOFLaFoczIlWjkhOmejOX1CHX7g7FnKCywgn
	 ZP/9aY+KHP+Og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91245CA0EFA
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175599059358.11113.6168599241605771374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02681270e5656d92b5eee5bcaa99702848a1c8bf2988d32f14f09bb3b6df52b1
Date: Sat, 23 Aug 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755990593
