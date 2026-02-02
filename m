Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25F78376498
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 18:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770055434; cv=none; b=NLHGC09X0fEgXdsiex5nIypqqZgEXzffOR5b5nhWb9N/2I8xGwGpm3yZ3cVCE6m1LCjWiPIkSWSA5O8bEHJfP/xLFDg6Ub9+/PMrlL10CbFsQuSpQzq9bAImPkurHGpbPOVd5riQa1s1HWZo4mV1lYddd3B/jaosTmA/VKJSy+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770055434; c=relaxed/simple;
	bh=3FoJs4x9uTSRN720qwdR48BDFQUVoDjKXOaYLyV1XlU=;
	h=To:Subject:From:Message-Id:Date; b=gj9DTN5hpq8JC2dljv/mYUx1o+7xII2n7G212SWTdDEtrERbRJJbWRVR24+MiebAk+ROtz+jLiufxco55OT6HHNG+ivD+t7L8js92IfsLT0qwUjv/ztqVHhg9wGK3YeCjoXUwtkrEEzBQvQGewGenjF82Xh8oor4+YyNhhnDntA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k3bk29ap; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k3bk29ap"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B65AFC116C6
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 18:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770055433;
	bh=3FoJs4x9uTSRN720qwdR48BDFQUVoDjKXOaYLyV1XlU=;
	h=To:Subject:From:Date:From;
	b=k3bk29apdUM32E+lfzviP0odiPAasfl12AzoCD/DjCQ9jYF6XCmSAHL9/0ewwXofI
	 JHdxtXmzIVos29QijcSXDVheu3c2aeemhGiXMTxupkMd7b6b1UzpPAcZdN0CAFmOzM
	 BXFmWHniRFOscgvc3xUX5r6z+q7Xhq0WtzEQ56RBYQWlzV/0ILrBiWOB3wjtO1NbSg
	 pqfQ05QTuQzjInnhtKw3OmJ8iVU1aveOFvrhjp646GxTo8dx2Gq3m/IddX3pH3h468
	 WzkYeIeSmqIGjqIcHsahQax9PC73Lg8N61Ro+Y+VEkM0ISceYamtTHEZ+MIKjehOnA
	 MMpSdmF6hPXEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B37E7DF11
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 18:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177005543360.19280.14405863681034454995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ea86098d103fd2aa2858ece1f6503eab0ce04670ef5da4bed5eec24b8953919
Date: Mon, 02 Feb 2026 18:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770055433
