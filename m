Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26A5420CCDF
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745539194; cv=none; b=EQMsDiSbuGdpa6lOWrtUT4FJI0FbWJLUfMQrA0GEg/i23tcABP4ADu1jNbmeqoy7vhusihxJfSc8Ek3UpzPjf7yNiYrbgq48cH3teaY6UBqEwOqFSN9N1Afq140Hnd+EFu6gwqT/Zvhm/cWfw7LXi58+h7Nj4Od9tIO1VAgerMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745539194; c=relaxed/simple;
	bh=DYXFjX0Qg2qZ0LJB/ascAyKWXZwv/bwRk7UtzW7p9xQ=;
	h=To:Subject:From:Message-Id:Date; b=cHOSPTITIbQZujMPBvwiYyKCyNrm3Y9drQX9O5VI5ItkGq+rjNicOChIETdFPiVCXiS8UoeU+dkpjVJn9dLtyEzhrgaqFth9zHG8QrkTk+YPwmBVsULPLA5/1T5AIJDpy/JbKrhdfL0bMQNLo0GicWZku9upiRK+iKORnShnEBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gX8mdQiD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gX8mdQiD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC65C4CEE8
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745539193;
	bh=DYXFjX0Qg2qZ0LJB/ascAyKWXZwv/bwRk7UtzW7p9xQ=;
	h=To:Subject:From:Date:From;
	b=gX8mdQiDUpviV3PWpDahu+sZ1HIqAC4L12881jmnmeoi8aeG8OUIruwgGz41NrsSo
	 2jE0GzVYGwSsK7On8HqL1aE6sYW1gfGGXYuYyjKLfRTCcZh1Mi2hI9uopRbFLMqL79
	 HgeS2RK5fa4U1db4G3xInTw6siBDwRW1W1MFkQqajfbpIYy+WnHhXmGjmxs8242iw1
	 EWzHlUlFkburmDGv2PnDKUmf8st4r4e/8eylT6HMeQOVu8QCCZazrQ01mbNwfEB42G
	 jk8pPLH796dgniVdXW6zIA3NoDsDbuPxOU8twGAqCk3Gm9kBUXyS5o3CWP/nCXylUc
	 OBOQ+tB7bkA7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E605C369AB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174553919357.29793.7822026673021120867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42646db06e12f020c14a0660e5f34f425b41f47be8834931156058232b105c54
Date: Thu, 24 Apr 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745539193
