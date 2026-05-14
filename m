Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C224313540
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 15:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778773834; cv=none; b=mtIxOCGWfMTg1PREvoAjrhRxQ65UOpHOWAki82oVSm1OyLGEWRF+dFQda93tvouSzPapLyQQqcXPpxBBAGB1ntelwq60tVVOx6eAHesXBp1iboiqQzZd10QfiV8Ak1DakKDhu0Ym2ytbo1kfVaq7UtGLYrwsgCFP5XQcmuNUQpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778773834; c=relaxed/simple;
	bh=OoNQCrS7xMAC4eG1m/O++yrhwu7/zc7vkRcfwzW9bUU=;
	h=To:Subject:From:Message-Id:Date; b=YbXwBIrYU9RoumBZleVY0WfUEmcpZc8RJwuxV/sWEYmXnDjZmjMeB3lZ/ZSl0miUQKXV8XFog0s76TBtdFJXM5VUY/bR8TbWCLKbcGOlD3DuIhO8kxeyIS+Or4BpDVNAdo8kxMSZZ3TQPbLE3ncJ4uiChsHs7Puwgvfqji3U9Kg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YUXN0AjU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YUXN0AjU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA1AEC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778773833;
	bh=OoNQCrS7xMAC4eG1m/O++yrhwu7/zc7vkRcfwzW9bUU=;
	h=To:Subject:From:Date:From;
	b=YUXN0AjURBx/gSlB4ZSj19fo+elZvUyON9nDOtDEIYjmglIZpKXOtNk3qHoQhJGJY
	 dM1DhE0gVCcVlX7RmuS9fgpeezQ3LNdEugpWr6gXU2AXRpBCReDqcMf9hGiIerABKY
	 vCs0f69g0J0qfrKghj+wXnCUFzhFnRZTuIdU0jXx+5kDIajp7BiCUF75gjzXy6uH+9
	 Eij6xF/Xj9SfmN3r80v1FyXmcV47hUQgY9sD3fWvAY92cNL9Iy5dyBJhfAc5FOX9VM
	 PV7Iyfe6D783YB0txHAshkDtdSXf1ISRCDtWaxjgA5shst3NhGnAdoxelpSZ3Pz4pF
	 s0VJDH4zPcIeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB3B3CD4F25
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177877383369.14467.6474190434493453934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad7008505428ace0c97d3b1756d3efa739913b27d9056c35080bbdb15a5cae1b
Date: Thu, 14 May 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778773833
