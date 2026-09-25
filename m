Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79F65455603
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 09:30:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790328635; cv=none; b=aV/hMi/5PS3IkhzCCndBGvKXXYQQduZ5pnuHjk/+xMR/J6NUU/Vg3ba6DycthgivvFSLQdHIoS5t/cWzQj1ceDoX6/lEz3i84rKR4W6y6LGJAFC4wflmZcB1ZkTmjVIMV0Q5BatljM0ZEmjL0Y2nf3ToQGgQevW5HTB5ZML0bKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790328635; c=relaxed/simple;
	bh=C2NXK0Z6LVImzOv7o6pe5is7h+SxyAvpXXLn5vU7UbE=;
	h=To:Subject:From:Message-Id:Date; b=QAEFzu4BfF7HWMa0bntlWK2KFdgG3Zk66NDb6OchBHx+Dku2IE3djdsNPaav41m5z3BapDMM7PhqgikqYeLGdHPgtmM2xqzguKgdVAVGML7xwN1OZSFV6DJqbDfK87ouGv6OVs7d84dnUXBQmPNtFPQ684PooOt6XLuC0yw/qLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ULGTUwCb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ULGTUwCb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0546C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790328633;
	bh=C2NXK0Z6LVImzOv7o6pe5is7h+SxyAvpXXLn5vU7UbE=;
	h=To:Subject:From:Date:From;
	b=ULGTUwCbBLPwDo0ZCVs6dXqnnDG8H24EDKJXIFiiQm90h85BFVNZJ2Ao6QUBeTOVJ
	 Ss40I3WO5PpWbzsEvYoscF5UN01GGy+NVrbn9vPokMcBLs93ytoCLyXo9Swxm+xikp
	 laaBelDxfcSsh0RCibvQxikq+0aCZzxnuN4V1hTemALgX93YKgp8is4grz/Hj/iVI4
	 fflTbbO901KieZjF1Y+kPzpo4BmU1cep3Xo4FQsZNzeiSQxUxHTyJ1ZSjKmA04wy+A
	 wae5maCrllttxCq+mblpdViGDjtgdU4wRG4Jxh2lX9fSRR6FPSQMV77DnD851aewb0
	 ameu74BbBICog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD7CAC9830E
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179032863369.4718.2041087760855009895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 354ea8a2e084819ab9bdbd6df8ad5c77d381e7af5f184fab9fc490497466384d
Date: Fri, 25 Sep 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790328633
