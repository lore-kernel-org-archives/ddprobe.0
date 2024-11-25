Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6BBD2500D2
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732550753; cv=none; b=aWUXQK1szhcBRFSiUCEQlcLbh2fISrTFozsVlWXwZZF2WdrsB+KwxZ1hXSgkUuJWxrmwiNSTqshs03yo9dM122Vme56zDFvUmwgJjzN7mFv1Uiw/v4hjLGQy6vxc+vKxvwOxqjQyP9lveUd4c/PZzAvmSc18BOhn+wU4sTLAC0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732550753; c=relaxed/simple;
	bh=9bgwi1K2eAU2eHkrVY5McKo81jezvadG9kL03vss5d4=;
	h=To:Subject:From:Message-Id:Date; b=A/q9MIp/MAs/Y2VcPCnmpKLY1BWeSjuGFHrN8ycIG3sTlNfGuqO+LlZ6qdkNNkKixLuhO08HQOwl9v5yqFPdlf+vCdpbnujEeC/5BcmE5vNoWC2El4XgSMLahI4oAjW75rJTyOvNa3Cg9r+PAP2Fyk0LfqBcdh+sdBco1Jkk6/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k3V4EFTk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k3V4EFTk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E5F4C4CECE
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732550753;
	bh=9bgwi1K2eAU2eHkrVY5McKo81jezvadG9kL03vss5d4=;
	h=To:Subject:From:Date:From;
	b=k3V4EFTk84ZRGjcKdrnSNY9WH1dG1SJbsqG5BYxCo4x9xm4aBTGbzgHwFyPpKD7aw
	 cwD7wny6byBEvzsef1eu5LDpNtcwkeuhIKkROM59MDh08gSUrw6l09apT7a0YSkzYG
	 /lDN6E29MUvEs9phv0DxUzpA3zkMAJPio1+Nn0IoBpksJ9JE+aWccBuILcpCz2myAz
	 e59mMtRqvgc611EZbq5gvWf4IFeQDX3ahlOzCEyE39S1UcAiJrFdoZQ1IhOYpbwVTX
	 68PdZPVTZyP2r5MTWFthBg4EoC/skUQGixQcbnVRaow0mOPjQo2VNYO96ryp5AFwr+
	 jjx3lnEwIlQzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93316D58D5F
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173255075359.6939.9911310457101720464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e2692da64792dcc7e095421ca25e45add75e7ff406a34333af4dcc4b90f3290
Date: Mon, 25 Nov 2024 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732550753
