Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BD1F22EE3
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 14:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716129743; cv=none; b=nXYQqdGdX17GEe8CwQjsFFe3jJxdp08CPb502Yx5lqrPlAaNkJoFf9s9DJVuzawgAjP5JuNVgwLhfgIlWHLZaABPDrvi5R2Tv6EO9GjBS6wWkbKVXne7XE+O9qzE+js+NnjCXrod8NYc98WEjwRjeNULmpwuQhcrFZnE9CfxRXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716129743; c=relaxed/simple;
	bh=x4ZNiAGoxgM7NpQvmdY+HiIS3JghCx6UCu6aLSlm4QY=;
	h=To:Subject:From:Message-Id:Date; b=O5udr2/JbWQRrrVDAoWBsiw4lY8sNd+FAwXuQZC8ANlbJdqD/PpFhyYmHGhsG6VjPzKjTJZvOoCRwQvR4O/nrLwgMDTlllza3xdMCXx8tMn4gf2WPL1PDIvdPmY14mtG36qX8xhB2n7/NfeCy2H885AKdF5j9At9qLCTEvC5X50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ht0Z1V+s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ht0Z1V+s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB903C32781
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 14:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716129743;
	bh=x4ZNiAGoxgM7NpQvmdY+HiIS3JghCx6UCu6aLSlm4QY=;
	h=To:Subject:From:Date:From;
	b=ht0Z1V+s/a0CHreFoh+HuXRQW6WgW1PfaeCPCQFRhxGA7lAJgq2oVry7B8uxskyye
	 BD2W7BfJ7Q93pg7ozuiArCEPQy8n9YO7N1VrWlCvcqhedipQnMO3ODWFK3HndZTwF7
	 XekRmXYzfaYA6fAn8oboYNBiFeB4BWqPT0IC4nREPKvWvyw81TxFIKbyjHvKQgHdO9
	 3OVFvth9MbJTer2LCtYBYpmi/cc72G2ZCp+69ethNLPhEmejVUVmRjiBsNiJ7Jng6R
	 EoZvJ07VzZBMP+B8/kGDJ56y+GMg5QjtjioHsMJG9ycrPhkF+4AhKHBWN6sROCrkAR
	 svDEJDg/wqWBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4622C25B75
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 14:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171612974280.12066.4875461225587881793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abda1b17e29ee62043181cbf8c414a248c77cf7dc706acb1b44465662027d213
Date: Sun, 19 May 2024 14:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716129742
