Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19BED2046BA
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 16:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773506694; cv=none; b=tEWd2Bl4OuoEkeajAerldzHdkJaStJY2CGgPSnxOnZcBByXaE2t3XnomqPriQyKOpOjuZKiYkb8nXYUyZVPHwbFrgOSEBoRMtsvCE/zOePKwVl0E+E6LSseIq3ALkHmBX5exo0xnm5SiMymnnns50cmddvzKxEcfdsxd9icr588=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773506694; c=relaxed/simple;
	bh=EfHJNY6EYQ03jD0ZMXj6KT2bs0quljklbF7urYcCWVw=;
	h=To:Subject:From:Message-Id:Date; b=L8yB86jqafNkIZGPPXKVI0xAaYRrgGF2b+n7ID0u48SxedwN+7VtTtyvdrelaXN+NmIuMoxoPV1oJ8SbpIBKRcFZH9Lu2h/uuYI+/2ZtNYhM0TWCmnIcaUlO5JAltDahO+Hi2izsVMX22/9JpaJkFl233t07Qp8qPNTi74prQAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bCeKdc+m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bCeKdc+m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0092C116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 16:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773506693;
	bh=EfHJNY6EYQ03jD0ZMXj6KT2bs0quljklbF7urYcCWVw=;
	h=To:Subject:From:Date:From;
	b=bCeKdc+m3ZTufg+erRn5HeGMl7LrKN7jQe2cv4xCK0YXCxV2ElUe0ibTzIFp9m38W
	 1AakIJwnMnwbR4ijzpqVlUivPU2W46b54Dy3tkPERfeaQwTP1UrV1KICdyhRai4TRw
	 PvYQan5K/IOuQLCJhrx+bnG/OnOkPigNQnnEBBiZVGioLBQZOvZp72Ca5eix2AjpIV
	 yWux5yGJuNSGrGYIBvz+8beloEDRq3nVM4+eQNr823vIJ7EpiufdLdMpCuKsAyEHaE
	 ccz5PY+3AuSDDFlQKv29AUYU5uBKA3b1B2bhU+kZUXCI+hn0PoI+699VPr4LmO4CtG
	 9N39jDRk1HgQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9090710706E2
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 16:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177350669358.14237.3320562675416508839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74cbe6108e66d301a4eaa270f0cdc865ac830f792410b18c684d83a32c1b482f
Date: Sat, 14 Mar 2026 16:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773506693
