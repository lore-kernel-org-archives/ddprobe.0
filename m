Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52FCE2222AA
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 21:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784495314; cv=none; b=QzDV9WmKEg68Q1a2vnVo9lP2WUAXWTrNnnpdzPEXdzNJSSk89gjynBYCS1J8p9ITwVhAGXV700kqLnBKwYQCldF1bU9OG2XHLQLNGmomLmhRWBQVrlCJ2PWjJH6heE5muMkA/A5Q2n4asiQlQ29Sn0wMhol7LX4xJMpz6xNR7kk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784495314; c=relaxed/simple;
	bh=cBvijRcSs+yONxOi1m2+RIcNfEFHgm4k2eiHgenuFM0=;
	h=To:Subject:From:Message-Id:Date; b=Am5BjIrjaqjWzd+ZSu5vsFVBDTxls1rUtbgaa4ctlUi1MhYaUYFvYFjzlyypJSJd3ZqytmcI84i2VWJuBdaQhmUCPkZGoM0rpyK6KBCoepKnr99cFJC+KoRXTWVKTc/zWZs1Has7PXvY5O1FsK7cn4WWE0qMicD6yYqfpYCXgB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sd/iF+hZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sd/iF+hZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC1DFC19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 21:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784495313;
	bh=cBvijRcSs+yONxOi1m2+RIcNfEFHgm4k2eiHgenuFM0=;
	h=To:Subject:From:Date:From;
	b=Sd/iF+hZVOJE/3NJcniwiqPJM73q6WGCphIDMHSvqZC4Bmu9oaAMZddcTuc77e0Zl
	 GVAhjSk0rgjUAfn2P6s3mhfZpCUxumJNMeeLQNY7NyKd2zdGvdCDswSjL2m9Z9HAk5
	 ZQJbXtNtm3Yu4bxioU1fBD/j7F0hmP9gpsh/iOaHtwFnwZc9bzQcVTyTrV3G7DN1cN
	 37DpurGYn6k25IZhAH72dNWtmtK+2WgMoCVnY1DcrFdTBJOkUSt6IkeaynpU91FmwE
	 EZZy/zcZQ+U5v82N6NtsH+zsJhYCcJqLLizfRx0diliJvsDEAgqWqIwgKvYsr7mR5v
	 U12SfJJDXuwDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9937C4450A
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 21:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178449531368.2546.1069297435414415541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a03523463647db3cd5235e9de44be3970dbfbc76f97a46ed4401954374638312
Date: Sun, 19 Jul 2026 21:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784495313
