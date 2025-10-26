Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DB002F85B
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761475794; cv=none; b=tOysqc4x6vAJ+vfdhty1x21fSgvjqk5x8k9R++wP5u5qFng6FPK+h3gEyniMNX+MR6E34Rxo39OsxJcQCf+4KizhKSm60D7CJdk2TddzJVyyc3Yu0xnEW8kDHR1TXOHeZ/DFMDk7aXCa6llamR6trV8dv0JcWQewNtcIuUdv51I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761475794; c=relaxed/simple;
	bh=wQzh3rlGqpxgxH29JtjHVD7oyisJXOvtWjVoqUkk7j8=;
	h=To:Subject:From:Message-Id:Date; b=Cc+sYgVOevJl2nJQLiFdANynsMOxvlP77/ulubht4SvLy6wmeWFZR1VcvQfUe9YeUSG7JbLgf6Qoo0oA/jNAwlNIG/x+OhnAzlFebcIRN04jSm21PyN6omV2bHs5IDau1QTQ/tmoVxn/Ci9opbPYaxcyXYssMMZfV3W7Z2CIThk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tmv9HhO5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tmv9HhO5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E3FC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761475793;
	bh=wQzh3rlGqpxgxH29JtjHVD7oyisJXOvtWjVoqUkk7j8=;
	h=To:Subject:From:Date:From;
	b=Tmv9HhO5R7rGEqqoFZhE2dT6Y3UxFbSAd4rBSX6yojjCY26RshvD5XJtCOPl6cCjT
	 fjsXyqbiE+htnGiQPN6Y+D8MDxgRjETo2IwqmhnK4IxQWHKO4sso/G/i76qox9mNT+
	 hik5pUEcrPIhYJ4FKka0UiVnQjS7mDYZ/xK33GrH7M7F05vD26v1PaMJnTnzS5KSEv
	 WQ76MBbfYSeYNn6bOJEOEPCk4iCY9iTtAczUCjL5h4pda5Zppr8bLZJnVz3NMvhxCd
	 eeVPbKB+bS5nwdNJC/QlJFg4vcR17gI143MPfVbal9N9y0WfC7ufwxL0tG5Qrk/aJ+
	 hIeCK4CHkKENg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95682CCD193
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176147579358.26186.2890321875642555205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ba38753838e08291a142297399386dc1160d60e1833dbdac013b414491d2884
Date: Sun, 26 Oct 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761475793
