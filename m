Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6924F14A85
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 07:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719647663; cv=none; b=Cs1nlDU+Fw7JI5ivCTWKNpkQjICqOy6c6UAK7kCr38PMWI0Mq9Ns5XkVsjP9iUQEeXZKLub2iIHY3I5wk9SalyFMMcMCG+mnBZI5HJuck/HyJFYx+7kwRbw0dLCyltHzhYIocv97ifI0/YIOkpVWT7ltQPwUmpp/vRIksa2nH0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719647663; c=relaxed/simple;
	bh=bZLOL40Ygfc4w4NXSzXxLmx91RM3Ff/b0XPWp3kEonA=;
	h=To:Subject:From:Message-Id:Date; b=VMh0qnZj6wTX7iiH1HxG+lvjO16jjhja6Nv+CVCkW0c8oq7F4gi2T+DwThg55w3IeLrzyljgwHtS8gWg6lGTVMmH/jevTj2ZOZ+dYEj0LX4Yeap2lc+1cU5T5JqeXLsRBalABLkDZghOFzzmfiWD0684bevtVZbQuUZKfEwlFfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sf3goK4P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sf3goK4P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1E64C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 07:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719647662;
	bh=bZLOL40Ygfc4w4NXSzXxLmx91RM3Ff/b0XPWp3kEonA=;
	h=To:Subject:From:Date:From;
	b=sf3goK4PGOqmBFnAVGmuqt6CJvLGjETcmPpzFVeL4O5+L7ALYuA4UmsJUTbBcVHRW
	 ZVcFqGKWxj7Xop7+OopIx9qBjKditDz1DwxTPlX9pMNwDVsKW54v1xN2/SbKebqnlP
	 3VREa9RelMSrLeLEwE/1MCSEI3GBduhzKy9TpfPwl6AmUPEWUvWPne/EglP3jXrA3B
	 T4TV0dTCpp1XYetUHO2iHb1XdplCYOFl4DjfJd3AXfQgFVjIorg3OzQx3NUNb5T6zH
	 iRkt8LPgULqO4TkTKFxUWm+qg8B2OV8ejtpCZnsUxBTqDMNY8Ztcrl94d2daKLOEG1
	 6U1aU2c/vivug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0C10C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 07:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171964766280.25730.11826756864974405801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f310c06e5b708c4ef87403347ed25a04d6f839d5c3e30fe935d20b2e0fbd1179
Date: Sat, 29 Jun 2024 07:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719647662
