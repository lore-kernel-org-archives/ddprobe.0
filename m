Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 629A22AD22
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 18:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719165743; cv=none; b=Odq4F+CT5UFk8LEGY563mTe3IYrXSZo+xPUCQxcSx5rJ9toXiw0p1xZlV7PHf0GUil8YAB51fyZghP8Uswz+aTc080t957PIZE1XAdbt2fZGkMYTJkYfOC2sI0SOah+cR7EZ+WdEeWewVPoJgVmdgBSjbo5GrGw3eBl5WtWhQtY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719165743; c=relaxed/simple;
	bh=rb3a1293yOcketgYm//PiNY5hWFCI/Fi2B+C5BlR/48=;
	h=To:Subject:From:Message-Id:Date; b=RdVPoWswKOhjpLcn3qjaOFoGDeLUg6Be5iEayHqbbker/oa6lzSN1+KwOkSD42fuqx/16Uj9Vrx1eWEDv85DunRC4OWu5GxdF2gGPLpJSrXxglN5+JN1zAsCyMb/aAgyJNt9Y2XEZbaP0Ri4xuG5MeQHdulLy0mS1caruLNygmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RO3caZ5J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RO3caZ5J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E48AEC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 18:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719165742;
	bh=rb3a1293yOcketgYm//PiNY5hWFCI/Fi2B+C5BlR/48=;
	h=To:Subject:From:Date:From;
	b=RO3caZ5J+D6hlMCNW2yb/eCjV2cVcyylBGrkNDQIl7Z8BfG/PmUI7/i8wnqM3ry6I
	 3CSmA3GIbQ6MO0T37IOSBHVb+61LCNUKWr7if57X1D+l9id3jCHWBnAXToBr38LTDd
	 r8MXZidl5Pko/uOc1DtDYw8vTy//jdazmPMdsZihnRVJus7dLrBq6SgqXgkRt9SdOd
	 gflFXFGtrHG+qFqmk7FWoSpOhecnLgqwtlItfwbv8/AwXsiSG3KvdLgJ+qj/gmrU/A
	 sWi6PW4bacU/XISFnbfMAu3vwncb6hAwPU/+KKxofeE4xNK/c3UTgglyTLiFH14mZy
	 0voRXtcfpiJJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF947C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 18:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171916574282.7653.5046177082620492788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aec2b87959af82bf8797c2c559bd40231c924b2eedd294dd935a82cc5e5dc924
Date: Sun, 23 Jun 2024 18:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719165742
