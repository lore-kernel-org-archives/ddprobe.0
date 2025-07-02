Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24F9330B9BE
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751468394; cv=none; b=pgDEx5mFr/SGRsUfa79Aqc7wZu82j9O6c2WDevA7Jb9UuJm4r0yZuHbAjHzI+44VpY5l2hvRgnpNLsmDLloRplfznI0Q1m5Xwc2NFRfhoICmYuLrV2k1Dlu+V+b61iZBCs+U/sDDvJnx23CfuaCFoUGj4PCjuBeMT3qSaXbMZtQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751468394; c=relaxed/simple;
	bh=EztxEgtD48vs4eydsVtoVtVpApqO2+E/tSSHu9Ro5nk=;
	h=To:Subject:From:Message-Id:Date; b=Mm9xEZE1Fvsja3EXKwqdcbQL+RQEc43tHlnMfDnYTIqO4qbvpJUgyzl9D5z9Ypqq5F8We0pEMoGh+wc+AMN3ItvY5OsrDGiWn5KE/yvq0pJL/Gjax9Zz9d287yFQ0+xMFYhpBZwyG485kPb1aYVFxamgCTm12yrNuQ8obZRLPkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oZDPgCjC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oZDPgCjC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D088C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751468393;
	bh=EztxEgtD48vs4eydsVtoVtVpApqO2+E/tSSHu9Ro5nk=;
	h=To:Subject:From:Date:From;
	b=oZDPgCjCFBKQ9SpdLhP8saIyu7zKWHaRPlhyTIuYsTJNt5THl3dH/R/71soT4r5o2
	 7RoOufH5+UgHHxS9/5K5/Msz5k8MfJCZIGzjCHANbc5pBWayAoIg7xKulqDT/52mOd
	 3hXi585t1ltZwKeW0IY6TIMXhN6YQ+Vcb6oRFlvvpBwoILSuXe+QGer/WzhfGFmouN
	 a+6luRd0I2KFbhDr+VGB4qbxMb+4EiMclP1AD55XtWIqtFns2rd4pIGHaOo34aEAIh
	 0/n/ak4OeT5NIQWHjwi5LkQ+PS/dG8/wQf+7EAQ2YxV2XRpq0TDmCDcj8b1asT24tE
	 WjpA62OjIO/cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F497C77B7C
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175146839357.17639.12324794451251795010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4e2e9a98a5375fb9e622ea328b0b549546fafa56a38b00a54030050cbedc49d
Date: Wed, 02 Jul 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751468393
