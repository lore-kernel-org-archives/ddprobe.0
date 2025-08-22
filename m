Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 213E96BFCE
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755896994; cv=none; b=uLJSDQynYJQyArs4t3kc2IAG2ST1vQkchdm0kqGbZDhqzNcKH1cpyubgucy/aFlPbsAv7vb5qBTm6IOFngqlJTul34vZkfMSQaXepqFRAfEhx9PNjVJ50H2sAMT9iw3ul1snbjnas4dA/AIyQ0oeM2OwY6wuBoewM6qo27+qCug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755896994; c=relaxed/simple;
	bh=l737zH1n+6+W8uYxr4PPXRSror63tP+6bFqwNUGOv0c=;
	h=To:Subject:From:Message-Id:Date; b=hVcpAGzJbzMIMXhmfUkaU+ScB/DfGPQc7pQUS+M3c4I7ABn/m47R8ab8k5RlDgtCE7wjKCv/WeyTgkOX9w0mSTf6uNLKj9Gc75HQhoxqb2jBhDs8txooEHpsoJ135boFX3xoTPw86BS0mGkubfOeoMuSG+OvhhSZezqlZmWX7Mc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jp5kwNGD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jp5kwNGD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22DEC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755896993;
	bh=l737zH1n+6+W8uYxr4PPXRSror63tP+6bFqwNUGOv0c=;
	h=To:Subject:From:Date:From;
	b=jp5kwNGD+WUHmG8LO5lr/icKTO31inAS0LFw2x4ntBQiXxOxd6/syG7eDdr9nN9EY
	 12jvKwZQ99J4ZpbmNYmDAZOW3pzzMGNRIiDrR1jWcmIakE1V3/b8rt+Xz5s5gx5bX4
	 cuX3asPi7QNgY9/qAE5Yy4q1NOkrjPvgTi7l9LRDfeb49u9wQ9S4fFp2x5ProqkkML
	 gFspf72KDUwQc0XGxcu6LS0IFB5E0RuEf7ltz5c9q2Pr3+nF5NJ4CNfDdVkZHrxc+p
	 Vmkt+4bsyLpoUIvYnjhF5o6uTXS4n3ONPTByzGqRbMjNQ+xCA2MWKmro0V4EQr4bs5
	 6iNLm1vX7Whog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7D4CA0EED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175589699357.23650.2377807450292895320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a9789f8c2c50ed4bc560e07b6ae45a6dfb6d0e65e1599a2d4c18e1af0345adf
Date: Fri, 22 Aug 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755896993
