Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 280182E36FA
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754200194; cv=none; b=hMTa7aAMdig7+s8PwANIvTxmjV9oxi3faBHjH72shNIj/1yWQAe418ZVKevZCMH3BwyH3YM3AshqPHL2WgHh9szzAGS42ISbB6J5TqP9HgtdWRVAzJVK3b9WsxhWY9DYfN71tU7JwyO/VG76bxWrxHwDTnNQuBQZYzckTRxG1qs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754200194; c=relaxed/simple;
	bh=7Do+queZS3gS/2EM8NJkjm25vQl0KasJA03+obwyYnc=;
	h=To:Subject:From:Message-Id:Date; b=FS/dbiTSkADUOxxZWkDA8ObJfhlTUi10cu5y2go005R9x1erVDtrE4nPTy/0tL3gwo0rrzn+Sc6NPG7ArPOaDp1ud7zq0b44ChjnBunWmVVyep/S5Flo3mUoetrG3ZM6XpW5MAvemFUYTULIH3u+hUhr8TWQSCUBKH8+lpgD9yg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vA3oAy1m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vA3oAy1m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5455C4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754200193;
	bh=7Do+queZS3gS/2EM8NJkjm25vQl0KasJA03+obwyYnc=;
	h=To:Subject:From:Date:From;
	b=vA3oAy1mhOPK5+nSuHVKNrZ6qaD4CFtNtbY+LiBFIjkZnu7Wr3MKfFF3lCbk6r1KG
	 q9EuUM+bkAmoCr+9iegkM95apughQImHMHDuo3dBaMP0fJF+YLP+Z6lK977gCLS377
	 jjLZ1CnLKCAnq0AOBzK+FgR0xdn/TMwgEjKgDOyr/7ky5uBXUjVumJTJ+OQBv4OhR0
	 /sxATJ9NpJyN58pIZkCvWybWe47pTqWmcHDdWCQzcNV43VgosHZhbVUfk59fShWlna
	 qGpFLPnd/mz9/ue3tUS/FUTvmfG+X12RHVmMPmZO/92YWMvf63hI4vY1SpYpqJzHBh
	 mcf/hr96pXvjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F43C87FCA
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175420019357.29318.14966436431739845144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d25c1d4e5744cafd451e79395dd236034f99252c8b91372af584335534716e3e
Date: Sun, 03 Aug 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754200193
