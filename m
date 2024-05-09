Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 525FD33F7
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 00:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715214743; cv=none; b=UULKZ7Co5JPbF6GYWnnMv14nWn7mLyh+CToVH3ZWliXnLRg+bDh4uo4LoLSCTmhkSTGm3PJrT4McnxTg1Z/jNuhMkGAxUs08HrA8XjyDQAEboryX4R//a9wH2QQmhrBY6kDE5GMphC/MxiINfiRMKGZGCsT0Wb5CP9QSzoiRQZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715214743; c=relaxed/simple;
	bh=l4OOYGMiup/4BA/wxw0uIXyvPMVQkEzQINMnQR9/ctE=;
	h=To:Subject:From:Message-Id:Date; b=XX+bYvzVmzgCOX6i3LPbzjPvbdMHT3U5YhvK2lnJ3jathn8spcv5W7pxApnLngirDzX7Qqg+hJNkev6mynPDnDMPDcPHoSUa8kyMBBS3sweG/8jobJKiOTMt2f9f8kIZmx7j8DQTRDc5p5tazpmQUr4XmpcXHuiyk1eNTCIOCqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NTfVBUnS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NTfVBUnS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8BF1C113CC
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 00:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715214742;
	bh=l4OOYGMiup/4BA/wxw0uIXyvPMVQkEzQINMnQR9/ctE=;
	h=To:Subject:From:Date:From;
	b=NTfVBUnS2Ez3vQs2le/8EabyL20vFM744kZKWWEDzWaTUjhHFp2O8u9jyZ/zJ0GHh
	 fk/yEHIvyC/JZmV8xo5f1i/9i6HO5+dsoRUFfRy1wDI7CXBieVvn4x8CyFFJSUPQq0
	 RbQQuGC726mHeW8PW9J+Kdz8ybVbDRUKy4gjCVVRhiKdxlJoOU6OHIAe9XN9tsvdqT
	 Y6hNEqEElD613/133xlfS12B+iEhTHMddTIEb4mVf6Y/X2vDclZA0vQCBF3h7V00If
	 +vhIjTGLiFH8ImGkOXwHFBwlV38yLI9z7TtohRitLFVY6LDC9wSxdjjwORl042c2+D
	 JcvXiPB8WL1Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA117C04FFE
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 00:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171521474275.23710.11728332993601617315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f168f7d73e60a94df68e1602a80f95a737f3b71100b26e7d553177812c063ce7
Date: Thu, 09 May 2024 00:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715214742
