Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D60823314B
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750118394; cv=none; b=pGB5mCkF7Wp8GtCgBAAh5z314ZNMEEAweQXAqXlESGmgzSkgosw4ujNiY3AUw0zCVZfIemOwcgJ2viJ+zmEKuP82PmUKLS6VVL6uqwpogERcNLEVBiR82nUP9Xh0LY1qRYTTDOFJyzszXCMuhTnI57rUDRmq0W048BLgC8CQJ6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750118394; c=relaxed/simple;
	bh=2PJmZ+0wtbpB0yoCdV1oEdOal46/c+SDIW1GlXzuvW4=;
	h=To:Subject:From:Message-Id:Date; b=qbu1jxnpLo7LJ6BOtfnsXprFm7SWrrkWmOXz95rkRSQ+mEuyuYOCs6pM95ugVfGGIDcZoCWtb9ejLNicOQbodtXKZ20OwtaEjCCmqsF8dL0m0XCQcSWeDVAAEhjHkANYgmUGzMGCH9w1bzx60mQZXePNJXJdauiy2AoZ8W8h6c0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BSLRlACm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BSLRlACm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A766BC4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750118393;
	bh=2PJmZ+0wtbpB0yoCdV1oEdOal46/c+SDIW1GlXzuvW4=;
	h=To:Subject:From:Date:From;
	b=BSLRlACm0KaEl8Oh3nZpEz/adHz5m6vAT/U2p2C62Si1xox6iVp7IkMURtrSKg/4V
	 Df9o2E1fI5LmX5tvNTiSe7uB59d6Lm7J9lJlQR9RPBhpvZSKy4fNuQ0fBVY56vkrPf
	 8BTpcSk9WUohrjvjN4cgwskpbE41QJxnrNMchO3VKpS+LB/pp38l/UrROLxmA+Vjyb
	 TMWvaevSFCyyCIM9FBXx9ZFJlQEh2NKl8CyRsUukW6NAmHvWJAYjilmWiUnqW1ydPW
	 Ki8mRvsklPdJ4WfaoZjEv8QVttAnWUYbw43L8PQ1lNeGxYSebe703OMZMY38reTGeH
	 iwZ8dqp8I5Wcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920E0C71136
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175011839357.22443.7875678531086274553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7268ded311e67f3934b5f89b1c3cc5fb1c8382dd660fc70f358c4bb811ddb16b
Date: Mon, 16 Jun 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750118393
