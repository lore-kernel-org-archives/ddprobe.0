Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4343313E41A
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 00:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783126114; cv=none; b=bIhx628M39tDR6CN2Hjqu38kxcE7leNjH1E1/i0z0yrQCLVPR3ahCEJJvmmj6vxhJcLwUVdumnDbaOh4oMHlm1lINFsNXxn7BbnvzsMZ9h2wcfAeRYLTZS9qMIDvHBPv6gYgHrLR3ctwUf3G+Yta0uNtDrMEYwtsLN1FN1LLCdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783126114; c=relaxed/simple;
	bh=yC1YbxxDwrRfwoJYj1+ogUipJg0SFa2L5DQ9X5gS39o=;
	h=To:Subject:From:Message-Id:Date; b=eeWllE8PtQGe/WhjEW/ysgsu8eX6f2damDHl/M0UFcoH9nobdhXpSolvmj+77Z9t3v/UkBzZXjdKETIGCfCDLMtxDg0+vKKIMJyRd0E9ujs4rS45qEHCHHXsR0Suq5dxFMxRrAezywoixCegHkJQZZ/BvND7nUOj5BJPzv/9dug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KXd3xYvM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KXd3xYvM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0AB0C2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 00:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783126113;
	bh=yC1YbxxDwrRfwoJYj1+ogUipJg0SFa2L5DQ9X5gS39o=;
	h=To:Subject:From:Date:From;
	b=KXd3xYvMbB7zV86UwCKr6XEHj79ybT32av9yapudsAgjLOgIN244aA1xytkkRS6kt
	 hN10q3Ik9hJvOdNLClT0lC7ju2Zsu8/hzy0h1A1YkBeeHyDHAoKhPv7AnTKLE6PCWs
	 6N+cUe18zRGhh504I+bdHajTwj6AUojOcaqJWY4u8oITWN8dr/Wvg6JoJWuj96LAg1
	 J6okcx8A9XMGM44N9ruItvx2O9aXEEadLFBhGUYut0jyfCQDxW6tRbB5Vf3yW1YBLg
	 sC1RZbZxI1aLj9YvBr5+cscvUndNZixMRxUk97X4Q9FcV3bXXeKwBxDL6lsO/nKrus
	 Z+2rBs/I7PZlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC505C43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 00:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178312611368.16901.7631044704573411925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8697ed4b86c5b4d26432a40ffab7d32c8279dd750bf6c2033686c6b4bbf26e23
Date: Sat, 04 Jul 2026 00:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783126113
