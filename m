Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31501146585
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755424794; cv=none; b=fhE0dd/PZj749EIvUAmsnDtK5rTWODHrqSiplc2C6vvyAmnGzMHwzGgGFJ4YixvWUFUWnIvSs6pMnIpe5p6xlnx3EajVOxe2ussfePDE7ohchqAksoQfseGJAQmzcBA0vIaUoKdptQ6T79fSNFpR9mtr3sWnA/e3svyasR1OvEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755424794; c=relaxed/simple;
	bh=0G6kykiNXUsj7fCHwl8udZ/S3OKkw0jVOyVH+kTAV94=;
	h=To:Subject:From:Message-Id:Date; b=giw0tNH4al4niVU7NWIOSeQTpF21FKdcgp+4yvqp85wtKH8XyTbW5A7ZWiPKEsHb3A9Z636cjFSMs6KFTbHvuTYBzAX92NnYVhP253j9Tvy7VfLHy8yX/370cQl7M/ug80SfQLV72DkNztQ2eU4OO56vEID6fTnSlFz/WmGp+yU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K870toCy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K870toCy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D4E8C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755424793;
	bh=0G6kykiNXUsj7fCHwl8udZ/S3OKkw0jVOyVH+kTAV94=;
	h=To:Subject:From:Date:From;
	b=K870toCyLSyHTYkQk0tqEoEZ6CtfGBPLDYg/a5Q5b3wgcJ+4ciTXJCits+/fSo729
	 r4BWB9xOdub6cOGEk+ZN1+IkZL+4/g/g7F1KE1PVZiEdd7fbtQL2GSVZKQeJz/lGO8
	 vuidc2KD1wICCrd3zbKIkAbYnzNgHM1SUFW5+Z7h8B4skr3JN7EcRS9Z6bS6rORz+d
	 67EM5ZKo3/PX69QphiuJ76fgyjQgkLyM2XTjc73+W6P0LEdH9qWvoISmWDpHXaMNJz
	 xPKHDG9wbBUcqXiLxIijE0d8bSTpYDszG+uH/kbfzraiguU8UgkyxBBhf9d0vTNObh
	 WTl7mvXemYshg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F328CA0EDC
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175542479357.7627.5038044602228079914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f585c44a846d65a4b8c4bf795fce133b5f31cc892d8aa87ee57d0588e84815c
Date: Sun, 17 Aug 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755424793
