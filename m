Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 536B274C14
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 14:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782050794; cv=none; b=RABhOIXQNzHg21YZjl/4lbCucfXP5UugUM0F1R6rg8vXpzk3pHiLkJCjn48SglatgvVnXygpAqkeoVypUm8XwKazoIhwCP+t8P5RKk1/1Pvvtrt6AStYwc7ExnUXrJDtIK1ASa8i6QZ4I1CjA1cvjARdvIctBxLo2CVecelIXpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782050794; c=relaxed/simple;
	bh=eNaPZ6veP+6XcBxA7z7qJxkV8TbB6MvjiQkkqYJO+IE=;
	h=To:Subject:From:Message-Id:Date; b=CrALn4xjIBtvuddsgYolGLCCHLCgfAt7BAWIHcJN0+gmBTVVcb3by/7JrD0obOV9zJLl/Z7V7eWjeAU2Zn2IVGPC8nqSWIYo7RU90gZu3Lo5/0WJT/5cH73wDW6oRTn0w18OynB+04ks3U0EsmpdEJPnpVFwStZo/M0JX5P1BOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EbX96DMz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EbX96DMz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E14FEC2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 14:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782050793;
	bh=eNaPZ6veP+6XcBxA7z7qJxkV8TbB6MvjiQkkqYJO+IE=;
	h=To:Subject:From:Date:From;
	b=EbX96DMzzN0attOQFOg8VFwFWw2gttt7ddlneFDiVEtwmxEkA75IwSfDO8+jQM3b1
	 tZ0EHj6KBSl1xaQF6W26o7zHtaNTWOEbiqXksaezmdiDRwpd49QdvH9gYDvgsokXII
	 /SqS6A5Z2amfIFZYQvyqAtPRNGmC0fb5xabSi2HrJLsh9gbyYBv56znZ/Ddfd3MwXc
	 YzCMkmZyLM61tHnAustZwAsnwIqcTpQBoo10ytBPIFAg1+vCqEisQTCIT7lLJM2Awt
	 em31/gjdFUpE8JI05YixhPymAaqRwSFIlN4uUbxQaczLiOiGhOrAFlWptFE1jcNRxE
	 zmmX8R3+6j8Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B74C8CD98F2
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 14:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178205079372.3452.17741970591210874120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 491635dc4b50c0dd7fb4cf2972c701a0ec761b9b45ac7b6efc8264ceb8243d45
Date: Sun, 21 Jun 2026 14:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782050793
