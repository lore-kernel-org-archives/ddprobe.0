Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E7EE1ACEDC
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743405594; cv=none; b=vBEE/jd3dWJqS4gptZDBywQ5hFPWgpce6UqocG/95G0xLL8HIt80GBsf9m+ir0XEIqfIJkftoHoucZHMfUdTKlSTp5gKqVoTWUMQt2vQgsBlBNNvr52tgXnkMInwz34dQcyofNk5lZF8PGyMAzA6DJaDOx2HvaTqO8PgI7c3Mik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743405594; c=relaxed/simple;
	bh=3W8toTy4EQdzbwBzTwcic+hvXzMcpnHIMU8ygeyQCJQ=;
	h=To:Subject:From:Message-Id:Date; b=sYcTZ7ZtfRBjSiDDgygTlbvOBBcjbvOui8FCF8Y0qvguj7GNGEuGNBjbPctoIqv9yEDbwtGBrLgmZ76ZjefUI9lR0iS4GE88az6v5Bxek/0PfgQ97zelWr1FcnJnCHYS6MmYNPjzKXEe/jSS+lYmu4N+KJT3/r1QIKHuIM7T/ug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CcmJ6jv8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CcmJ6jv8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4E99C4CEE5
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743405593;
	bh=3W8toTy4EQdzbwBzTwcic+hvXzMcpnHIMU8ygeyQCJQ=;
	h=To:Subject:From:Date:From;
	b=CcmJ6jv8xwBr8TwShhhTvPH6aMA1Yqr3r3xecHOmyvi1eaGmElYzafWIVnukMDmP2
	 XG5x2bJJYI/+lhDRZREJl4u6fiTGATQLV8dTaFx7S6vuv09yYzDqdev70YiS/JDr/Y
	 qAJG65qhWOYlbD1EDwWmR/QPW8WGbCahlf/OxpKSfam9P9taGRf0i/khZkY0HbiumV
	 1A6CqU8D6YV7hBZZ9klY8fh0K0R06YSBO1NovMZPwxrwLO4Kz0ydZI9LV4t5sESZFR
	 XYFwE+6YvVw4/p479QpCIBPm78JM5Hp9fyF5irDmczAJXNwWBqTYoaTiM1qSGfIYDY
	 LlublaUXiHNKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E569C36013
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174340559363.2357.11624711083737028288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36e1bccf7dd0eaf2d07eae2cbe89dc1db30fa1c25b1decc5085db4faf994d2ba
Date: Mon, 31 Mar 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743405593
