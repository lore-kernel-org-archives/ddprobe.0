Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A6392FF669
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 00:51:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763427114; cv=none; b=oWjBUy4rvMgDzmPiPFgGBuukbpj9EErYmeYck/KrEGijmI9C5X8FvcIkRjvCAY+yWkbgRjowGwN6A80dFowtrM5AQvJw4Ms25Fag3uto1IKwOLbUXf5S4m/k8PPkmE8xylhVgdRwfrNoMtd2DVoghnQ4hu0YDcERurdp79dlCjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763427114; c=relaxed/simple;
	bh=d032xS0eXUT2sg0ZRaPWjoEL/v9cKZwaQp/DEMqYSDE=;
	h=To:Subject:From:Message-Id:Date; b=Wai9uTSu7LDCmmdYg+MhHB0NfnafwKYBIOx8K6PszeG2vukAsWdjThsp0skNTgCae+hTgmmvzXMc+vaPr0Set2HajgTfUwrE8m1PpZByGKx4xiez/p0/gZ3nVP2wdltZjTm7Iu03u9UJkh1wIhaxvF8BOJL9pMMiHgmm3X8SWpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XVjGE7p8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XVjGE7p8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8346C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 00:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763427113;
	bh=d032xS0eXUT2sg0ZRaPWjoEL/v9cKZwaQp/DEMqYSDE=;
	h=To:Subject:From:Date:From;
	b=XVjGE7p8PNFjexq6KRwHtH7v36xI8RdCudX+69OvbBDdOuaggqYQw+IfMfQEzDIY7
	 jBtpP4/TiWeHHpJvVxUe/wrgjso3fqmgwb9ipcte3MJ2NH6uNuJWeyn/DCk66OZ/Z5
	 J4M4wirUq/pi9sYaxS/148x7s1Z8sH4jjWU65WHCGVcRYp8zSDnDLIktruYe0+76HU
	 eFFVhUWcUlFJS2bcuScTSdMvkSoDjTVt0rHg9zYRLtumcg2cv3vVte/akQX+vSbjVQ
	 kfG2Bt24BXZwVsMiDdSh081hY/tuhUWSxgj6/mSq49X9npaQdMqJEE1j8Z38cy6/nu
	 /lQCPLJ9S91uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE9BCE8D6B
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 00:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176342711358.21521.490179424405004504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 422d4056409961603fb8e66568a9f0d22701574f17a171b095b65933801c55f7
Date: Tue, 18 Nov 2025 00:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763427113
