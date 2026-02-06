Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A2632EE5FD
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 12:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770380634; cv=none; b=usMT/3cPWQ5e4TcSqm89+FfEXIlzZNbfO5YJ1/tPc2nytuqRveS0ZmXI/qU3YkKBPJCFUB1H23xtj5j0CeAdqAnsSOaAKdHR0ZIx5vZ6CYUXObihC1jIUCThHOYKV5/T84MiF59f6LGus3btW8oXzbQz4k8ggynVqu+gQ+fvCqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770380634; c=relaxed/simple;
	bh=xIrsICha+LaB8QvuJdgizG89D29+pL7+tS/XzbMqM0Y=;
	h=To:Subject:From:Message-Id:Date; b=Yowag/XnPC+IA6cuGF8kr7n3EuZgSol+4cH3RjLe9uRgKhGOQno5mLsLr9p8hPtqH3Pv+6K20o52E/viDu1n/ZVaLOy3RsmB15RHhuD0XT8L7rusFugTsXu3QVjbnLiKAopzBgzdFTgdip4cTCIMGugELv8eBCBrvzwLk1jp83k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CXEp/pFp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CXEp/pFp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA235C116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 12:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770380633;
	bh=xIrsICha+LaB8QvuJdgizG89D29+pL7+tS/XzbMqM0Y=;
	h=To:Subject:From:Date:From;
	b=CXEp/pFp8z8u7SF6GAjhpBNleLUXaVPu8zZLgjaPEC8pEnltwsk/GmusWKYdXqKd9
	 onwxa0NBCCymbRLeouviirA7EKXN3QZ3chUE0x320EjD4Qy3geCV6Vfo2jfKdmhX4Z
	 YOn8gitwnkXIvcOQ7lNoeqKeeKi7QZcLWfiVTt0OuxQcP7RfA5x8RCPvHtLW45plv5
	 s3zCaD2EGElog6trps+/X2YDVAc8wT5Fi2YD56R7I3+Ub50jGf0Ke6XO4sPgNUK7AS
	 ndjik8q1PhaYt+yqkgdywCAVoKtzvwWE687NDDa/uR4xG4yzzYmHbScMzxIiXiAzv7
	 XsykfSNNFSI3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92969EE2095
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 12:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177038063359.15463.13050603785174348250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1ac66ddfa55b683ed962a7e8707e8d82c70c2abb402285ff8c62bf75cf1199a
Date: Fri, 06 Feb 2026 12:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770380633
