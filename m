Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29F031EA87
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726953954; cv=none; b=d7xBKhz9HyjFv0ZNFpSY3SJif1C51aTfVXPhDsB0gZMnZ9rkpZPwS7XeRUDUE/GhezA+k4WhFvS3ffTZMD6rrP0U+akSJE98oYy+pr50bxhVSQkMAa1JL2yZLcnT6OjBAI9L8LuaTn8QvbJNpkO4rRRkO48femaj7BtRBRaWbEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726953954; c=relaxed/simple;
	bh=MrlAgeZi0K8lA+VRbl+BlQveai0h48AA+ToO5XEZzJc=;
	h=To:Subject:From:Message-Id:Date; b=QekEbsTc214nUW3D8XaScOEXr2oekAUukz6ynpHF6S859Cd66WkhQw/6PVq1Oj6bAt5/MD3nFj8ucrsUooSJXyUAPCxA+06od0sGTkOKRccgS3T/wH3ZXnU+xBW3LiluQDyDnXa8nk4F/K8I6EDoJmBgVJH0QD18YfSM2gi69PY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mg2ERkIV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mg2ERkIV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5625C4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726953953;
	bh=MrlAgeZi0K8lA+VRbl+BlQveai0h48AA+ToO5XEZzJc=;
	h=To:Subject:From:Date:From;
	b=mg2ERkIVB9TWKo6zjJItMdvPwDE8nbETWwE7c5gjzqJRe1Bv/YXXSYeF+13Cxa+0l
	 RJoRgRs7VlyxvnbbOxSkfZ85zMn6McUnq8ts5/gCi6VILFZ4WgaXQ3TTOUI+oFUUN1
	 kAUHk5EwDCmM5JRVNqfkT67q0q7rp44mQ28+6AD+3z5FwqL0M+k/cUxgHFRuUs3Dw5
	 0+vdlJemkj4f5Cpb9IrxYr5KuHXuu4TnmPqNAm3CWHPqdrNoOfzADnF/fAg9s5uRG1
	 XaYU+eNO54rFWHdp0ZNU8SRUAijRfwnQgEQdkolGX4RdedzYhcqt4EPDeNI85CdZJX
	 +fUaa38xtnysA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F4BCF9C64
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172695395357.30531.13477956949975386468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 253fa28edd98a9529a30834b7dea9235c9d3c9e68b0d6038b1d4d7e14e15efcc
Date: Sat, 21 Sep 2024 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726953953
