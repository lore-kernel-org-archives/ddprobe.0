Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15C00374E53
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 22:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773612894; cv=none; b=nke225A7wa6H1IysGfKN5P3MhDKBevTFDRoUlix3oBV1JxmJR0wyDvvKR1UBCgaaWz8afk5bYiqircpPoxby3LtYGWsGZBPKvZ1TDZO1vOBDPP1IBNgYhpRM0eyjzXjWJNpVsfEM+WznQQ3+Yi//9KnolkeTBuxAMH9lGRVQ0Ow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773612894; c=relaxed/simple;
	bh=jedxtdDDQl+mSldQgKvWM7qzX+ztF7LFpoeGFO7G+rk=;
	h=To:Subject:From:Message-Id:Date; b=Jr3+qCoMZkib4LwCIYZO+gA8WosoCRfzTSI+BqeWj+b90MZlKPXmrEVXU1QlVGyVrqX/dmnJb+ZzbuYwL17krGsAnDPobJRDpdNRaNdRbPuoAq2Zupa8NZiinmRy5uyPh9hmj1CHQ1Erz9RF0Sguat4UGIGj6SKEFw3wszhVw5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c6zsOSi3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c6zsOSi3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74CCC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 22:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773612893;
	bh=jedxtdDDQl+mSldQgKvWM7qzX+ztF7LFpoeGFO7G+rk=;
	h=To:Subject:From:Date:From;
	b=c6zsOSi3dcEoKfCzxhUUpiglEJ+qAXM33Jvb+sCNnxp9lv+B9l2fzWBV3pu5pr9JU
	 y9O8MgIvhz0UKFrtQUe2pQKA5TUJS66Yj9JFLEFdx3w+pCSykYVXfw+vpVi27afl4t
	 SvauHGycwpaN35RW4+ZrrRwDGclRtT1tl/5tPSje8NMaNRHdnJNuqAUgDBVGT+IWCA
	 b4xwokosuc2sUQd6JHvBeqAcLK+v8rkE9uNijM2chuTBGtW7OE7m8KA9eYmNannnQA
	 IGzBs9dGvI0LKz3i43pEP3vxozIn+7j65T19aXmPeCAmkExh3h/2DDqNsBa1sEJEvY
	 c33ZV41Y8UPxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921F7F3028A
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 22:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177361289357.27739.16699535400954071393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f919c3faae5800ea437b3c42fa69d06d66c6cb44903247ad93349167267dcf2
Date: Sun, 15 Mar 2026 22:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773612893
