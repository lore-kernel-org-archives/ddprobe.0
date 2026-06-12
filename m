Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E08F3B1002
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 13:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781271394; cv=none; b=kAp3v8ioLUZvaAejYsH2yW1nKhqBFhFW9Reb5Sxe5cQbv1sNhbNc6Z6uqWj41/eM1dmmk3QmPjuvlbBAfbtLNKAEFtC0sJbgE0EAsMQDOPuMjxVLIfI/dgALgoriPewHWXG3Y+DhgAiIQJOsPVB80n+4J4Gl5mPXEYKVE4wpGSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781271394; c=relaxed/simple;
	bh=e5aJ2+9HjNXd4oGCd9bxFTGrkLYL4NcXC1O7yD8YqHE=;
	h=To:Subject:From:Message-Id:Date; b=QDQv99QYaVXMeTClENbtLYys2uU9pZ+E54RkOA+S4EacWrvOxkCkJxCaQ05BuRynYvBfA6HNq/4UicjUru1v5cgdV2OzVibO5J3q86FLhLlLmBboC3Ao7IlOUs+eHMW6W9mJHfeSDiLLm/7XzexjOjD4OOFZJ1la1rhujLwl6ro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ULGnpQFd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ULGnpQFd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE7C8C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 13:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781271393;
	bh=e5aJ2+9HjNXd4oGCd9bxFTGrkLYL4NcXC1O7yD8YqHE=;
	h=To:Subject:From:Date:From;
	b=ULGnpQFdp0ULaucnNxnMR4MaHXWdxmU6xD2wzgYHyf4sdS5MylAOlDMMlHHTm0Rye
	 FYyuINeV4ZJSNWVg8O/TwRx5EyYgct3uiJUQ1KJUXs4c5GnUJ9fLg+EnOTLJdJAee0
	 ia6elcwE39olldHKjCwQZ6lVnwCENQh0i2htDS3lmyQjZVYmtDo5NLrJHAG/+ArAq0
	 Lm520EIeUsing/uu4rM37UT9PcqlE4u3RrnNFvi7sPuuMSottjkc8gvXPWYe6xltpS
	 MwCLm4M5nad9jww1+E4L56Rre6yWTxL1vYspxnH8K8QNJh9Dbng/ABvk4rWwhqoPeN
	 Q6gFHva0QH/EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC82ACD98CE
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 13:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178127139368.2522.16791595227656451464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5586c921dd8ebdb0ec94347f15af98db1c091e656ef613ff13643668dc4623a
Date: Fri, 12 Jun 2026 13:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781271393
