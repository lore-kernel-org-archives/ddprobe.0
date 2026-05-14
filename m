Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF4393BB136
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 11:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778756434; cv=none; b=aUbNP3XkfLtugOU1MemDQ9b+mobvC163dbonLUlwgilQgB3n1gmxH82he1vWliX3cM2E1OPiAPyEXZX2noFD1UBNwtODIW0pAzjbDfXyaw2v/PSU7dXzMqDL/CR5HfXsfnIoT3RCFPBoQ/ICM1f4psUiNjF/cb86PGRd5dxKzc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778756434; c=relaxed/simple;
	bh=fO/73z5B9aWPeUJ0VBUHxhn9lvLMAMVXk0j0XWkcqC4=;
	h=To:Subject:From:Message-Id:Date; b=eyPWz8WciAr/3+XKiLYduTN/yfzlpOmQegAtc0YiAaLHxiB3XwtNIXDGp0fEJXsaSjVVilZw2yjayRdAFUSDqeRMPojZwP9kA2RbpGTtyUYMilpFuaDkHoRMhII/lVaFfU9CfoPaPvu/EPbITPIObj7oTdqV7EC3o9DHjhXmKO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c0TkpkfG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c0TkpkfG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8C35C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778756433;
	bh=fO/73z5B9aWPeUJ0VBUHxhn9lvLMAMVXk0j0XWkcqC4=;
	h=To:Subject:From:Date:From;
	b=c0TkpkfGNmhsSlaQQULSbMNpXJ/94ERm9AFkwSFEJpEIVFjwhmEHnILN+fIUwrbMj
	 I2MLx6whJ0hbNyu1hQC41i107+d/v8r7e4052hLa3MQKcq2fiu23zxAmURbsk/zBrv
	 mx8iFhFD76x/vCQwtBbPBFpGTU6Np6kcgiieJqEQUKDMeMkrfjBmVZdKK1lbz815Ao
	 5qQB3O6TxXmcd5yRdsyGbNsHAtL70qfvurCS80Dn5JLFT8Ee00FNoF8D3V23+JCwSB
	 CEdvYyqFeU58Y6NWJgu0hGGGWPrI4So/QcgRasdWLCzW97dABthoqU7yMgEHJpTR0X
	 T3ANBa4ea6ZpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA599CD4851
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177875643368.10483.7083895495648185272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af470fba725e6dcdb52b68e5f1f45d14fed1770b576f1fb028d56e6f69f48d47
Date: Thu, 14 May 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778756433
