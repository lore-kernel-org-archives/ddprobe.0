Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4301E2EEE6E
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 03:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783567114; cv=none; b=Wlen+NMxED75m0evgciy4ykVQgJwwQbhCqkruTH2twQDWH02JNg7SN40Fm/+in3QABPb1e8TN8WVhUEderOOgOm1N5cK3+zEotww/JTpwjMIfahE8VO8wyIvXRVaWrgUQUoC3WpobmzPV0AlLybvyfxoHueWoGPO10lpEEb3KvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783567114; c=relaxed/simple;
	bh=H03JrFZrGgBQDvATspnb+8zZMLV2bZupGk5lIssA5hQ=;
	h=To:Subject:From:Message-Id:Date; b=LWG8L0v3zvcuOCCMlafU/FoZNQR3YBgevAn2AMbE1xBsQhusN4n2Iel21JTA5XZMf3mxo/FNdZvkd+53W2Dh3CApUs7xWk7pvP0gkP0WDba5RYZd6uydmo2qYZCSfRdDO3tvagBoi24DxsvNfbIx3pZ86KS66bSNlxjGRdOBO7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FeVTdM3c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FeVTdM3c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB980C2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 03:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783567113;
	bh=H03JrFZrGgBQDvATspnb+8zZMLV2bZupGk5lIssA5hQ=;
	h=To:Subject:From:Date:From;
	b=FeVTdM3c2S+n8mbJbKftgQxt9nTPiGvjcRhboWqOT68uOJc01qiSTgn/0TDdz0FoC
	 kwR8DbSlT9KGY+uhgYAHeSmRnLMk+j/QKquMj0LqDQxOHSAc/0L4XszW0NS7LwRcdQ
	 0GcxOsJdGf61mFDhmFtLeBPX8jSdKFTm1/vA8hd2tbSJ3ImPUsOgXMSGtN2vZKTL99
	 xX+0vgrCz7mIjCDbWxOX2LKy8XXXOIRP7V67wGgaKTBUiWIk7c7+TVbWQQzEYZuDEW
	 571zgzgVP4nfxoJ4UYMP0qNy87kt+SIIHqkgUZgHdDuehwszh9k29VZNuPdmF1D7au
	 Hzx+1YglRLm/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB23C43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 03:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178356711368.17161.9680993049189432653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bda7e19c4708d3ff258af54f45e594ea30999a3543caeb8d873645537b83eb1
Date: Thu, 09 Jul 2026 03:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783567113
