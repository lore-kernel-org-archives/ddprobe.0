Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A50D17FE
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 03:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735875354; cv=none; b=cIn/Zo2NVgTqt3EvbtbFqCrFnVlHFg6uorqpZ6YBGDWx+Hh0ra8P4iaS5kLiLmZRUSdtOAMYL61MiCzPHPfq6ioM29P12WoRyukFIg1RHhNztNjeUZgayLG8/XmGqQxKr2vXIpWYtUR6qq1UoUiz8EsYrJmPpsemg9huYjLTFgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735875354; c=relaxed/simple;
	bh=dUfQz2jU00yqlbC1RVMH7UXqnM9ySCAA2Qel2VV+IYo=;
	h=To:Subject:From:Message-Id:Date; b=nl2eC0G0bj//AmQZJE719Qa56UxU9TjXlGlpII8O46GbUz7UMMJdyu2W3v+THxIS8LQdu1HAsA1qVwk34Deaq5xhQwFqyCRL96cSOYE8s0r1hw8LgFapI6nobjZJr3IRfXxITRNCGMoBnRWqtnecBBQl4wzts5LaS+i7W71xZ5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gp9ghF9e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gp9ghF9e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3D7DC4CECE
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 03:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735875353;
	bh=dUfQz2jU00yqlbC1RVMH7UXqnM9ySCAA2Qel2VV+IYo=;
	h=To:Subject:From:Date:From;
	b=Gp9ghF9eYRmo3UJdFQvz066YLO0NjKXVisXU7GiV7Zsb531u4DQkWde18YKgXol7I
	 VF9sCCwV/8nYzcPvSWwnZR0tlOz45WeJlEl+48NccpV5YH2Ow8l/QCLGPZP+4SiX0S
	 ILKPTkzvDwpMNPreAfu27/tKorUBfDroEZF7pjUMhx5UAhSX3CRz62bCP4x/rJHBSK
	 P0SxUPnbwFop6YWHlghB34YLgdaagVG3YoNKNdafxNdmB2WoG95YuSCQa2bZP79fs1
	 rkK6UotvGURIaaXFrkeki0DLrKTINzKkGdMNLiDKooPPoSWskLsGMIgu4qkso1PlNd
	 76zltsUA2gwzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9413AE77188
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 03:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173587535359.8832.374661815928535480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f7b034cb130d529a8af4b22f027ee1d930bb18092f992727d1a9af852b18b25
Date: Fri, 03 Jan 2025 03:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735875353
