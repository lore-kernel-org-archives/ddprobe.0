Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DBD02E4257
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 21:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790027434; cv=none; b=b6IW27KcqLX5os6gv0glFkzbfUj7Ja9ENkcQmsP97fJQo53lsoQSv1sZsHpq4LLtJ3suNQLYC7ZArSwXLctMgTZw/xwkVDVvD7din70eBecnw2jNwC/py8g6nvibbEQXONuZ2qcpZl13TDhLXpktR4Sl+BsBlMbrwsUMqY1Hh9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790027434; c=relaxed/simple;
	bh=TzhGqgBo8MJQlGu9QaoOCLwlLD49jKFim6G+owWhUBU=;
	h=To:Subject:From:Message-Id:Date; b=l7j5nCGBiHlTc9CCtEbHSe1JndC3xOQC+gi1nMPb20/OzlzfTKkQPIZSbqUnd3Y21QXCaaSDmw/NmT48weqvC/V/M7WcTbfhySfqNg62jEdLQQQnGaNQvnr8hkbIsb944SM+g0XzcmT9qAxJu5JDZNLlOQlrJ150M8nXsRAt1jA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YBUHkEKB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YBUHkEKB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7704C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790027433;
	bh=TzhGqgBo8MJQlGu9QaoOCLwlLD49jKFim6G+owWhUBU=;
	h=To:Subject:From:Date:From;
	b=YBUHkEKBh2AJ/jJ88wEomv2MGeCtBOsNi7XjXCtfSA2rcDKa9IRpHJb85olEK7Fb/
	 fmsiwpLMG7/yTUZYFkg6NTNPHgwI3+FBqFgYJhZ7UbW9/2fGBnNzWlQUfGqJDOIRFP
	 kMYvOwhHUQ5/jqkY4N4JUU65xy6i0LBLsGfWs4IhV9a76iseoPE5/OxshyfdX1D7Tj
	 SRClwWM+fBaAWz0b0ppDiL1mTqkg8Lj3NmPSSsnClWBE3MapuxKJyIkkAKNVws09VI
	 f39966EJUiSy1w/E8G3OYU1GSQvlx/27xB0qvAz0WHxQtr9sayYxGuTvFGxbXoHjAW
	 iX+DAOvBfx/hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1BD9C982ED
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179002743371.1900.15497825895940929327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4afdeb7d1019cff253d490284b5ead5718e6add66ebdd5d5acfdb9b08eb2e41b
Date: Mon, 21 Sep 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790027433
