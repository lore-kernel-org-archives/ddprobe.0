Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29AE924A069
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 05:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771652094; cv=none; b=n4Zi65Ye3pzrEr+AO+E8CPlR+Wk1+AeVcigroYRT7GOVyPeKiuOjLt0AH1Ov6XfTFUpMeagrUTvqYkCafn7HvKpHDxMnFUI5oVZr/SWujFD7D3kUOYYtpX/YQsi9l20Z0dWdYpwBIjiaRwBD7mVd4ZOgTVD5JIJHacuixs9prDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771652094; c=relaxed/simple;
	bh=AJHTViweurOPUOQMsL3dW1H9UlBseJdCYz31sM8rldQ=;
	h=To:Subject:From:Message-Id:Date; b=lrNhDZQqB4YyMSqzks6T6qGMpsSqebR91sn62veLw/rZp2ivuI2yURS+pFwbNj8wFbWI/GgKFPPlyHhUyfDnmxXhhnSkSs72R9CtkCnM7aA8+/wrtElYxP5GnqocyvGw2rZamX5G6p3zVwCTWp6fVpjq0/SdBVfYTG/N6eHLP84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WxUqBCIu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WxUqBCIu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1480C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 05:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771652093;
	bh=AJHTViweurOPUOQMsL3dW1H9UlBseJdCYz31sM8rldQ=;
	h=To:Subject:From:Date:From;
	b=WxUqBCIut1Hpb27OsGaB5rRQEfwew4+M7e73fK23P9UGzGt+u6ogAPVZbmfoMg4rk
	 3lNcqHgu/WHHVut8HLyNqyOTBDElRA4e4E826nbqw3TGuKO477Uwr2HNfYnFBzoZoD
	 FGr3YZ6WKgttW6w6fZuWoBn35Nwg/+zY16OmeaFHF9XGVXiFcPnPmxiZOuuE4il/un
	 8/tneg1Nhgt3hJ54JYqsoaixEhbdrq2yk+fEJHFv3M5nA7O56nsjZ5iweu4r/0jg3k
	 ghfO4GYu5K87kULnIMTyxv+m09VPl5ZA5az/HfMEtJhLbBYs2OmG2eeTk4GHzoIDyc
	 yJnlgTfSOEFiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9956BC61CE0
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 05:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177165209360.13658.12430782652885767349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e13449902b4b41010d308517cf9baafb84f63cebc4a34c878da1cacfb7fe237e
Date: Sat, 21 Feb 2026 05:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771652093
