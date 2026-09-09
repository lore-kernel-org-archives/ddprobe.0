Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC374489FAC
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 22:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788991834; cv=none; b=RFzlGYiM6MUD0YfG0EESqiw/14Rb5g4hvknSQPh301WayrYwFqbs6MmgpDHF8QhTdFYqt8IvgEpMUIwDIEszxJEdGTM9gCDpGbmFSgM7TkRUy+UHdWG+gbOppvk5iYlaE80xy5I+uu9rAMD831/WuCZ79nM1R4yILQKDHJmcpcs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788991834; c=relaxed/simple;
	bh=ybtEtnGhKIHks86fkfgJbC2faf7NxmMXgJO3kjQ8GZI=;
	h=To:Subject:From:Message-Id:Date; b=bfpldIgKWmTdc/Clh7bpSf1662/F7STSF7iHSQqklu9CcOE1pRkm43KhU4gIcng/S5vHk0826cUatNKFGsqAGJha2f3ezxc73tgRQulvdefGNJNDrZbHYHKQvilTcstDovRwEWg3Why48F8kbV2bT+CxTc+9qZUJaMFqtSmsQkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sGMlTI5N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sGMlTI5N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA512C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788991833;
	bh=ybtEtnGhKIHks86fkfgJbC2faf7NxmMXgJO3kjQ8GZI=;
	h=To:Subject:From:Date:From;
	b=sGMlTI5N6GKrBDc100SLRsoWMyaZ61qvZ6ETQx/fyX/oA5xMSMVi7Pmcr13WoUfmV
	 4bhH9oEYU0lkCDKkrzSX6vD3QRm4pu+Fgvc5G+JFZ9aQG0lW2nRzcM35XpuuMtu42K
	 perLBRA56iXM99Ze/5tYI0Gigfvv5EQA0JiYZbJCD3okSd0WHcKhERoRvo4/YugUXQ
	 YVzw7pfJtgIbjJnA234aqE74V3b48zfA5bmKSGRnOLAjWD9NXWUBrEwGygEWHauEZr
	 9fKVvtQjTDLpqiz/xuMzoifisLBjuJr3u354eFMeEQhagkthxT1BXFGUTcxx3qyTpR
	 UFluqh+Fq0l/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2D6CC79FB7
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178899183372.32107.3479665238762140672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d602d0641bbb2e7f41bb8dffd637c76d4c7350e62b990c1bb52bd934ff3eadf
Date: Wed, 09 Sep 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788991833
