Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C2CB2236F0
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 06:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783925914; cv=none; b=G5hOPo2kXMuuiALQkbzKz/TbiTveAFGK9CBqXD9dD0BxclCMmBNCUGtbkKvR+ZDZIKhQ/OHhwxxSR/Wrk0Gs3qHtI44uPjN7V9HgF/jvXgWI43IzI8gojQNbOHhP90x64O7kBsn+CHNhogn/crlA9J0UvHqGeVLWm5V+fXBb5N8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783925914; c=relaxed/simple;
	bh=7Ix1ReXm0aKnFq2TsxVADh6CTmIqBBDauz9NG9lIkas=;
	h=To:Subject:From:Message-Id:Date; b=SbE/av+mBzjw7Ita6AP8za7YTEMj1ZuzjanEvQPAjbgx1GU5kZ09xjznjK8Du5+Ta3N0YOUX+eiFvdSSNhaNDxBcP37JqwyjGhaJC5IT8olYLJK96wX6+KNPRSKEeTc740LzO6Acam9GxNeJM9nZBCxw21niPpaABexoOwTt8uo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AStPs0jT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AStPs0jT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0F0BC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 06:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783925913;
	bh=7Ix1ReXm0aKnFq2TsxVADh6CTmIqBBDauz9NG9lIkas=;
	h=To:Subject:From:Date:From;
	b=AStPs0jTAhhN41S5h1/SbviCZ2Fhr+BJFRcV3LnTMfZjU+dPXWSWbhVRxYWgk4P3o
	 juMs+wtcz/xZhwpiNBIKSNRXFlIThKJ82w9yQvOqs5aH54lX8Il9j8EjrxEOzlmJC8
	 wLGsd3AM+D7jXfBMdE6fBAgoTob8RWwDBToFFN2WouxDepWlwE35N48gKDj4wfO0h9
	 v/ElP952YK9RXps6WMTFV3EVUqFvLRbcAuSSgRHheb5xQcvlBGVI0W/d4l29hDslAC
	 AKPkrtPQQFIXNDtGyA/wxB19toouDw82+2bXi/Lp8+vNRaeMB16rLK8LCQAOd2oM89
	 t7ncc5yKCEGMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD48FC43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 06:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178392591370.15407.2763283818606249910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6df7277f4a25bd5e8e4787a7594e0658bc7a96042d15c5436baac3a92b3054cc
Date: Mon, 13 Jul 2026 06:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783925913
