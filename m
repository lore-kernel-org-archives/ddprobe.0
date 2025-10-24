Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D4681FBEAC
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761278995; cv=none; b=UDbGjJrmijyzRKD89PNV3QP1gt0aYxq52pmFiEvTmzRHPZKSKb1PlcaZRgAlEYaGwaAsRE0NQV6+YS4lnCVcf+Z5Rn843IbrpermFSpiFOlRCZSVdRBQHadFm2Ss2hCatlMmElFyQ34zwg+7jIM7fp+pyu9JCYLOKt0Qmt7n0Io=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761278995; c=relaxed/simple;
	bh=80aMJQVgG4N+VEDd/M6NoqhuOMeJNTVf5DiwrrArkPQ=;
	h=To:Subject:From:Message-Id:Date; b=ZhGJZrK9GKdrHMY6DcmjtsvF95zJGBVWm7xopxz8WfLchneeQxueFrdQ+Yy8HnGK/HItM8tdklMP0jWEqgnkqqRNyymHxWQJKnla4+3JVGz36MpHO38VDXrEPWSKtzIQ+cZh8y36HSO02DD6dbCvSYgClGin6lgsq5kJbZ4UfUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jbrSgigS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jbrSgigS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2256C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761278993;
	bh=80aMJQVgG4N+VEDd/M6NoqhuOMeJNTVf5DiwrrArkPQ=;
	h=To:Subject:From:Date:From;
	b=jbrSgigSYtybSiYrKpMqIsb7s5jD1vtiCIPsgtvNu/hYF/gbuMgVPi1Lb4pmXYHbA
	 l1R+ju9qAd08IAAY7pVX4hxVGaGLt+TstLrcf1huLGR7PA9zulqemcypAClykPZxd7
	 s6qHXj8vAZIjynYC0R5rhgCBRcccWt6UYfdnQZhhYvsHPmLQjJfN0L5lnaQjABZLm+
	 88uDj0u5/arLqL8XsAfYWteo9UCJ37FfXDrY9F6tswZqPcbSj9hHVpkF5Pe7nC5b5x
	 TqWw6ozzi08CbSJSy6gPt2ag9wzXiWkRbMuByIIohGtc6oN41jb1qn9j+lbUF3i/EG
	 mS6FS2B/yg3kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA30CCD1A5
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176127899358.6777.6737920822483261158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9791f3dfc0390153e9945a87efd5c3fa896eaae35cf544957e094c9a4652a5e4
Date: Fri, 24 Oct 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761278993
