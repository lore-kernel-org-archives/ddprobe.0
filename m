Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C7EA231A41
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785126634; cv=none; b=JIYNcH+nLl7qaT19FzWvAX031jrxoX7vV4R/H/fOSVJJtzzwRX36RPlMN7/E2h/6T7JbzCZ+hi6lW+DT9RUI3woS6WbSC9lTsM11N+zJ0eQYEtfY8nwx97k1HccuNZnf4XU1FQO7MtJcqbKQOKCa6vLAipJSvnsfgRhMXne/Yts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785126634; c=relaxed/simple;
	bh=pnBEFaeb1/OPbvwEaisGKQ8Uz7T6/90b8XorNV0hhyo=;
	h=To:Subject:From:Message-Id:Date; b=Io5CojSM1uR1/f13bdUssMGJAUxhHr7lnLM0tBLOzID4frovRNGs+VGja8+K+o2WOYsOXWuhuriug8Y/sVXHfOrq392AU2dLpgpvkmBO/f1oqjk266Ml0FM6+H7Kjb0WPg8Sw7YIrCp9xX7QueJgjZh/Xu29TsTOG1X5bY3p8/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f1DVdn75; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f1DVdn75"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7601C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785126633;
	bh=pnBEFaeb1/OPbvwEaisGKQ8Uz7T6/90b8XorNV0hhyo=;
	h=To:Subject:From:Date:From;
	b=f1DVdn75vmcXISBOsVsTUS7Ghsd54XtQnmJc5/NblOo391J3Z92Z6+a1E5osaRQEo
	 ei1mK8KL/h765yKQfUH647Wmd2mPbDqaKh1sQ+pt2df7Q+K00qgJHEUol/CcuXiTRz
	 mD8Xdb8MfOa2u6QrJh2gp6wFVsaB7mFvtyFZuiLI5sFfbrYm0plf9xu0r8hidW0qkg
	 rleHRihZ0aAuXdjb/vEFkdwaJHwPvAaMhvBsHsdebrJ6WcQIUkCTHFQcMoADUh+RpQ
	 yEzQSPUb9Etk2LtVm6ffoh4vZjEZvUJnL/l0M7g7vJ6ZTEzyL8v0VeMmeGr84oZxZh
	 nOkD8Dm2cJ3iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B23FCC53209
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178512663372.17362.17582563718312008489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fb2c5db3c17efa74f2c45933baccb8f8932a43ce2410f648a846432c341d8ed
Date: Mon, 27 Jul 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785126633
