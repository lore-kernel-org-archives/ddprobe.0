Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F2A540DFDF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 03:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777346254; cv=none; b=tWVlym6GI+6bDyjaHtIY8FNpunxerltQ0Y11IqdS+NUUjE8xTFMA2S460Madje/3Xx0jQWCg3NYH8xFcNcrkZtELEdAK2FB5z1BuxHb8WVNWv4iLofIKDOoemA9/z6ZV2IXOcMaNMDBLi17KIfB76NF890kvqb/W1WlIEufPGTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777346254; c=relaxed/simple;
	bh=v/PgMB5Lv6e4+WJERix2LZCFWpa2ojbg62jtANC/SnY=;
	h=To:Subject:From:Message-Id:Date; b=pfgeW2r3Cn14JMy1TMOErcfMNsNpHeOD6qj2UFn5rBY6/QwGoKGInmAkKFNOydYEDrn+zU9l9lhIH7GJ77yPKBFv4+A5aIGOHuFYLiZ/3KynHhdymbprCNXNUtazodbUGksxuB1zG95PPOXnN/nM1KX6Guykq1Cd6/wfl4tpzPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MxUDABw7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MxUDABw7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5A3EC2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 03:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777346253;
	bh=v/PgMB5Lv6e4+WJERix2LZCFWpa2ojbg62jtANC/SnY=;
	h=To:Subject:From:Date:From;
	b=MxUDABw7zpPX3YmJzEKk0I+2x6F82gZq54XqoPzLPG3XTUeztewW3gCkUFrxDdE/m
	 PEDelio3yPHyNqc8uYye5lQzhFOHmbyz5q70BUZc/hFtP9pjWlklhBJnczg3qg8Nn0
	 WYpItfQPpSA3Vy3m9V6kAj4nXuZJ/uIsq3LiHe6/cp/TU+f7bOIWhR90JdI4c/gBcL
	 srf5YmhrSfRyDNXWJf4ca17EX5eNi978nDi54Kupp/m51oHi4ebBX6nGr37TcnCq04
	 mX+bdF5nmV1VFFrQf9TQ3uktZGEDkN+sumbHOrXU6EtoM6/ae2+XxrAcRu6yeUEY6H
	 Qv0Qwa0gITy3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8AE6FF8864
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 03:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177734625368.16041.2483379958376785829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42b22fd339b269096c564a99f506b339497caa376bebac61c2ab8e1518c0984c
Date: Tue, 28 Apr 2026 03:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777346253
