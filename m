Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 412B3367292
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 14:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789481434; cv=none; b=a/wcBP3WzWkdQvCPhW+hQUPTQwfAW0Va4WOSb/XcG5nCX/MZUh+kSZQ11j3V/TNmMkA1WYdRsS1th88AlvScNWn+6DFbmb3YIk4MvxfXd41rHe5k6GPkuHHLwN4co4c6/8uMXJp0blBYX7d/L5I16hXHvvyuKDYf4qn6cGfdJJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789481434; c=relaxed/simple;
	bh=DWYdcfAUpdqo2rs+gN0zQ6aTi+QHdcXad0hR53CJdHg=;
	h=To:Subject:From:Message-Id:Date; b=XoC2D11gq5OuNNiCHxh9Hu6G6tsq1JTyjwkKSgT6x7d9XrdljD1c6qIIGYQv6QVg+vrTco0fy43mhLahmqwV0O6uxkY+EkO9CTC5Xje10aXUJmuAoxdcYG0sGheiQ1lmHpGkCUMaR13ZNTd5fAKzK8XDi/QJvggvtsC4ltpV5NU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YzltdX+y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YzltdX+y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2641C2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789481433;
	bh=DWYdcfAUpdqo2rs+gN0zQ6aTi+QHdcXad0hR53CJdHg=;
	h=To:Subject:From:Date:From;
	b=YzltdX+yum6YgS3yB4WRgoNNN8k2Q8gMLopPhCB6g3TINb9Iqhp8dM1/3vc5famwl
	 OK1fpL26waekYSon/10kuPkglrbVpES8HLjYPaO0vKEvSEmVBjtzcAZyxJI9DpaCtd
	 4pZSnBnmZfjkoi/k+7qPBdgbgrL6+tKLW0CLuxhQD9LNyxPulKRhY0OmlFyhrFMESw
	 jH7XHZmBRlHulL29GmQgDplEUvDo/ZdQuxZXRPckJuRSzskNEOGMRgq76rKfrVmX+8
	 XTVCSPLRXRDRMQbj14WsXQA50RZHVpjlPouR0i0JjRkbWmK57X+WmqBTJc+sSiYfKz
	 /SWf6G+zrlnDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA067C88E75
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178948143368.21720.16366910934580244392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5dc59750cae3354c0b8b2de113a4e2540a51e6e29356a2b8dfe5c275d72508f
Date: Tue, 15 Sep 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789481433
