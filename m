Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25973A59
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 02:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763776914; cv=none; b=K6FdcASMXgtcQhBCX+axSgKwZAubXKGQNZZVTmV6DGacEpU1SRo2QXyDAJxLfEk3KR+Alf5ezCjjxTR7jqb6WwvVbE7c2IJWcesOhVpOxxEJ3qKi0A403FV6QlJkLfZHDMH6HP0TrAUDloadurwxYf/+jJhFgAs2apc3vYyz/uE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763776914; c=relaxed/simple;
	bh=5sB1Wkf6QaCgdJqgmqAs5tMRfZqSpNbDsKROi00nKKg=;
	h=To:Subject:From:Message-Id:Date; b=mtmOJh8Rnj24pHAyaWY8aTW220lnb0gWd+CUA1Im49zv299/q/61Gn/k4AEwz+bhyPAy8ff9dV7aTo1nHjYuFNLxv0oQn0fdqoZiT5NoiEcScivVWudsr8AM6yojh2i4rc+YQnWQlzVF7qWFgLTTlTkPZ01J4dvCrCUHkSpd1TI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tKJgyeZQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tKJgyeZQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0109C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 02:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763776913;
	bh=5sB1Wkf6QaCgdJqgmqAs5tMRfZqSpNbDsKROi00nKKg=;
	h=To:Subject:From:Date:From;
	b=tKJgyeZQgQRdk39/lxiTWW3iLTXZiaRnmYqE2bkh/P+tBYakWzZdBOHJA179eah/8
	 /d62rv+w4eTp/lapOl09OUS7wtuyY81pwmluJ1Ljo2QoGdMV0dzic377d9CoZTUmDB
	 92qSp65DXkcs13BxWfXXzM5TlxxuU/anuWflOlw06caok7CHiGyi+kznTGWfH5m81c
	 sqblfj5K/2mpNX4Y7IjcyxGPTlJI8iMqC7JP/IZoBsJcIDls3iLqSuu3bYam1qm5s8
	 Yx79o6SNezChMKBuSbFseaz81tScf5a0W/URPxGmon1rjPpCAtQwNfW3ybaJbLEvkw
	 +ali8DX9wk1eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907E8CFC515
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 02:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176377691358.10041.7066489543459301438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 011e156a13408cbcd9f3386466565681f982544025863a72fd62c69e4668518d
Date: Sat, 22 Nov 2025 02:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763776913
