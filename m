Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D967849C
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728264954; cv=none; b=BspsqUX08DJ5UgT7d9HLjiC3nKUyUvq2AMXYH8m9oVhbYtJKTGOExnGxTt0XktXgAt0uZkZdcd2nkitz1QXxdwxlusdiVP/5vMWBVdFahYKh09FTGVWgFCjJua4PwiaV9D79DroUNPzQA8WHwKPN040bMqLlP48/E0iOs86j61Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728264954; c=relaxed/simple;
	bh=rbGGrKS4pwPwecQxpmq5YUa2uIsjfCw0RoKzuif21AM=;
	h=To:Subject:From:Message-Id:Date; b=srP8nl96TAXutCCiwaHGhU26f0dPR5fGrQSvc5rzRgAsFo4wM1Buv9KKcBvSTDJl7d6a8Ojbuxc6FalWYclVwt6ROA7dWuxRUJPfa3aL4Rtsky9cmZkBXMJ0y37iudj6auQ1iEb7jNOJeJpuuLigjva1iW7fIBzNCGzz7fX9YMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kcABXFWs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kcABXFWs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5CF6C4CEC5
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728264953;
	bh=rbGGrKS4pwPwecQxpmq5YUa2uIsjfCw0RoKzuif21AM=;
	h=To:Subject:From:Date:From;
	b=kcABXFWs3PV113fhh51UHSPCPWuzJKdm9V78q2EQs867HgIBguuQK9s75rtRjyAyW
	 74KTuAkQ1ARLAj6BoRmkbSBjICW9zKJ+DpvH6tnGW+0s0Rkq4QtRzqnggsemSl1qSC
	 +T87sALIcSgUo2ik2DAS7dm6uAa9O8fJ+7513/gBEJGemzqK4Pe00XkB0mn8/ojeTu
	 OL6t6aIEK9xcF/G0c3vdwLpr9v4kBTo1U6610Xq5cjmFp5+RCFxPdtcvYjqBeSeAvP
	 xPrUuI+y79iWlxsnPl6Ao871nmLKIHElfOOoFddydtcB7atbzTJ+xkahV50mTsw9ha
	 ylDKWczEy7K+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FC2ECFB424
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172826495361.6610.6113785039469411212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bbbd147234f0b57ad49ba2f52c53168891c28fe90dad7f527b01a1a7812e032
Date: Mon, 07 Oct 2024 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728264953
