Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E3A74AEEF
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 00:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779149434; cv=none; b=Ksypiyrjbg1FPmZJprFI2zajXyQ1Tt/bH8SgkKmZZ8BRBTJ4ZT5tLkoFqkvvf/vefiBBEYp+itH6xZLb1m10CQIYOl7y+RPV2YIOsAnwCmhhRss49jnURJPRIFC5IiYt/Q8knvUqaUjsaLtuZBYvXUYO5GJYymHhytYQ9TY4Mhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779149434; c=relaxed/simple;
	bh=tLrRIEQ/Ntjt4f3bZCVb0stJohdV4tAwkATdFdRlrq8=;
	h=To:Subject:From:Message-Id:Date; b=u4KWUaVUTZ803cRI9i3R8s8JSAvomQnIKeyb2k6vknRNsd0q9TeF/4cIRFuKHpgOH9YBjGDqsuYoeAzVDErlOjRicfS7rCPwY9IFdxP6ZJty3V5zP1Rzy9Jqn/FM1JCWJKCuepYCLXMqRMLzzbaPMPCXT8wcXsvsml1+BAZ2EF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nsgu/Bh3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nsgu/Bh3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA4DCC2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779149433;
	bh=tLrRIEQ/Ntjt4f3bZCVb0stJohdV4tAwkATdFdRlrq8=;
	h=To:Subject:From:Date:From;
	b=nsgu/Bh3yaHYsvNoBIR02dKJ63U+zNzujFZm6P5nsQJxGep/D1EYqMoCLFthdvE/4
	 PwF969SuHrIUIMym83r9LML95jSt1qi+IOKsu5LgjtKabW+jS5AOgEnScZY8EDcR9d
	 8zMmJ81/BYGQDkzfwtZen5VUmDNtW4Na2GK2ZT4j70s0dz1Jq9gTM2DLt4P3HaT2u1
	 z5FqHaufNEB1zoxRUWrUhHsHBMf1Wup3yg3SPoby9pRGSk6Rhf6SioMfLyZ0w1An+i
	 x+ephqdqgOyukE48kZHncHmiP14ozgA4yx1aiQzYz9WN3OlaUXed4tKI7wx29fiyDZ
	 v6mJhM6pmYq/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB93BCD4F4A
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177914943369.8060.9606782021823553073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba4cabf5e02da2f4c665029f58f746b99de715a448becc9d6a05c75ba3a5691a
Date: Tue, 19 May 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779149433
