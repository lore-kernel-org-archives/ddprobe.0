Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34EE4142E67
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748342394; cv=none; b=HFvJWVzpyMA7Cc1ojBFlK98Hm/E5GG4ncNzSivVZOhD8wVvzkAMN0Jl6jtuh1u+ZUUVuYgySqPvHbDOtZPOaN7mfPi3a8fv2MgvZERYGunLlRzxEmcokdT96drjZIf6mTB3AcrAq63Tw4QV4x4aVyFUQjauxjoXf4koaFPEbGVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748342394; c=relaxed/simple;
	bh=NhOtWfZNHDCmL6FhUy3fqdd1JVjvHxK6+VeqqZ0dC8E=;
	h=To:Subject:From:Message-Id:Date; b=bdPJuW619sttHg30qZuOChxHXrwHA3xZsmLBMgqgYq2atFo1idsIv78UeN43c7GJPBoRyI/QkQY+c/lFrZpK9273wSQP1jS3nSUd60TXxPPQIZqmJjlVV6+3oWND6k2PYCMYO4IBDAfchmGqpyAjidKdXECRVJawW0yRLCMVCXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SWNjA7Rg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SWNjA7Rg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8693C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748342393;
	bh=NhOtWfZNHDCmL6FhUy3fqdd1JVjvHxK6+VeqqZ0dC8E=;
	h=To:Subject:From:Date:From;
	b=SWNjA7RgA6IxvZDpE4y8yKicavbpnUrF73vTJUxlR/AHn48btT82hadl6diCrewFN
	 +wKUpdFZaStsNVkU7l8eculIvH2MpEu3kLUVl9GL2MkJsEfQM/ovkivZFWTI2ahqLk
	 d8aKUXMEd4XxlLvXWNlKMCqc5ifpr8IhnYNGQ1sGPuQ604mf8JBu3DiScM5LntmR+E
	 dAYAE21LcGt3mPQoosOp8EpaouE6kfToZKOGgUUz3d34GtuXKch53Id94KRDCsICz7
	 BQXzoGqkCAI2mr6yc80pTaPW3uBG/OoEyalygnSXabCCt5KLLWFkU20XhwoUqYoegZ
	 TPthJbJF5Qttg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9248DC54F30
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174834239357.20291.5501786776136133296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19eb807dc53da8ed815d7ff9a9ac057ec9f1d1adda8602d9ae735e4e89a87cd3
Date: Tue, 27 May 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748342393
