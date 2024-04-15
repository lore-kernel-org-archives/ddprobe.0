Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37855156F41
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 22:09:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713218963; cv=none; b=pXrRNs7bfgFrnVYSGfQjq02mWezBaJJwJAt+FT7AyfYANbp2JizJjVP8BIidT2tj8h+YwZazJBPbzTPxKwbcGzbLIUNCYhrvy9jUCP8Ut/6Mzbws8cuBGF4MIo7joIQ8/d16XXqBba8GlwOFYTmEXfeHodTurlmP+jginYC8S1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713218963; c=relaxed/simple;
	bh=gS8XnbFjiugqCy/Prfnxs2UbX5lWwONzf6kjEaqMZmI=;
	h=To:Subject:From:Message-Id:Date; b=g0uW2/XewFYXuVLE/zP+YplBBhJgycgYKxNrc3uY+25ZhUrQLKh2e4TmRNuIF4R8+6KrDIMPRf3rKJQgjYJ/k9Eoynj8lVnr0EnYKEkoYjvwf11nx//sYOEP6AZ3qGHgVzIQ19jmxtbntDE3oGURgx7IUxS0ivh1MOKgZTy+yu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=faQxBOPk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="faQxBOPk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C78DCC2BD11
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 22:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713218962;
	bh=gS8XnbFjiugqCy/Prfnxs2UbX5lWwONzf6kjEaqMZmI=;
	h=To:Subject:From:Date:From;
	b=faQxBOPkie4BGg0JgCl6OCzJ8grFFv27ZCSlLmUZeCKoOB41tO+VBLJiaurEHjrI3
	 4jmuOVrWH7a0YSTbHqMzC3PnopKYXgkmZumsKUc3IpdwNLGdlPfwQKHk0qcQHOldtG
	 8/nkQkI9Wup2NJlA0r8ClWTWTJGfFVmPGNDdGKdtf2mp/vZ9awEYmXQ3wCzb3R0Cbg
	 m2JguBgWQ7yhOYQ6QMWxmRQnEuOnd4UrcjR7EAvemuTyMLaKuGOaeTMrPPkTIB0H8Z
	 4qnzf/FzaMqrVzQLEC9uihWlzSQbO5YKA318PEAkXtw+HYqGtE/vyELRbi/l0xywWo
	 Yn3oo6hpe1AiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA942C4345F
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 22:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171321896275.1714.13267261919093759325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc39b84a7fd966755a035b51cf2f7d92aef83441c543fafa27c357736a15ba98
Date: Mon, 15 Apr 2024 22:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713218962
