Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F9DC1AAA1C
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735812954; cv=none; b=ODlppYuDZDlKg1CD2K8KO1X+7mw753M12U60XTvZjRFHxfsOQev42Fi4op+nHLR8AobP+uIDZ6O4mWPWns0eYtl2uXkJoTYoYVE/5LZMhVMvwdRzVI31Znr097YViztGgTK2+qA1Gj5ZPnOtRhebRTD9357wFUufaIsTjTrg/54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735812954; c=relaxed/simple;
	bh=AJpsKiiZaGMKvg8ZJ3UdKTocK5Vk2R+2fGObFmPNJPE=;
	h=To:Subject:From:Message-Id:Date; b=GXwZCtU63aIV5GyhKJSwAaj5tbKW83c0IOujkiDY3GU4dWiiha1L7SyY9nhXcIL41nq5KKY+2UOnU9pFC52c9hK9mh2xTDGgE2U34DCvQ84BBNKGQMBf5//cOsrUPzhCo7Mpnlfrje9aCqO0tmZ3XLlDTTMCbs+rBgvf590PP5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=guEfiV7T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="guEfiV7T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5261C4CED0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735812953;
	bh=AJpsKiiZaGMKvg8ZJ3UdKTocK5Vk2R+2fGObFmPNJPE=;
	h=To:Subject:From:Date:From;
	b=guEfiV7TRl14c0KlHtBSdTKCWCgNHfKCBswbkIAthIzKoZoBgwTtZIB7/31NF3cTB
	 7sZY5cSg89W4CeXen+5u4mh+kjA9RQho6w/14878XvG8AjqbSVzCm+l+NXGGN9RBD0
	 fPcjH6Col9BAnNO3X7AAjotFyRJHX70hXR/MDf2bbAKzZPKnm9bQu3UMM36sjlQS3M
	 WSly1jWzfDcN4p+MoYAZg1ipT1sROSeYEgV60BMfi/1P+qc7BCgqFGKSDdc+JxJ26z
	 GzgsRduDJEWRnFecl00r0xWSjDOJQpM0ssVDHOf1V4yskMITdkZ5su6xo4QIdBb5E0
	 mFLhIgR2dgt4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1CE1E77188
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173581295364.27866.8093266884090777476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06c738832c5a3402941b758069dd8ef2608f018b392511a5106ccf3369d83167
Date: Thu, 02 Jan 2025 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735812953
