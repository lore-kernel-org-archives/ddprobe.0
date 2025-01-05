Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 283482F2E
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736093154; cv=none; b=U28AomWgrU7SwqOkHswMOWgZ45SOo1GGgLMaEWaREDdlfX/+F60/7jJIeuW/HSN7rSWLDwLY1ctVwmqmHimtSAtEjAtVeytH0nQtY7mtRXIpdo7q8jNV+Acj/SqQO6BF9O5dmKUd6vMuTDpdU5Kxg3nN2fry2HSsqyiVawMRtg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736093154; c=relaxed/simple;
	bh=LNiQd5QKy+V64DfECABBsSCQBd3gHcTlm7OL6bOE89Q=;
	h=To:Subject:From:Message-Id:Date; b=ixacTvPa+cHJlTBMBqv6iMhJCcBlXzAgVzkggFeqyIyR15GvR32rH0N+NP9fjEZhuVdcdV6Tu7SanBbOg9NWbiBP1MhiUCtGLenVDLvZxF1u5OX+XpvuQg6ORQ8nc07qyqhyeCkN4n5dGrorI9Yo+tx0HM1NInCs2taG74dxqRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iA3F8BLD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iA3F8BLD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A82C2C4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736093153;
	bh=LNiQd5QKy+V64DfECABBsSCQBd3gHcTlm7OL6bOE89Q=;
	h=To:Subject:From:Date:From;
	b=iA3F8BLD//cplL9N6fIndE98f85J3+W+hMfi+0rKJqHJbUk6xtfkaE7nQ/Tier0mL
	 q0+Q9EX0kUiuHqzZA2wcji+YDleu7q+BG7Z9TdkAsUcbqyJE5nccAIz6o0Lt5maLWO
	 cAVK9fm+Z6NpJ1SWjabqXwSWaon1koBQU1Fv7j+ahs2A0x3IGz2DpVr+Ct8p6Svoj+
	 eTJnE6vaHxtcGlftFo4HPkcB9zZc3vVLK1mBfukom51BLCOhMvhqqSHANwmYQ/zDw3
	 yf0ewrUmdc2s2OJfju+KcacQXBMebF5TcjZciCZPIIvYSyfy1Ua1ja05GeY0AX879C
	 duw0P4iLrM5YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9265CE77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173609315358.2799.13686767935081882209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd9a1dbc5e3ba97241aa10d62a6977ef27c86fb6364eb81aa548d2e15b45bd5b
Date: Sun, 05 Jan 2025 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736093153
