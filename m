Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49FF0313E38
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 01:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784599114; cv=none; b=OOY3OQPA+v6b0oA3lSCJJPZFse+0gLAvWXaEJ2lukJf8cSLlVr8VEvPYDfyoy4dFosvwLoT5wXj4tDLSsS0nqcjvj6AolhCnTuc/ehStpPcFbswXLov3piF7fR4do9u4hn7SmalvlMRFfC8pSSGi/MGIWIzds7V+bKKbQB9fuEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784599114; c=relaxed/simple;
	bh=D3Ph+0cVelBBZlcJOZx8kfqBkrjpFJG0Glkt7Xqo5hg=;
	h=To:Subject:From:Message-Id:Date; b=dq+c34ezKxEfg/fFWQaquiJqSha3M0A7X0t9lc3JRYd8crnlBi5HRJkZxATMlRspDJs17E4omy97iIT+VPCEht38BEkoUdjvG5gxy/kmlm4d31/zsECCmB0S8+ur7eSeiXd0UhrSx4Dmmg8dWJqB6SJxNcf+0A1zSqbuPBijY8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o2bIDXU/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o2bIDXU/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8673C2BCC9
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 01:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784599113;
	bh=D3Ph+0cVelBBZlcJOZx8kfqBkrjpFJG0Glkt7Xqo5hg=;
	h=To:Subject:From:Date:From;
	b=o2bIDXU/xjx2YawyVmHvGycj1s9sELBRAeM1K4wxXN6f4xLTe5P9mW0zFPAnDBcMY
	 ymPJM6XgIRXMSEZoW3ZbHpj77/i6Xtn8bSiUL1QOM7DP8TELRPVpeNYEPIS4nDmtsU
	 SHfPJCl15nPdIynO/pVk3v/ZOK7XDnznVyZtxbKhZB+BQEKhpRNwGGixfOrOM4wNVF
	 ITflPrzctuk9Wn9BYEJ5Go921stmXoezuGy42rvfKys6+dCf34n9f0gYiKkCnnSDRq
	 HkYkym+MTERRjryxMg91Wt7Zmq484tTVqq4Ts3FnOSJWM2ByFHXhPDiFuLFG/dFJLL
	 xqJJhzcPoH1cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B10C1C44515
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 01:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178459911371.17114.701777556807926670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3944a738e148b5d5266b0a674e59bc1e3a1f4a7665066767b40a48d40dd6f82d
Date: Tue, 21 Jul 2026 01:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784599113
