Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF3C5334C10
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763138393; cv=none; b=kqYcxZ2WK7njxoblCvHXzaCPwz1fcJRokbeAWl3k8j27twTsBeKGofPwKMCJvS5HPcPfoCTtlThfbkpFP1IGbU6aluXu+NVTvQ3jBgNU2fx9e/qR+iWCFt9mCDQuvb8zp9QgxG3A3TC5vw1JqIYwKOD4vCXgqZrqWIDsno4Z2I4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763138393; c=relaxed/simple;
	bh=FHC96mlh8xkfeB6QzWLMQvGY20BPIyqVG20/x9zir5g=;
	h=To:Subject:From:Message-Id:Date; b=GhXiya9IPdgWBQ7yB0RH5I3Xdc5dJ/lRfxptUEAYqX08L6dMucJaMvIErudvSuTCcEnhMjf9cALmp8rSYEXcbSWvXjHwtveLqyu1iqQ0OcLLiQ4lzs1dQ/3MZnKEuP3P2fYbMd6CGr9pULTbWO0d05d4w+JZSQO02AUpMqFW/5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=STY3QvhC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="STY3QvhC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4FDFC116D0
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763138393;
	bh=FHC96mlh8xkfeB6QzWLMQvGY20BPIyqVG20/x9zir5g=;
	h=To:Subject:From:Date:From;
	b=STY3QvhCY4kUD8W1SzTXM5Egazks81AbxIAyuhgQeyyRf1kT6SkodMGGNlBzdIY91
	 zLCmRjpAwm0ZHvl3I5zrK5SXDKP6CjUYOcDlY3di96l9RBv7grk+Z61VSaFk6Mo9wv
	 ENHa7NNgMpfhZHUoCCUmRNjdkkBM5TLLeUrw/jlj3GuOw/Ud/7jDQc5oldaYM5o9Ug
	 qTakc0LaPustYwLotTtv0JOzUujDYAfVaDjc0ZmCV9G+ATgOzm8FjE1IGkpDGnc3g8
	 tmRg8a4p6ITJ7XOfaNaHkWyWLSWZn+q55Q90Q1CgG7w6+qC9EIrK80sFlMmcXNwYvo
	 Mtfgq7Jus+TAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 979A8CE8D4F
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176313839361.29392.614780913501638105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ee80bf129bff8cd5f1c80e8cde5a8aa5313d07b3794c6e98c86a407648b96e4
Date: Fri, 14 Nov 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763138393
