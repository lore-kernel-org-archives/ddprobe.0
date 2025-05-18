Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BFA61D6DBB
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747593594; cv=none; b=myT6odTHAhdTbvSuBVjxCmIxPAJ5K1o2X25YUlifcMz+phPgcccHUtfJOLXemHotU7MA+oZGF4/9MSMmJlPdh0bxmn1XieDI921qx9tPzrWZumHodw3pyILtSYsriXGbtA5+G8fhdU6ZT5cldWt0FanQHzvbLFH1TJURnpzyhe8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747593594; c=relaxed/simple;
	bh=pyarEprC9fjRX7GgWy7JE0zEbB+UB532Tm7jDgPCZZ4=;
	h=To:Subject:From:Message-Id:Date; b=V3RPUophHDDt1tWxB/oCjF1QvBe/P6uQijACVOamD157XdHlKvKZpHrTBSGbFFxv21Lyvvz+z60u6PzpS31sFuvmINFxnr1z5MM33hZvehm8H2qPXADBrEUDY/GO75ptBbnjm+GBXw5ncxd+aaV+yJE/XoWTNNBQ3r3LUtxBfL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SZbsXzUQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SZbsXzUQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A007EC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747593593;
	bh=pyarEprC9fjRX7GgWy7JE0zEbB+UB532Tm7jDgPCZZ4=;
	h=To:Subject:From:Date:From;
	b=SZbsXzUQT2e/mPaSOso9VhaCrRgZrxjyTLvYHiDsdwID3Jn3aWyD4Gw3Y9oTIDP6M
	 IWhWoPdP9MPSG7q0YFsoc4NmGjtLVkM9z3t2fmCO4DEO00WeRn3sAd3W68FjNIWkVE
	 Rs+ci/YiwrTPATHNQ0rbS0K3EdA8A0UOw34YfifOVMDZQ8yIL7sXpBpo87BFO6R/Cx
	 ixBX9EmcGGD9FgFx7FrEPtrhGR0hJYOhF4iLTgLs8xC815a4eJo2ayaTbdTJOnkDhO
	 6zjBqRTXyN0YhMe53jsKY6bu2p1yvqA0ydLZ/WW9oc29jI4eH+M94h234HM2+ktQeK
	 Lqi2hRB06zN6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E2C5C3ABD8
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174759359357.29785.3310331305053081841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa09f0a169105c625479707714e03ca99fd87094ac6fa1971033e7f9f89bb85c
Date: Sun, 18 May 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747593593
