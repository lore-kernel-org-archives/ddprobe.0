Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 731ED4AF69C
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 23:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789686034; cv=none; b=LYe2hWLqkojAxQ6fra85VhpM+uFJT8z8EDgy+wHAgP61dy1f3xXc7JCgMIZcyrZrsFZS5RMeCh91iSqpoNsie1z/BsUvI/CvsCen76EDd7uAGNcX9Cn8eqmOwSAcbcYZwx3AjuOEM/32eXg6s8DfrQi7k/5saWWEeUJ6zD1t2dg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789686034; c=relaxed/simple;
	bh=FOaIKSkPCRT/J+gjDbTBKmOsI2Mm2d7p/wW4TtAeB10=;
	h=To:Subject:From:Message-Id:Date; b=P8fSL94Z4Pn8iho5gDIX2QszeWykmbBUUjLHEUwiObucRkfOSW2/sUzfysWcbwxELSr6mANxPWo1gIqFc8xC+nuIB+WqwanGeecjfm/s5ITogJao27N/EjuWGfqqeTanpQWYNvuGHGDo8OC2J3USNBe/YG1Lj+lEoMIWW4/NQPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MQmW0g51; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MQmW0g51"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6D4BC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789686033;
	bh=FOaIKSkPCRT/J+gjDbTBKmOsI2Mm2d7p/wW4TtAeB10=;
	h=To:Subject:From:Date:From;
	b=MQmW0g51APkrlqPcmml1iesB3Vxh1kYGmPwiO075JhPYSssX4GVTwoaokiywCIr5O
	 VJPP44ba0qz7u3OoqJE86qku5X6UudgYycfpRBeB1GuVcSc6ciK6eptdeJn0HIRhzs
	 k9FYIT33dAZmheMFMqfyJRxTv/3Qvtv90C0H4FuHXoym3dpS6kBlFkl9eg5q4heGom
	 5Ttyo5DGiyJvcHMf3YjX0RGcqwOlGQ51UZXvStkTDIGohAnYDbsJAadqhuMCSK0vW+
	 C6ewOv1SJgUCXXfXemjb26JKPHtXrBLBKKuUXdAHPJ3F8jYqev5c/lVB0GSHfc0Ozb
	 GqU5o5wFnCpdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3970C982D7
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178968603372.8648.18190325311127538472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bd802bb57b5fb96411637cfd12dbfd7ac194bc8b9d49f809783cad3cedee222
Date: Thu, 17 Sep 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789686033
