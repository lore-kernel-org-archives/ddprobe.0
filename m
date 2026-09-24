Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4889B476045
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 11:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790250034; cv=none; b=tSjPayF7C5T9GCaYLy4ixwTJs/oV2m3nU+q8wzu2Qk+//GqrjpNEW8NXQA6rgl7Kd57OJHxJEXFEjD7qYfQfDGx246QytEjGltLKdL+/Ue16r4mM+fNWQumfGNLHT7aLGg33R7V/kf+hGVa6jJNMULkyyl8eFq5dvy+z1JBV/pI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790250034; c=relaxed/simple;
	bh=wf4hZZfIJHsJtvhjtsoGgYx/AW5CSogTjoBgP+fAHZg=;
	h=To:Subject:From:Message-Id:Date; b=AkJL1rq6+p9Ccj8evY2zumj2huWGMQAVsrdvJudLDL2w/QEdp+lsRe1LEI2JYt/suBwGqBLXyXZyowbwhhaMXaLCZ1Uqo18ghPPASjDZI+1FG8j6UImg77E5J/2t9vtivJpHnbkFRGeboMrvqznWBVNprqik17IKSWOxFajylWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t0MQ80H2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t0MQ80H2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C16F2C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790250033;
	bh=wf4hZZfIJHsJtvhjtsoGgYx/AW5CSogTjoBgP+fAHZg=;
	h=To:Subject:From:Date:From;
	b=t0MQ80H28MSG/GJHkPgAvKCGTp0BkfKJjndumOFOW71H1nONTGVuHfjH8PtcLkptS
	 yoBi+2FtbxYPOfRByXs9QtjhQ8xqq7reTM4sCIYLnxKI8UmeJjLsbink5s2Sq+AtCE
	 lovPMU15QKycGoW+IamwM/muG9a9wHjJ+OQ4TuzOgnIQrueuGcq6JQWT4NxdD4ju8D
	 LnNTKaI2U+dymmTeCPIkH4fDMTHHRqF5nKXrBLdtzCPFFTLzjN/872sqm+wNAA8fuG
	 wiT2IyFsZJ9s1vUcEMF0G1OQ2EEGzWRUQ9oESi/xZu1KIgvEp8CrltLHlWKwSfQAgX
	 /CPV8/6KwigFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB370C9830E
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179025003369.17683.15095456488135082833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71ad033a72735467ea39f4948f347ee2ff743461d4ef97fe53ec95a710dc84fd
Date: Thu, 24 Sep 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790250033
