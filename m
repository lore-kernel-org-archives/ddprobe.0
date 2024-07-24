Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F7AF152511
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721828154; cv=none; b=laJo8YW7lWNlI190+UvXOidSUNnCAqj2TC4UQgbOfGRHCvKdvH8KjOhIa490HULssQosdOVlUlE32w3OtyRCk+s42EaAuXGwXjFqQGnbzJNvg7sDCn2LzIV6xUGX1/yRTrg3rEid5nk+Sio7xpUbMCUPsGKAuFUaDtaIXxXlXZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721828154; c=relaxed/simple;
	bh=9eDqUonIWx2cX85rqJWx6QAyTTXvaHdHvv4VLNW5sVU=;
	h=To:Subject:From:Message-Id:Date; b=fzibpM6rB4kOdqSPmJS/gA/lMJy4cejGGLw91NMciQbyLazWCf3XKBOGhQkfarhmhId5dQ7bpteX0QJIkdS2clDfZMP9GTjgopXMY9HeqHQ6RqSLjOORhIZlNp/3JJ/xUfP45fr2ihFxmatOqo9TNN4F6mHNMzVnUUrp6lD5wqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XveU7qYS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XveU7qYS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D15C32782
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721828153;
	bh=9eDqUonIWx2cX85rqJWx6QAyTTXvaHdHvv4VLNW5sVU=;
	h=To:Subject:From:Date:From;
	b=XveU7qYSEV4HSCdJiCAE+uKStIhVVzkpeBzldbzjyuPaHsJfHqKPtfVavQy54Ao5N
	 TN0exRFCrvI84ezw0xuri4PnuuhRuWlpXxIXsYe8Kpqb8l4UYA+9IfDc5BXM7YWE7u
	 Z0G5vOkTGE0tYsqt9E6jr8RpLt4dG/hvFSJxBrlJO+Sv3afqdPA1IE6WkPY/j2EhUD
	 4dMP+XXZ8CN1YhokdbYkA3OEK+u+zKXdJmA/njEDXsJcEZpNfsogiAnHxQy/D36nQ7
	 Hs/LQvaA5Ulw6xp/XIpSZQ370NmC55TZS6jyxR1Aselrd9Mnk1B3OnOruk1YNKf32k
	 B89rMCCQh38Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912E2C3DA61
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172182815358.6155.9061416029587317559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de4b9111573392ddfc4749299f297be6fe382ccb7cd6dfc758a8c8ac676208a3
Date: Wed, 24 Jul 2024 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721828153
