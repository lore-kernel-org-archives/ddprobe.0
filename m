Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2926B2D9ED1
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 18:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764267174; cv=none; b=m/kJ9f6kHanYT6BjC7ESfZcaCb4wlPG50W745Fiuxsh5qqJeAJFAFJ8AUZqRw4ihLLW7RuCDcEcqjL3dJ5ZDhzWyhqv5bUA/DfnHpYOhRyIHe3/S3lABdNX9E8KOrHibTMGseI1/mPXkegGXyl48RauqQ07h9iXCJ2hrZQYQ914=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764267174; c=relaxed/simple;
	bh=pKQhqkKYhd5NiCKXUCs2HfoBaagPIOJKUOT9Fcs3zy8=;
	h=To:Subject:From:Message-Id:Date; b=HXXWLRH4vQbRtCb9JdFvrpbccK5dX1PMcY57/zlhWDAmk9HHe6aAVlaycEZTH43IqEPmNg6zYJd7/uSKj/WlWOG3t7YICDxb5XhZZV5aR95CWlO8t28xfs+9ZjqgHWyj++8C0Mg4oItx4smDDpudICDxY2BsTdH2eGPLpA1Dv+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RScuCAtg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RScuCAtg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A398AC4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 18:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764267173;
	bh=pKQhqkKYhd5NiCKXUCs2HfoBaagPIOJKUOT9Fcs3zy8=;
	h=To:Subject:From:Date:From;
	b=RScuCAtggjcj/l4whapaLDeQqO6ywrA11lV7e2fOadrl0/e0cZbcVsOoWbG9cNm1Q
	 iic2fWEsx3tZIJJQUur43LKsJlbBHO9BjbIQWM97+r606EIRB8G8/A93z2hNsim2r3
	 EVMmxGYVqr32M7UnFxddbGyZYXfAGbDvEG6/K1Rg1SFKFcO6xz7wQBFJ8Yr0K8W0gM
	 dVb8DUXo94vCPHp2QSqY+tNeJ0ivXPvX8gxI6yjYYWK44EKwiR34pT1rOmQmIjgRci
	 JfbDj6gIih67M1hrk/OnYBVVJQ2UuMpW/+YuO010hSdIoRDO3kRN/5mxWRmmPau7Il
	 tXf4YhUERGLEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9136ED111A8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 18:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176426717358.9970.12371801243703988062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6e45947d6ca3681ba55723df3f0fbb1435898afea10eb09d39e056071ddf39d
Date: Thu, 27 Nov 2025 18:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764267173
