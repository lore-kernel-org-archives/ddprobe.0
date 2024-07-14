Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DB56FBFC
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 05:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720935623; cv=none; b=M2y/fgqB0JvRRn8WlzNoxtWfrMJWf829492NBbkOo9W8b//V+IOBKGZo+V7CWR8eRkO2IZCkWYHQaIRR/xTaNosAE8kUOz/1wYYiKDlH9t0W2DlNFlGF9jAC36R7snDolg6gJD+0Kfdi4ao5YbqT7upCo3xSuT1oaKZlPsBKolo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720935623; c=relaxed/simple;
	bh=fBqSrWieMxWkRZxwjnlqGeAzzAFJZFtdaDXpW4hgotY=;
	h=To:Subject:From:Message-Id:Date; b=YbdZ+uJylKLikPTmnteJPd+TK3cbXoAOgiLAdreLP4R6UCgsjLqkFe28YF/Z1FeXX3o3fZMnnRjQkrt8Ld1IeFmvMJ5Ia6I5Q9xNg6n+LHHuCJHXvKTSfp+OBX1Ut5zHxRu5188Gv56rcRzz7Qe54s0tCoAGb6PyIWWkA2NCEnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=miDYAf73; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="miDYAf73"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1D02C116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 05:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720935622;
	bh=fBqSrWieMxWkRZxwjnlqGeAzzAFJZFtdaDXpW4hgotY=;
	h=To:Subject:From:Date:From;
	b=miDYAf73a1B8AZJns4NG1omKL1tRzHW+sFvdIomTk04sLYr7LtAv9zu2GRMLPsbgn
	 kBpLxEQo2mo4851s8i2APfhdeMXdZn0NxYRcXzHdEdosHTKkGI2C8xF+T4oHHHzY08
	 8CxItDSJhUEKsdCC764adnpsrSrVb614Wq/fprO+g7TeGgYtvfsctkI+TqX1839Jh3
	 M1O2/R804sAoKcK6NnKunspoEdD7wEDmrk475cEjbLJbDp78HRtmzYpdj+BFtQIpF3
	 VpO8rdGyCCIQJWC7zANPwPTNdb9pWusp+jSeoee33E2+x/8SmR7INVAsPkJwDaH/eR
	 eD2b1+Io7ZOWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7D6DC3DA42
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 05:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172093562278.31578.13745912364738274918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9be029f6405c378f1c8bd4f5ae6311b65f30f4f5f1038a5317413d99cc76727d
Date: Sun, 14 Jul 2024 05:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720935622
