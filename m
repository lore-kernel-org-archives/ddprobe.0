Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58C3810E0
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 08:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720860023; cv=none; b=bMb4EVim1CMQaNRgwNJg9RZWXoAgELJUTN8DXvfx9KVj10jmnZ3Kua33PvpjEgKpmoR5JIxK2+eQFSf6iYWk2KNg+/92h49ogndlh2ZbJuz4EP6jLFkPbJpZofLupwg9k4BgkRwo8WMzS98a5QLeXHdHBasgH6BYslJq+2Wde9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720860023; c=relaxed/simple;
	bh=JkqbE9ZcqsJLMbk/ElJ52tRVoTig6cX12PsXnaaNY4s=;
	h=To:Subject:From:Message-Id:Date; b=E/J9Ffa4utYc3lcAGZ4uK+y3nnOL3VvlVe87adAsRKQnqXW30Z79/yIs9QUQ+aPZT9XRhUzNeMuIxH/P4XDJrrLRORJC8tfQShvMRBDi8kdlcWxGwdc/LKopVllaeHU29690oS63vpL5wLgZkg+S0xbRZWYqjw+ZHLfiLgExC0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RFNZ6kLl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RFNZ6kLl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5A62C32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 08:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720860022;
	bh=JkqbE9ZcqsJLMbk/ElJ52tRVoTig6cX12PsXnaaNY4s=;
	h=To:Subject:From:Date:From;
	b=RFNZ6kLl/wIfLRxKTmQBLMKn/Pudw5E2/3OTWDZjdlGLWCD3ECNFAuOQTn+LMg44G
	 guO6IJXJRiA0l6etCe4Jjc6uyv5FIsP06i/CSKtsqsvOXdvYZZYWUbND/BcZRUmbpk
	 OquUrl1Y16Dq5zaS1M+ZBcyd+ichxO53bv9cX4O5Jf2/lFL5ZlYYLEYABj3RpyBvqD
	 whr7R5Tdo4sLe0L3sfTe92w9z69yZefdyNXR2BrHi03A3wlW2VjNn9b/lkD9jFshsL
	 XxuiRRV4v8sYhbfd9X15de3xvk6m/qDSinMslaLcxyXpbujYF0a7cyiUt/rR8QTopk
	 2zi6T1MZZMLgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF501C3DA42
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 08:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172086002280.26253.586727674060369791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c72f040e2e5b6307c1caaf6dc540670f2d2d3b2b86cc1e3ba333a2037717d575
Date: Sat, 13 Jul 2024 08:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720860022
