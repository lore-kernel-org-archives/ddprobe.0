Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49358175A7E
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 23:04:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772406294; cv=none; b=ZpW3kYLWPHAPzLAiBbeDzSeV1xQjnEOa7VRmTNmOY958X5kIzAtUAsArWmttrI0Q2r+HoD2Ur85rb0tvzRs6la0nzMivOSz+BfE3tx5qUP3ayqm6rX72QnNgbk1lO5zhdzcdibQ6Q6cLU5vma1TVubB9iWo4DdBTvAEGnb72qKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772406294; c=relaxed/simple;
	bh=dTg11j9AI+Ko3e5DC0+YecQm4LTtvc/KcSdDHGbgEtU=;
	h=To:Subject:From:Message-Id:Date; b=MyH0NLp+Qpn28cEKl3p42tjXswoZn+yuXrAfbyY3WTXHjTpvcfAzwS2vb1QQq2lhQN9S2aPU3Xwi+rXUE3fGHF6BMlkx1L0SlWbSvW1fh48GuGE1NEruXY63X6c1MVDhI2sGlFZcxThBOsDiSE2PpTvJVXgchBdx4SOLs1y1Rlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DqBFWNz6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DqBFWNz6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6BEAC116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 23:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772406293;
	bh=dTg11j9AI+Ko3e5DC0+YecQm4LTtvc/KcSdDHGbgEtU=;
	h=To:Subject:From:Date:From;
	b=DqBFWNz6OIkfKq7m0k/4pKY67TKzZZu2LYFNy2CwLI4u15y7G3rdJS7RnSR3vLf05
	 z742SkepRaPTKLnokXu/y3cXoIUznn2aKBdkTQNStE+8SJIHIv9tm0Bdtr/6Ln0GT3
	 Hf3uNOMUjtUzIfHF4IYg/QSYWaIssOjNn8dC9ejZT36Sfm4wuhxjtNq8A2ZSijKEWp
	 djzHAGOOB1I+GdT5i8Q7aiouxdgdOLwzt4eXfm9Gc30zYDOHQH7CE5Ucd6B7Eclolw
	 nn5UwS3qHeof2IFzyQ2F3KvYIaCgrLdaQjcsqs1JX6wiOJEkPPL/J98g/pw0Cxpvo3
	 UJv8cDOHE6BfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3E3CFD0076
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 23:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177240629369.12100.12669102580569073802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e7aebf70e20c0df019f7b221b4ff99b6cb6e1f1a51cedee5b8b5f9d7fe8ad38
Date: Sun, 01 Mar 2026 23:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772406293
