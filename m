Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3314642EEC7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 10:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781606794; cv=none; b=bY3bN+9ie8Ee2Y0qBAjGOr+Ei8WHZ+6LFnZ8pf03xAHiHxeytsOxjPZtrw4GpRM02SBh8jVDb65DwlqlqcVeNMryjssWY9xIY/PxSfrpmmpmn2oJJEc/EIzAIB8rkvDWv3aIc0Zq5QrnMm+hg7G+t8LedHGGI5i5amSuH1y42q0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781606794; c=relaxed/simple;
	bh=3TVAS132q1EIlCQzR3WdGG2HjyUffk7w6a0D8jHI7hg=;
	h=To:Subject:From:Message-Id:Date; b=skuvxw/oacfaXdS55NsEfJf+CsoSQfqslBmhr8Py4rl1Fwf2pKkHj3HOdg8IcPBTq7MsfMwITFYkXy6SVDcKM47bwnxqsbW3hv5PZiWe9ifw4CyztULjS7O3sQu+41eiYbdHCdHsP3BCAaeWNfCt14IJzQ2dIg0TBDJv1ONS7Pg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MEbdFiaZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MEbdFiaZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9B8AC2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 10:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781606793;
	bh=3TVAS132q1EIlCQzR3WdGG2HjyUffk7w6a0D8jHI7hg=;
	h=To:Subject:From:Date:From;
	b=MEbdFiaZpyxqqWl8uaiPX0XXwsV5Z2TNGFzbEzVki7BXaEeGCNt6iK19V+EeOTrUK
	 blnX3xUBf0cLnT6hSjek9JRTSeOw3aWdvzCPMHQIRG6L6I3DIXO8jxHhR8CgMZdrc+
	 D8TOvWb+xIif2PeLYF9hFay5WaXpkIry0lCOC5eUpYFFLFK+Ycr8YuzNBjLeBRn3mN
	 qF8zf2gFtxEFEwbhgGEWqt3rh3VoNdS4OAl3GWCEBmHcPDdDJI7zsBAse9qjeDXpgf
	 Ap8EWMP7XswH57BHNCehumVIMo/xHfBZmBM8oXaV0LMyHBbGB6dS2/PChbjHXUFJB1
	 kcqDVsHwSI+FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA43DCD98CF
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 10:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178160679368.22307.5868271748367335646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38bd75c31e9b89b6794980f33963e4845efabac049eb0439fe948e2b65cd94c5
Date: Tue, 16 Jun 2026 10:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781606793
