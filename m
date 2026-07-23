Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7A6F3ACA40
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 18:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784829634; cv=none; b=q99EnsltrNgIorr3coJ7nSokBzzP0qGwqnAo/18/haEFmla8bhUnMgR80MkodQRuBmmcLIo5rlV5927DFO0AGVfjEuOChGG9SAKkKHkvyjgNN2C2wrHHYzzFTndBncTMrKt9nlpN2roR82SKbxee88nqhngWK32jEDpA989wRD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784829634; c=relaxed/simple;
	bh=OZL5bWS4kFxlXex6CtVwgbUbPo2dJgc8P9aNe3v277M=;
	h=To:Subject:From:Message-Id:Date; b=d6p1Xi/RILAHe6xRzCBBPkiZIqrUcEmuEFu0a3+iHn45bpSouV3F8X7OlLGrXY9VxETs9xo4/Gj6rgOVmiUGDI0Mj+lafi93jCrj5BQak3wvNFVKRRIG8C9FTdSF9CyuA9qa+7om3R+tlQCOXxKlCjfcpoeepOCaLRIZEVOmZo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pXeZtT2H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pXeZtT2H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCA48C2BCC6
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784829633;
	bh=OZL5bWS4kFxlXex6CtVwgbUbPo2dJgc8P9aNe3v277M=;
	h=To:Subject:From:Date:From;
	b=pXeZtT2Hkcl1eLAwhIG76yG0w282pbpj0bcge22NHyhCdNUUxPR4JjFZ1Gy8fsBUq
	 zlaIFudEnGfTmHDwNM3H/fCqewRJrINxHfMk7SdA1afM4MJRuKTZJEAErHlLSAGfPn
	 rQ6SSIUf6kV5xexhVjrhfQ/kiqPpK1B72iNqKzG6VvnrsgqJtAbIOE9L5chJoylUE7
	 iJCmcypdNSUZIeP+cZzyQKZjQdHdBTMCZr2mC1Wouh5P0G/J983tjIZKWpdbQDLsyB
	 55YVxICh5vYJLPVJqp0jFVz+UKbJQP+jKKeEZXmNuWEnxSSqfYdkCtkqSSA4ckKeY8
	 m5b5b0oDFZgTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9757C531D0
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178482963368.7899.7767918535902200121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1373c5fdcac2f59887456a8eb8f653d3561ddff6e9a23edbdb0fa783531b618
Date: Thu, 23 Jul 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784829633
