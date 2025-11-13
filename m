Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 248BA34EF0B
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763037594; cv=none; b=uZP8XVXfbb7YwAXprHMoNiwXtUjgpzzJHQAytRC1hNHvPVNlzIJ/m1hYecfGX9i43e/XAXRtAo8IqBts8mU6Hh3kSA2xb/rLMVH1JXY2HYbxM20bCV9LSAqVMwJzabnH22idXH1e/P3hGIEJXqHdb+1RcCY3CnapjHq/wAQIUdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763037594; c=relaxed/simple;
	bh=4CRF5qHf/L4syjjDxnFS1ZYWPRMqzneI74Zhj50i7tk=;
	h=To:Subject:From:Message-Id:Date; b=QEbU8m+4KsBkT76OOTjeNUCLFKDvPuO0LmPNSS1/GsmUdOqGXg+yxtRB09+S7Ykg2puPWBFi1/p9b7mtCq/Zid0BiAXpo3fsabf6E31AUl5Yecj5FwU261fMZtmj/uouCa+oRjYRnlx6ua8JiYmpJ83J5MuKgVJSaJhKux36bTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NBf/LY++; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NBf/LY++"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A380DC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763037593;
	bh=4CRF5qHf/L4syjjDxnFS1ZYWPRMqzneI74Zhj50i7tk=;
	h=To:Subject:From:Date:From;
	b=NBf/LY++L6k9aKX/5rgeCkSiu+4prA0QeRioBhAbAi4Yx9Ky6Bds+eHJ7dD/HbOto
	 6utqtaHTSTox5z8TwirxTZ1B+8fOJ3Ygs9y+vMFIoQKJzTqV3edbN/Gg7KvWiZN+7r
	 FEwIKPt2mEy0oTFfVzpr2+jL8yXY4E7NpjKJ8GTNGW3SECqAAOCJRZP57k9nuACT7D
	 NhMeVhhjWfMpvdFrFmuhoWuRRTNY7epaIU8m1WHsm23Jwzab46kCwfBq10e7IeoJ59
	 02dxZHVNdtCoRAopTIQtGlbmu9WnRCT3ZV29q0PI8l0ND/6ePc3ATdTONiJw4qTOr+
	 KPStXq5QCtjHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C8ACD6E4B
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176303759360.24093.17926061294205009330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3598fc782014cba7460d7d0ce919d2f87271a9f1d1ffe33334e700687c97bc37
Date: Thu, 13 Nov 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763037593
