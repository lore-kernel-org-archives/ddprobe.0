Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D67C81DA52
	for <ddprobe@lists.linux.dev>; Wed, 21 Feb 2024 10:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708511896; cv=none; b=Gcl3PqGWRc5N3lIVvkB972IQN0BY/5QrtnE2LaDhsRWTszlnwgw/1rTtb7FPVTdzKByUTvN+vvH34mDRPOGk1/tdRFsRyTNvC2CT4Vcvoc6CcYICZp4cOOE4GfUfgYynM9GklZWI8wS+V5/Q30GPgF+MEaqmxYliUviyHHW0F8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708511896; c=relaxed/simple;
	bh=2lf+ISEsBI+Wiv0OiWsyE4PVGsGYNuFcpMwX4liRA4E=;
	h=To:Subject:From:Message-Id:Date; b=efy3bKQ6ZTNPS7Ct07okDlMgysHq+yIXkotSzgCbdrt21PXU+H/CldaXD4eb8FMT7tP7OewGELAqlAfrsoUbQDVVyTg4Voop5OYrOrBDQtczKqhY0+x4xt5y3TJmMR6TeV1tm8WH/voG9SxatKsKqBFkAtyyYulGtKXzEJQsia0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=laA2qMeD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="laA2qMeD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A4A3C433C7
	for <ddprobe@lists.linux.dev>; Wed, 21 Feb 2024 10:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708511896;
	bh=2lf+ISEsBI+Wiv0OiWsyE4PVGsGYNuFcpMwX4liRA4E=;
	h=To:Subject:From:Date:From;
	b=laA2qMeDGm9siHd4ogvsHwnCakfybkysgPRwcLj2kXnosVdRCa1x9wFlMPrLz39Pp
	 uKg6iP0/3IB/LFzIDg9eF4XKUiZorVFsBs/0wezj03jIz482cvMEvhcVlTp6b8EI+d
	 HhjUPPzdjtOYjeoFgnji6i3P47clyzffqP+evM3CMOkNT53ZIhmKu+koCnVO/+PQ0Q
	 qf6RpkVjHcw/izo3J2khV532iCwztt4ZFhEsCPiKfqd4PLJW+jtCLF51n9bIfTttwu
	 BJhHaNsnlrztps5kIsQCYjcQeUHJ5Rrrd8rGwOPsnx/W6aK1MxOQf/6GbTRLjsnkMp
	 nyXr8hvoAHeaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62B18C48BF6
	for <ddprobe@lists.linux.dev>; Wed, 21 Feb 2024 10:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170851189639.8016.8004425676770274535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39a4f3e0a5e9af6d4d046aad0577bedc2cd708a8f124cf21d55d3c1e2201ac72
Date: Wed, 21 Feb 2024 10:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708511896
