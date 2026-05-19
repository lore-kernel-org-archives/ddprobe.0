Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53E593B775E
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 20:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779220834; cv=none; b=Pe2LJhWJkf/TwB2C0G0Pr09exK51cc1p/f6JI3e3N/USqE89aUO3+JvQQCqzIDjx4lYCC3zlEYMuhSTsYNK7tIxGljeujaKA9CtgawzGwBxfkLTBXV+2XDrqoVUstftRTBU8ZpQ+Pk2fevvk8N4qxuvwVrnj8Toi3sGVcMl7zYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779220834; c=relaxed/simple;
	bh=KSCwz16YsOsx3D4tMdU1zSjCV7i2ysV098nLxlll81s=;
	h=To:Subject:From:Message-Id:Date; b=pqNydg9OgZEh6ycQJcjrCFyZH5Gvme1iLIbvSQny8bQP4OJYH0/AvhhDFXKIAICI6NYvLIwKryAynGgc/DkDx+Wa09HcyiPNBurbpplSiVbJkPxdPVkaix4C4cemotgAgrvhMdQ6DX+DqRZS7zzL6Mrgq4vMFl4Ol5swjo9qdgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tI903vSP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tI903vSP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8638C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779220833;
	bh=KSCwz16YsOsx3D4tMdU1zSjCV7i2ysV098nLxlll81s=;
	h=To:Subject:From:Date:From;
	b=tI903vSPxRYWQQY1Swshz4ab2IisIOoCQXC5o5V0Lw58lwtsski3wQ2cqEt0dxz4d
	 cpcJo46s+99ualA35RBiqNkqQM3UypexccyXdDZycCK7weR+0mQNQF/eljCKzSnOwB
	 BTQ4d5rIMnZwQUjOmWEUXuOidddtSstUbT5oP1qL7/F7PSjnlM9BjAayu1K1FnniD8
	 vMkfE240Huyc/hBaijeswHLUjB9NwC3u4Da7r6PvsCR71qT5CmgMGPWX+Hq5Af4kHO
	 ySQwgZ5IgDqE0IoD0Qsit35dZVJBuRfPomESLP5+5CTBID9zifknIfhU+HEQMzYszn
	 EIekBlRBqWyqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE58BCD4F54
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177922083368.8339.18176286540911462509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d8356393eb33d40a91a5fec754e7e19a3e4eda7fa9341791c30fc4a53fe8339
Date: Tue, 19 May 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779220833
