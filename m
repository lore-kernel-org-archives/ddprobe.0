Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 682C4381E9C
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 04:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789532434; cv=none; b=ZZnmpvl7JNt3Oeb9LVVAlzZwjWyndDbvBW7JjNCvw3N3FVUnQuaJF4IoQUok9pPdu4AXJnWVoVRj/zYXsHVxa7g6Q8tEOKmZbEb+nGXksgsR2MiA0PhlgFti07j1SwQVmqPs9Cb6HfMs97hzoqPuNKhMssOrDpkTM413GH8IcaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789532434; c=relaxed/simple;
	bh=r0soiAWbqA6vnHDgICN+eYL3wM0Ncb68m5cVQOeoVfk=;
	h=To:Subject:From:Message-Id:Date; b=qOMFPvFdL/A+smqHRhlCa9Qy8DCLZa0qZ7cvZflBd5RJIMI7qZrAISQHwYDy8LE7hCUiajMZLN7iLHi+CFM6Bi9XLwGgHelcGXmftGIMG3dr8vPU2AiwA2Lh8BwAzjRiz4FUpBQ649F4FfkCQ3CuxmZnwh96/R1275eXccwMbh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r4Iy2VWo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r4Iy2VWo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1C19C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789532433;
	bh=r0soiAWbqA6vnHDgICN+eYL3wM0Ncb68m5cVQOeoVfk=;
	h=To:Subject:From:Date:From;
	b=r4Iy2VWoNveg/Qj/dpO95Sw0cEVA9S/gpEa/16lMXPwSsEtgKQWD2iOmcTgqcMpO0
	 24Nro816OsCe6SHitDyDYNrj/9/jkhbd8TbXZfOYatR2bdSR7gtgFKBmX8YTFNRzwR
	 5sbyqWpt80+EruQXBWs+kaEzfEhKjT8M1Ik5b+rv/ZB09b1ipR68DT5PxfxLnm1Md2
	 roRRDZCTbCKnbcr3L5p105F2HYHYKZBNff6zt+GxvcsDw4qzCaPl0nP2F1VMYgZgsp
	 5RSltLkYLLDlNoNrJjo35eTWFdwxYCYnsxGPdBLoGTKuygOdEwS7KR+MHobSYkGeP+
	 gt0/JIiJoRDYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4C81C88E5C
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178953243372.9323.14260864991901252891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c460502ddad2b78d4b89635f7e74f400fe54c836f945762d131077cfadfb49c
Date: Wed, 16 Sep 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789532433
