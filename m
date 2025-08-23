Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DACF54652
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755958795; cv=none; b=rbfqnU488u9ZKFyXtChdOiGqcicKW5dXT4ucIHOyhQdnugt81ewWAC77UX5NpGa9MlZWGUZaJLmRIMwTwTMc/0m7dyNrsbogMClBEcOeXYq/vGFf7VWskmOFhYlNf5A3qGjArTZ1xsDtTTuWgfOIa3ZUc8k92WQfjaC9BJdaOwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755958795; c=relaxed/simple;
	bh=dnEOz2uFZ8ZlK4QON6oC0Gtrwdel7EVgYtb+b++77CQ=;
	h=To:Subject:From:Message-Id:Date; b=Gc91S2DZ5DvuPDyP5L6tTg3CEiVhXh+ek1gr7xDstvBCcVHHL4kcTbDEz+N+pD5KcwMfoVmfZ4uorJCtxw9H6/jyongW/Dopo5IMPip50V8pIGoY65U1NwIEDWiBUwECpmzLbXy99poytsKh8Jg4MQXBOMD8gLShrjViCuevC+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N6L4nwJO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N6L4nwJO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA1CEC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755958793;
	bh=dnEOz2uFZ8ZlK4QON6oC0Gtrwdel7EVgYtb+b++77CQ=;
	h=To:Subject:From:Date:From;
	b=N6L4nwJOqi5Idx7aDNVViJqgijZHtBaYD/rAu07hFD9y0fPN4xSGzH9s4xPMoZce4
	 7VYm8GRwz7rh9MmtKRN4YBdFLzEqVSaL6L/lBvLWnYX93b78KLBht9jD2Ln2gJ66Im
	 lwpA7Bkait8LYvN2kwuw5Le9SjejxMPLfj70EPojNqakF5kw64wzkdbPT4j9fMBMHw
	 81xGFmh0MPOygVelXWpR68M10t8a76odaA8fCN26EHPB7yi3R67cTfi2IvUm+Ya/+P
	 /rOhr2rDrkFcY1Lc6we6GuVMXlDxm08eWegHUfMfQt1uCEnATws+AAMYVcefEUjMB7
	 fxj6mOiMDfLWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95468CA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175595879358.7378.16446624241271208018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab474cff784e18b596baae0c7ed62ef5affe980f70786eee446b4dba65070ab7
Date: Sat, 23 Aug 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755958793
