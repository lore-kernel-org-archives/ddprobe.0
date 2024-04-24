Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2252F16D4F8
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 22:11:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713996683; cv=none; b=CMw4RaRJrDTUvk1BMzgN9/CY5R/68PlXzCZbTtQrh0jM7RJNakFOkRqAt3SYBk0qrMPl5MrSNpSfAkmD9exEGdOSE8Zku9RULKLS3maDT9dSqetboD7AcZ9W3R2KQsolntNTt4mJi1dgIxYwWuqv8zBbOKh/Xz7bncDqq8f7Qik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713996683; c=relaxed/simple;
	bh=CKN4ifW0THnqrVZ3A0Cd+x4PvxJy2RzWVAWFKJYGn+0=;
	h=To:Subject:From:Message-Id:Date; b=qRAFJvwaQd7ZRnmJ/8U94LqaS7cgv2i9fTGRc8jzOMndK46MUDxm3NE1sSZ98JKgW/4JEnNyh390nIKS7eLxk5iDcXOv8G36mr6GvRFLs8CxOWmCzfuFKHWtUPCIsTCHYIqNlxdINEolGm54sYlymHfGnrSicyoSyO6zYr7C7n8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SWcq/4VJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SWcq/4VJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCEFFC32782
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 22:11:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713996682;
	bh=CKN4ifW0THnqrVZ3A0Cd+x4PvxJy2RzWVAWFKJYGn+0=;
	h=To:Subject:From:Date:From;
	b=SWcq/4VJaB+6IlX41gwJ/Ag2HCXCIl/jY3L2ma9l6V0zDYIYJU3b76++ql0UJlp0I
	 1oJ4R+NDKSnqxzYNLBnL0Udq4DPm6gPVzTmGZ9XTmrAXtJhcZF5jMyMhPBDf66oj9G
	 PbHHbgg6GC7JryHNIn9P2NmvIpfa3gN7A7JL0SaM8hBzNheJFa3MginV9fa3s1IJNs
	 qnqlumu1+A0WbBWvsfJMZOKpXVZwBK6P43fiCJeFsN6F19j2ItwSv1QryAe3y/1jF5
	 uPpauQJd2ALTv7IBIJLTUE1Eo06XhY6ATia9LGKcD8o3TmrT9NdI2+tu14lT4rPVg0
	 J5LEcjpgomKZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2E99C19F4E
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 22:11:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171399668278.21561.15827518857813341211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41db611f9b467cf059519f7f348ec7cc9ac4a8ec60107f9956675fd667a46f3a
Date: Wed, 24 Apr 2024 22:11:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713996682
