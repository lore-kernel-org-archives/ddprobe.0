Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6062E55C33B
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 15:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790092234; cv=none; b=fnPzqBx8PWI6obdBfK5csdbfMpcJAoftofcfsZOmMtRTLj2vj82k4HglYIEd+hYdrbOyvqzZFQB1Vxwig8XQthDH4vVxDRzrIwf/oQQ37opkZMjzw49YqrVJRi/HPNbJBYjOhd5FUmsx8fCKkg+2brCrBzYmkOgcUSSTNpSOCrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790092234; c=relaxed/simple;
	bh=oeILwidiyRtpsUY5dlCIsmjg+Yr0hliYreEZ+3lWPSo=;
	h=To:Subject:From:Message-Id:Date; b=HODo+3wxmiEiAsTb3vRuLzH7reevIlXIX1og4/zJ/95+JzIJk2mZfIYGzp0ns1rifQTktC7TXPsq/AHI6sOE8WHoOhlvhbOI2gwWwGdpVRXipUpVwPdNRAncEAGCE23A3Mqsu2XINsjlJyXg3QR3k4C1suZ3jcPScVIaD9xz5Xk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rOKsjVZs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rOKsjVZs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E578EC2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790092233;
	bh=oeILwidiyRtpsUY5dlCIsmjg+Yr0hliYreEZ+3lWPSo=;
	h=To:Subject:From:Date:From;
	b=rOKsjVZskXkMwJt4Il+iIKnzE1nwAzzZHzN25qoLHFt/aDVOUKP/4gmwiCzeoEpy3
	 IlQwFiVGPMwZVoRaki0x+v7MwoFrjJTFuyJkwWjyF1g3vS2eUAelliMqFsGQvw3Qq0
	 eKmdot0avsrnKPbhIKqNV+VMHFSbeNi50odJU73pkC7FDbpAybbMUzskHgRXtkEufJ
	 hosPqnWJptLxT6fMVGuSfGkuWtsYyv2+4g5zTcJEEv1pwt+B1HW5E3uP2bwHl4zuHn
	 tEvlBhktBdvd0HqS0B2ywFpwm+aSoeI2q9u61M/bK5BGLjhPUquyklWfKQgY4iTZCe
	 JQIXflIKAck/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD5CBC98302
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179009223375.28861.16540597056681859193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 506861c4274fb09148ce5e6c95068290d6ea57a96f3275b185bca4fa55a4df93
Date: Tue, 22 Sep 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790092233
