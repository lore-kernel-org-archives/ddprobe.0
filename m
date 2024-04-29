Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F7078BE2
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 04:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714366343; cv=none; b=JsWTXkDHESJmBo3aU0gdfuxiI9sHRYkl6XYNq39Rh2+BGJUBewF8gmUsMiQw0ctFUiGcR7XjZTUcPjtVFu3REKLBYdoohjra0+w7kPp2km9fzwLr1eQWB20o2rOqkgMETXkPpumX5jR4THUa8Q7CU5j0ysBTz8UsZG+IP/9hQ9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714366343; c=relaxed/simple;
	bh=vKGlaMfYJneMzu6es5n24t2Qccc5MO6XlRuulh3XNIs=;
	h=To:Subject:From:Message-Id:Date; b=AfzmcT/HGzhqYkERFrtxGdM4QQ9p2WslXwnkplvBhVW+m+AeH65dNg6nfvUxMcA8/FXh1wUVYRMRQXX/WWBkHtoZb8piLXhLt03hy+QYHmiZW+BwHVJlqmA3OJd6jiNYjVm1mRFmtmaCIDCQWQmUaNYChjPCPzFID+pQ/8F/HJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pCTS1X35; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pCTS1X35"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4D0AC113CD
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 04:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714366342;
	bh=vKGlaMfYJneMzu6es5n24t2Qccc5MO6XlRuulh3XNIs=;
	h=To:Subject:From:Date:From;
	b=pCTS1X35Y3qpxy1MPxIX3OYujYVx/a0fwAwXSJDOSoRwpR7nLwDf6UO9Z6MrEPwl6
	 XWZHt1Tee0HhN014D1Jb8g+xSReRcbGODCFV8GakKpy0k9hm6OOIXQ0h7xE/CEWbK8
	 fsdKvvnkyG1G0ASkOAL9iTFUwrTDZOTkfc3osWqdGh9VGvnwMvC6UABSPe07sZ66TG
	 0sRb1hbuWqqLlxFaNotdu5cuezM/VSIVG+l0+BjGBsJ4Cditzqiqy3+3YgdYd3cYWJ
	 XwYsQjr1ibDUBhFc/B+pI2h/eiQZw9lhauA3JbhAICAz9z09JSDriPyv2SlPSIFNCp
	 ZtE0bVcQP8f2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA95BC4345F
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 04:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171436634280.16273.8525191749038163729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c8fcb9e45cace5589dbc82112d090c80bbff72a4e9dd9c2d95858bd0627719d
Date: Mon, 29 Apr 2024 04:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714366342
