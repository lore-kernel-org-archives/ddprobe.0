Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0FD43D3D1A
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 06:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789885234; cv=none; b=IAj8PHK2C5yl5RbKeJ9t7qQm5T/NnZkjKePU5Xuo2KKAqlw0pP6JYP/c5Nyvlm269AMaGIzVMqssZqjlTG2CzVsYmNmCzjxNaRycvN4+MI7YWiGZy+82XJr5+haIayeGknutUi0ETjedGBKA67R+3R4yszrnCJjbNGrbiRE5rE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789885234; c=relaxed/simple;
	bh=qDrA6BItozdMSyxs/Znt4jvhrUsc694oEr/sht9L/xc=;
	h=To:Subject:From:Message-Id:Date; b=jIMWp6VnW2hDSLp6PQiF1ZuP+2NJt1YFWH5lheorCn9zTyEqUVOaZTPi36KpSIERP5vIeRdiW8Jj5nvVeubnzU5SncsOzYVVO5SSWkoY7vCOgy9vSxLUx8lLOaUThfRdIObWYmxpgUeBkEkbgen3c/QC4N4KrQ+0xwAdsw89L8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nOhpqMN4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nOhpqMN4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4FFEC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789885233;
	bh=qDrA6BItozdMSyxs/Znt4jvhrUsc694oEr/sht9L/xc=;
	h=To:Subject:From:Date:From;
	b=nOhpqMN4NEO2V2FXx/bucyXJwsdTek0C7CoHiK1x5r/BsIy1v6InemaumlWIwPKvM
	 I4TrgJsmy6im3k9Fnj/ZoHmjMiCOTGQWYom7nogVrp5W3gdAdoB42uLqJQOStCPgT2
	 8B66mLLzIO8AuW8GQyQvFr+qmQgw9p0YyPCAVs0uRyGpz1ZjWmknD1nBRnL8pMzBze
	 mpetJcncgEqveEVNsJekOCHvzh80wJzKXHOv/IG7v71CWphDNWk5hoRr0CHlcbickp
	 5P/exc/MUeA3dUIVwAt2EceQU4tkPHD3i1+9cRmjJl5MZCMrUN2XyjX1Ezm+L9lalT
	 qe8mJMQcqzSLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA100C982D0
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178988523373.22861.5529544437980710144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d30490dd4026de35cf9757abb7041ec1618381df0642ae7e2df05eef5ba3b74
Date: Sun, 20 Sep 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789885233
