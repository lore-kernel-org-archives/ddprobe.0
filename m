Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48AFB34041B
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 17:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780768474; cv=none; b=b3CrNmuf9tRCyIRRKtcsspsLjmyK48LhpYX+fWfshOxjFjzVhQgO4wo7AA01PM9Hljief8/RPfzVVN9kd9ob6OBG6cxUSYQcDEh7RyV7+nWp7xjm09+5fVlS4uKNDxd4ngLUxQ999Ko050ziibo10Gk9tf6YBmpvSBUr06qZyG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780768474; c=relaxed/simple;
	bh=4pB+wE5EPeWIYRBiUAL42Uh2B2oLk859St4TZhfn2io=;
	h=To:Subject:From:Message-Id:Date; b=meWsnld8rjRelYKxFBW29LL05SveJYEyHu5yFGgXGtmKJKstO0pdXnsv7EnnoNhsmdXUM6SGpGPTUP58+ZFE8mRwPBTeXwyTBtU0ue4gfBFWmUbnhM73dmw8D6Ml+FIdjC09WtKZeiNLWyLPxvPAlXGag9B/SX+li949R2+J7eE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FIazWtPi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FIazWtPi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8E66C2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 17:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780768473;
	bh=4pB+wE5EPeWIYRBiUAL42Uh2B2oLk859St4TZhfn2io=;
	h=To:Subject:From:Date:From;
	b=FIazWtPiiCZTpzT1cGLwDjxrVS1SsluHGqvmuPRvJ8FDONqVCIb918UarK45J4Zw5
	 EGF/fMhk6vIfELunjMqn0OKB5TvN+pX6vJ9vZBfPXp1HjmgdJK0vG9Umi9Rove2K98
	 tuUJWU3ixw4AnTIXu3a2AsM6IFIufu9tzRD+N4udJxBXgOFb+K9ArTIFroMgHW8X2G
	 slJL12/Z5KUlmh0NFOKQEB5o4rpYEzbFrhccEj6fPHiR3oBb7IQk0YecuU1mD/JyCL
	 04Hbqqp8eWWPCUx/cMiiQ9Un+e4Bu53yXr4CYiWP98HJsPxvcMqUMnr9I53q17HlZT
	 f6TYPMDZurSTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0DC2CD8C8E
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 17:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178076847370.14740.4583836368443190667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ddcd400f89efa7952dff0b6fce8f3d5b139873d6e4fc7034a1bacf60b8d3abb
Date: Sat, 06 Jun 2026 17:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780768473
