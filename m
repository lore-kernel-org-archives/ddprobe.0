Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3306E389107
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 08:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776674254; cv=none; b=d3ep+XbZLUG4V5D25FsHFUayXemOcPSm6isc1nhO1n4jEUNsP5tQzYqGNOkg86eeEUeROPDq9LAVJQA/mDDG/QcuoBE+xdaBiSyFCFgPETH3svZ6fADkK9upoEH5mZSGmIh4ps81VLvaoTbe9Nqi6fb++oTRA4uboMRpdSKZGT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776674254; c=relaxed/simple;
	bh=S2JzaHYnrRcBf1XRG/3KicDd5nlnjH+5xbQSgFD8kAI=;
	h=To:Subject:From:Message-Id:Date; b=p1r6TDfPtO7EJPD+XPzTBq00IX2ScGzmPmaBw+YDaNUd7pF+b8ChjpJ1NUimGqZs+yaoGb9MGXVb+hNAMFOlYdmlEZgeWhvVnN+jSlUyzCtt0sIzt+pSCQlYy/xLkdFeL8z02ISQBO4NSxgc533l1KFWfg3s0mwy9yVgaKMU8Nk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rnByweOv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rnByweOv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBEAEC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 08:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776674253;
	bh=S2JzaHYnrRcBf1XRG/3KicDd5nlnjH+5xbQSgFD8kAI=;
	h=To:Subject:From:Date:From;
	b=rnByweOvQNpZ8KaI1t20bSJKYvs1AzJu/fLa0VDMp9P+FbZ4R6PxCbKKVAi3gxxL6
	 Ul3A2VeoI5q/pbvx+11Dypp9qhHAWaljXxFUi+ot3cwCTwPW6PG2vKAJyc8ULGzN0R
	 UowC7PrtZjYjpI6Pi0Mggl01uP8BqALxdINY8hyd+m86Ezfno3n/IGfx6LxH6hHNMq
	 +dHVlbHniRwqwH2hu6sWjcCf65abzy+5lhqYKRMoalIxBbuPC2VNa8OCidm0nVX03d
	 P2nuqR3k/4Z+M7hd9yaTB7mlPyjhvRWffarXuq80dROd9lHM/Ptymv3R1H33jLRyW0
	 DVf0K2C2CUjQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF90F557E4
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 08:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177667425369.17357.5344299417296171243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b7fd0c0b39a20a9b2f38ca7e62ed6f339948f0c57a0ca88e7b47542db61bc15
Date: Mon, 20 Apr 2026 08:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776674253
