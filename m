Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B90E26F2AF
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 17:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774285494; cv=none; b=Y+QFMAPVQlnN6n8DIW9q3spBeatXL3pBNftW64Jo27eNmoqaG5UfAD2YUZvD9AhqySdeNFyeslBv1qKqI7HBADT/HyVoTujhIwsIPRhkkovKd4bfbTl5PJSev3h83r9HwqAtdV5SCcJRoVAsscbcphkAcmAqVE2C++p9zYXO/b0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774285494; c=relaxed/simple;
	bh=epPHL/2H56S9/ljp+QxpA3YnOWWL7zdbd18PGdr7WIc=;
	h=To:Subject:From:Message-Id:Date; b=eQtFEILt5qzvKP8GbxSeKhDIErVXcfJuLCK3++L4wl/VH/UzSc2u4PwmLXk/igrFhtsMMK+SlUjNr22Rs2vBE1QuqwQFAUTm0uXmKWG1XDhcb3R0yCtCfCGjtB5skj8WpYQzr/6iDv1knoKNtiuQl25emU5bluorIx/1DZT6DoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e5hW6+8A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e5hW6+8A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A364AC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 17:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774285493;
	bh=epPHL/2H56S9/ljp+QxpA3YnOWWL7zdbd18PGdr7WIc=;
	h=To:Subject:From:Date:From;
	b=e5hW6+8Aui25ye6LCJptbx9FZHrLUy1IO6EdnVhVMlqwIu+4uOTM7DsffUM2INgTJ
	 HWRP6pFbiOm1daE1RXdvkL0jJjqTO9+0teLlWus9UaO1aelH79IgTmmVKMIIy8yNgU
	 G4dXTGmZ0cRJ11iUj73uGBmsTRX1V3xNr6jT4Phe1L5BYg3sldoWROWIfNG0lpCIWM
	 5OoFM5AEDjEsl+RZU5RRZNY2hinWbpM6QbaciBO3z0nSJsiGzid3PnkmbhcH+YW79a
	 Cjmnt/qDeAYYnfcBqLvcpOT4sfIGsJPjgdZ68V4BqaqJyIjTfAuhD75B0wRBcuTL1Z
	 onHHn4lFIL+SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925BAF483C8
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 17:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177428549359.25172.4883685371463936007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6062c5e8438511112c5fbd0f52f5de7eb449871c0bb5f47138ebc3ef282ad329
Date: Mon, 23 Mar 2026 17:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774285493
