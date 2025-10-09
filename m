Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26CBA21CC79
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760033394; cv=none; b=PoVtBVTnf3V/X+gTRyQKxuHUMj0n3QBmv/8xfsmzqPBcID3bI3NwzJRCdWfruwX4gE6aXQDKjJ/I5JTWP///EnLc0iJ9OhSyTkkqsoD5khxpI4yDG9LRc9S/yY3U8PLyfJFYQdrgo433fNPQ1i250zCyUU2mHD9+5qNoq/vhbfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760033394; c=relaxed/simple;
	bh=MydVka2bsNt2qEsgVyLduAlVRueckeJ+Nj2nCQiTg04=;
	h=To:Subject:From:Message-Id:Date; b=orY+6M4dw7X8TPPk34n9A69o+c+v+h+HqKo9hzHYvXv+zKD/F3CpyZYuG04aAMeBGGhGUE1im9Nxr6nuooheCFP9WVUr+AqB02JrB/yfGIJCAsJIlkavUohBQxRNNxRXpnX9XoEP0hOo763hW5pPzC/rO+6qbcP8YMsV6kxfMnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YST3U5lr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YST3U5lr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A32C6C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760033393;
	bh=MydVka2bsNt2qEsgVyLduAlVRueckeJ+Nj2nCQiTg04=;
	h=To:Subject:From:Date:From;
	b=YST3U5lr9J+GQ/ja0KzUYUIOUlnhlsMSuKz49zDMK9uYp9ejsF7s8OYD0aVDkfqQn
	 5FtpCtDdPFT5gaELo8iIWUCOPseFSQkOa/423aKJzOIGj8WN3ydiaRWF0AH7X2ybKQ
	 jCkqSK23RYCowUZrRevyEpME6A2DsP4VQY2FHF2KcZvN3KnfIF+WjrfaNmCkdbLh78
	 iE7hH9WRZo0VmonoAnbei9w1qqd440I+X+9VRwoLQ5SLo9k38+3Hec4tCqghdZpMyV
	 HHAYtJP1Nct+BJ48y60aYkqSF3MjsT1MyZOFju3ZDh1G3UnmJEaAOnAqobHDt5jQWS
	 9Pkjr7RCtxZfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9087BCCD184
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176003339358.11721.15912671199786340386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62b77d6d85b0516d48ad5023f9d8c72b35daca3a7f935f17f34fd70a065bccd1
Date: Thu, 09 Oct 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760033393
