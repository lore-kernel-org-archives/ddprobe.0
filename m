Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4676B2F1FF4
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 02:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792290634; cv=none; b=GmA16I8yaUltm33RtchzTEI1DRa3Qn7sM0rBP5Ie6e9F7gTKvkgF1XMaHeRAU/UQ2At3Dd/59PYqPhfqAtZiIoR+juTsa+/psLKe3/vhYDumAdl0czvBlzA1qMlrySmY6kpWGDBDiNFXUl0YaZOsa6wrQXcodzbcUyJeRFh3YAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792290634; c=relaxed/simple;
	bh=rb8Ic4vVzhEOpde8lJawpOjjGQOuHiwuvfvXkOPpqTM=;
	h=To:Subject:From:Message-Id:Date; b=Fl9zb5J+pfx3QZlX8lTjnwkAFDEmKR+eBCtSEXCXB8BKMpmFhor4O8neHoDl1kve4bi9uFUsYpTn5SHbK0vIsrcjfi7oMbPSs50YWllfPOOjf0PE6UDBJf0dA+P9FgqXU0ktLP1l02W5+dphKNBWq2/wgaAeSUrNjU2kinp1GOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rero7lWM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rero7lWM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFA3FC2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792290633;
	bh=rb8Ic4vVzhEOpde8lJawpOjjGQOuHiwuvfvXkOPpqTM=;
	h=To:Subject:From:Date:From;
	b=rero7lWM/7euMY3Li7bJEU3w/hJ2fcYm4X9qmUZ1D3YBV1QBFkkgQPohcyPzPRpX8
	 GdXyEGyh5cuWnrxhTqesTYDRcCQTQoMYuvKqDswJ8zf6s/pOsdfwtd/rF/I5WDZvyD
	 kr6OvTBhpjkUBGGtsBkOa2uEo3o8RX1QORmYh9XGTabDM/sXc47NJ95JA56mWKt7Rc
	 ayG2RNCG0L9RCXWykJXvwuy9dG7XvHs5UFLG6D1PsjsYXUY2kwfl4QPzP3Ge2x8old
	 2asoNgRFX9N7jpxRt/ows9Q0UAPq/1yLsd8Fy8vWggZpKQxqitPOoqAjefkx7q/vvD
	 DYhiDq8mMJncg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD5D2CCF2C4
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179229063370.13723.2948829558538074430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ab5b0d0a5cbfbe57bae3a211a6f8107bc9d961187f6597dfbfb2c9284498e9f
Date: Sun, 18 Oct 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792290633
