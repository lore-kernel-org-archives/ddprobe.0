Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CB64433DC
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 23:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716594203; cv=none; b=S/GHvdaN4zpLhBMGfsOSmpTsCyEI7oZ+VteQoDKbO1+C5qZSDQanMHZf4ewtpTROFbgG+Ua06devoPWrLZmGdQZ8Gg/Hdz4WspB6G9EHDaXjZXBDUrRxWbd62LUZrStv0V3qtd08E1Mhjeh5JVrFd7BILZ5rmUwy6hnp0jEXJC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716594203; c=relaxed/simple;
	bh=9rhx1EMMbARPy+Ep336X/wfmPgfcHstLY8M+y95ecH8=;
	h=To:Subject:From:Message-Id:Date; b=Dl+BrWAuReENhRymUGAhtO645/1BdaE8iqMKZvYWSVpcgBrVr9Q2qyl4PCdYWKN2CtUxcrSOpC5zmrCu7ieugiKXV+QcytRhfsCtBuNY7gGzcIb9iM6JJxaep9NGsH8wjS3LkkOp58qCfcPyyPwjq1kEEJ4Egy0vREuOhxHcH9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JlRSoQTW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JlRSoQTW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF8E9C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 23:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716594202;
	bh=9rhx1EMMbARPy+Ep336X/wfmPgfcHstLY8M+y95ecH8=;
	h=To:Subject:From:Date:From;
	b=JlRSoQTWfBJllgSMnNBtSRlgxhXajKvonQdZksddplLmjaj4Cbmpag6nF7A+ngC5i
	 g5xw/f8d2o8NrCxsH5yRiYLzTJmEgYxwjsFaM6/ezWbFDxNF1rVo44p/zy1eFOpyxv
	 g+AWheobG9Y9bdnM7XEjXUziCwZ0LlpZEAmcm9eO6DxzdJJL+rrKRrsK15FhejMnDc
	 80jAFf2Pm5kdVYyb0Rm2qVU1Mjo/jFlF5M4bFBLQgX9tdguQ9deiPS/pOPsprBxcSz
	 b5z7oeUiDn7+A6lCxBPcuSesY5sLZqNDWw6YX8gfPhh7L7nyYqELTLAPcVHhvXCnhs
	 zHLFR7/e48Yog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2A9AC25B74
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 23:43:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171659420278.3397.3890851017038737498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c744212e10a6b82958776627ca8f0c2a3dc72ac0a737580a1f99e0df6ea7c30
Date: Fri, 24 May 2024 23:43:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716594202
