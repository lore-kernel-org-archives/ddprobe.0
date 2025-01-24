Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4632710FD
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737702954; cv=none; b=TVISz4rpe0PWRkwpXkJKMIaK/LtY3AGVfgLaDnAfSy5ZVNAiHsx7aHQxUYSovkAK+aMgcO74psjURkfrT9nIdLTBYlZMSeYgCsC1gG3L1nwk51jqVjXLJBDFU2y2Z4p1c81BWPL3d1hUSmbDG7Gi8I9aV7gLb/qzmKiq4oAaKjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737702954; c=relaxed/simple;
	bh=zOeIPsJcXDTtviR/4D9Yjrm4AbeRT3FgqrmAmaPVig4=;
	h=To:Subject:From:Message-Id:Date; b=qP6iOcxHupf1mGGuldpxetOOMBLs3ziE/LP9A0b1M32oBRcnkhpG9l18EImVcEP2LrqDwEQ37I7dQlm5bbL71jT/ptxiWbH/oeY0JAOVvrkwVJhVY7ipyrRCWbO7DwJ/P8p2eoSTelbE3dzYVQN3eKearQ3qUsxDQPDB+WNZLB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WH7sgBjI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WH7sgBjI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8224C4CED2
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737702953;
	bh=zOeIPsJcXDTtviR/4D9Yjrm4AbeRT3FgqrmAmaPVig4=;
	h=To:Subject:From:Date:From;
	b=WH7sgBjIQmLPQzDEdp8T+flO5aBd0cVYfu9ctPPLzoDcbDtu4yHCOG9yFHwPdIBZh
	 1u0FRRydwbexQjLP5QewWu52qAml+/cLd9xwh04m3g2sS0Bo7ZzAL6bqxV68tbTa/s
	 xr7tGhj8vbkl+jnN3jKC6k4eNbYY0EifMItCKREveBAf0t05+dmSw/hRjeKObwPLKQ
	 QMRWJiqUyztUkZqQuhMn/itKSRG8oc8Pm2fgW1MwUo4JjlXo94ISF/R7FIKYqdQMa9
	 9pB4PQbkPX7z/7YEj3mIMXAlbPVMq6VO7yLWRyEZ56b8SD/CFeRH48uR4LWh2mWweU
	 UDF7IdcoKcK+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9279CC02181
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173770295359.27360.12043844788653103571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 249c351394181142df8f37c7f95a62cd37e8369ca99e98ef09f0c8474562b0f7
Date: Fri, 24 Jan 2025 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737702953
