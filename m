Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13955369962
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 10:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765968834; cv=none; b=IeCeyWenbJPf+tNj3YMsO8edaQL2fygIv/IGWEe7sBTMB8ZJoEVbHpvgssPaGEXty0cJ9wIFY7nRcRIAZwmh9OAa1hEGfFr4bhrC8zSjEgz/zsONUaMJE7r6F1G9t9f5n09gO4n034+wmFW0MVbHURhxIbfROM7plB6/ZmUBM2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765968834; c=relaxed/simple;
	bh=mUXslDa2UBhp7TAqkSY/kwDPor988S/4Ehirv5P3fv4=;
	h=To:Subject:From:Message-Id:Date; b=ML10J1hc1DDA02ezAxG4XAFQne6FxXX2vyP8wsDLpBvlFL4+/xeCBg178K79mmsL9eZ+BJ1Q+UfmzlrIRmZMuDbD6ymXEm+HJ85OyMCYdFU9oQ/rHoaexB7gkhf9reTEiVcTX+NKTKVjplcj9WEhD6WHervE33/WWoxw4nLsyTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h1WFXZV6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h1WFXZV6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DA5C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 10:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765968833;
	bh=mUXslDa2UBhp7TAqkSY/kwDPor988S/4Ehirv5P3fv4=;
	h=To:Subject:From:Date:From;
	b=h1WFXZV6AWsgFF4S7EwD/cVFJrLEMNYpbeuq6rgZ9FEzNjnF2FdzMnf8I2wApRa4j
	 sPdcruhBWyP8E6Bf3RzLDg2gwf2fODsOr6Mh0wLLp/F0mmdGwD2geH099M7S59eK75
	 jrDD6bN4a7odrNBei2pMcW8hx3fFz3agrt6i3NVNWFdNrfYkDwP7xFakLMmTkFgaFB
	 XKC9PKeh4C3YPP2LCs/BgCd1am9MDgKwLNULBDgU1ezHolKub0lip8RvyGLYMF2/Ut
	 SMBO/hmGpEA6GYp1NMCs+N0WcXYUtI2zv8Zv0SPdvgwr0nbn19kDyNWvMp2HOx/CVv
	 iIxXCRykYq+iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90142D6554C
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 10:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176596883358.9156.9052235924019474319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00e4357d5581e456136312d501ab6b00d9c991fb694e75dd7b7dac559915cc32
Date: Wed, 17 Dec 2025 10:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765968833
