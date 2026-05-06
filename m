Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 324F93DFC7B
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 09:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778059654; cv=none; b=W+MDwmr/VqL3g369NmCMOlaokCuleZfRE/+oMLz+fEnDQnu6jHB348oYm+5xS8fRIZvhU81Y8cMWBdQqbHWiaTMxm1OdfJiXQY6VcH/GgDkcYywQBD0gaIla8YnH6PEMJe0SyDMuVg4ptZDjRf4Gz8Lh5ciDk4oqdwthhrgYO70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778059654; c=relaxed/simple;
	bh=hAnwWefSF3N9re+wdMwrUvIwmInu0Hs8YdfyzizA8AE=;
	h=To:Subject:From:Message-Id:Date; b=slFj424HswdYh29HaCHMV22TjIp1MjjQGqDqjtvRSMDBM6TuVGMqTmUd6pYVSsH9/D+TL+i5YPRmiSGoXGc1JwnCE4HxaE7KG313ILQvu6KD49rmaokalcVzofVeJDeP/MJE/j3tE6aTQvvG/MM0jQrFz6mJ8Gslz533AMwjlmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ATUP5TvH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ATUP5TvH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3F0FC2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 09:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778059653;
	bh=hAnwWefSF3N9re+wdMwrUvIwmInu0Hs8YdfyzizA8AE=;
	h=To:Subject:From:Date:From;
	b=ATUP5TvHa0XgMv0owqwVGxufgY9YHow2G7iE3Hqp8VX82VABjmYaZqZFQAhzQLeCH
	 2cJoeE6a3upYsGy6KMWiox9d/hO4FIfDwHmJDjoCnL4/ag/hJd5W5qwNb3mOfD7lvp
	 JLVN07AIipItsAC2Os+ioRiZxEKTMmLQOntIjSw3opaM7z//Uso0qMWKl9SGor8CV4
	 AaIXEYh8HNs2I38rR3zJgWbhfJ4BJAB8ml0ArDGftFEw5CgjEtAFPDiuu7oaVkesvX
	 tIkYq5N+kNocjW5pwdxz2XCcGK7imikb7jAVJZKusX4Ejq3qTNIqSjcxjaSfbevFjZ
	 32x7szON8ETvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B266ACD3439
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 09:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177805965372.16047.4433960972093677685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8010d429181a4e26798e1f8e156b6cea288c0d8dc1d504705d233b0b939a8a70
Date: Wed, 06 May 2026 09:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778059653
