Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BC3922E3F0
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 02:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791511834; cv=none; b=WTRWBGxhwwAR6xX6qzWVkfgxNrfiVPb+YaMhA9vYYldjX4pj1eOI7ucPh/l8fK0TmREIMYyulimF+FDwrmiIesEav16CRkqYStRfPzMZTPMImrGqixEd+Kx9ZhWOTLndy9ZqFNtnH9z8e5WFeTCgNE1ZDvXXMLEdAHdyRNQ2uRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791511834; c=relaxed/simple;
	bh=KD4GAnOZAdpSe/hvNSoZg7XHmldte/8sG1ITVpJgfvY=;
	h=To:Subject:From:Message-Id:Date; b=eeLZxgsIwCSAI6lZfpg4AjYyZEbFSKF2G/1f99ZHe5tfsS2Vv03hk5+raWX7QJomdk/7DQpJH8FPibDvPb2BbXkmjbj5Z8ygPOsGdjaQkaWdEPb4MW0D4UHj0JkoiRtrThlsY1bMvVkBIiL4Tb35eJgdCRnuty2gKMPCnql/aVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dN0ZrzNe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dN0ZrzNe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D20CEC2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791511833;
	bh=KD4GAnOZAdpSe/hvNSoZg7XHmldte/8sG1ITVpJgfvY=;
	h=To:Subject:From:Date:From;
	b=dN0ZrzNeuZtkzyNiGqXhJCcJWY+OjTtRrjMC4khIwrhVfyZ433keSODwRBrWeFNEA
	 apC9wSGN+guCLEfSEpKT+XpQEQrpOxQQ4li1gtS3WMuJumBqvyNgtzIj8SIAuPWENT
	 Lz4AVV2pInL/zxQHZYshHJHxDJ92kwfIr1TaLkdkP6zb+nDiBP8CdO7VJZWPM5+L+p
	 2P1AJWKbWvPoPHTN/QKAukYi3WoAmFZgVzRbvBtV4jpRHVnxt9zfTTizg/mPQPg06V
	 EwO+pfhzaSpnLRjlcfEvrPtEW0uKt2uQUWEKMaCnOO5xAUKc6BVWCudx6jLCiga0CV
	 zd7GPUA5eZUoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFA91CA6015
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179151183368.18927.7071101004513196359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d93beead2a02399de38ca7f0e607df5613c97afde633483834e0e03f09d30f9f
Date: Fri, 09 Oct 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791511833
