Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 053A12F872
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 16:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773677694; cv=none; b=pL02DkMUIaOWqH2Eu7epzPChzgottRmExTaJD8DyCdV6krEuGUEW5VWBsyOy7uo2iSZlxsIlIP3Dr8WTWgywYHmWnL/NpU0Xo6VkiXFQs7xTClMvb2P4pn4EW/Sa0CYg2WLg4ax8OBA+Zf5ehoLtMzKGqfQ3kc8PzwlJDnOuhTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773677694; c=relaxed/simple;
	bh=edg5PnDK4IYfWxssG4WvMHqiFH/M5360wwA2wgqvaWs=;
	h=To:Subject:From:Message-Id:Date; b=OsXZ5bojJnmNlbVC5/FpsBOQcgl20mc/nrZlN7F0DuiLv64ABNcIfQszdWkC3KMwpVfQV9aGnbFnDeuhd81oHRA1yCzKYe7G3BMCCZO0Lh+x7VJ7KAUVT8RRkH7kU/E+SSEpyhTP0vwOF3y96zAa02SAkFhYfF4DJgn7VI89KaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pU3bjoyu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pU3bjoyu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D6EC19425
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 16:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773677693;
	bh=edg5PnDK4IYfWxssG4WvMHqiFH/M5360wwA2wgqvaWs=;
	h=To:Subject:From:Date:From;
	b=pU3bjoyu01PHECMu4aHENYn0/F6HzlR3hY+cLp4TqB4NDbOjetjufrWfWNjhuNsK6
	 PSuqWEBHcICAJEck3AXF7TJklYF7QLr4Ps19eDNI5ab96+jTpB3cr93Ml+HZQWWA89
	 /Gnlt7eMtMHr/sVD+zKMlXF5bQC4d88t7KQtzs9ejjbJ9bQW82kyhhZ4tMV3M5AGKJ
	 TrMgt2foG55tlfsDlVz/E2uAy4KOuPlTkqwYr3+7V4Qz7m3/0j5t44fXygiEVnPEYf
	 vLCt6XR4udCZuKlWKTEYcDqwGSMVDv12ztHrDglI3xzeqN8jjPe1LBVm6nCsVR6E1L
	 Jgqz+jeWCdNkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9338CF53D6E
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 16:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177367769359.7284.10604532103982434306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23774da22187b29cd98b0ec83e889111d06f3ee137e9eea3eaeafdbf8d54c7f0
Date: Mon, 16 Mar 2026 16:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773677693
