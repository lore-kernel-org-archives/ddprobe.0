Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FE781FE44A
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 09:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774258494; cv=none; b=dPzRhsU4vWIS6cOxg3W+a2ZfJekF6yb/tQoOdT3Ia07ZQYsJrzFCWMUAW27IhnRRuCLO3tE1w04fn80bC75onDkIQK5WzBTA2cwZ/ALsoxkZos8vmtsGlF0AGpR3FXH6kwjE8MfkcETBuKzZnd+LbF1yq1zILEdOPC0S+6FBywc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774258494; c=relaxed/simple;
	bh=d7mNIC1udHYtf3fPLOx3klsJlzj9d3uMCvFvMJNuhGg=;
	h=To:Subject:From:Message-Id:Date; b=iQG6EH4vxzJxCq+ipq7ZVvZ0JZEWMd2lziln76addTAWq3J5VwG0yRIXZdAE3N71eMQpqz5436zftM0eOe3fuZD68WO/GQQVPFhMCsZLdZ4AcUdaimfZN9SnFVOxP/HpIxCoj3zUuFQuEXXMzpHy/3QOgRlShAHrrclD/K/zpEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VkYyBGSk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VkYyBGSk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F9DC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 09:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774258493;
	bh=d7mNIC1udHYtf3fPLOx3klsJlzj9d3uMCvFvMJNuhGg=;
	h=To:Subject:From:Date:From;
	b=VkYyBGSkcKcCfp4WTtVc6UgUP/khfvuX65onQAkl28PAZPG15TNGQaxl1Lq0V9S/w
	 U7HW0oJlBIlSTbI41aLvtic5Kyldv66x9sahBdTl3og8YRI07Mwcf3XilHob8eSHxb
	 PxUay8q3bLyhBEeuUKj/Y0FxiaetwsozgYA7zyT83PKNKgruLQvpcsvx6LvHwBSB0h
	 eZBkwhjX+b0q7tjFI9oWRhdmkbme80dN9RTsBc0m6xBqabDjDaCjx+uXPjaSmLsPlt
	 iToc3z3A+8LLhXb01hxnBLdcAk1dRChLulkWwL9oGvJ6wT83HZ/p5iBPDxZno+xftZ
	 uICFmYT31mWYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B1AEC01B4
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 09:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177425849358.6330.14349180086478135521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78324d0c5fa1c35d38b07226a210535a601b7c2c92bfda25ce1162c2a607712a
Date: Mon, 23 Mar 2026 09:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774258493
