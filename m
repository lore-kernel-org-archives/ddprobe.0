Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22A928F5B
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 17:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767030234; cv=none; b=n8yy2JB6WN89j6PS8le1KU+t+2zlw6BbUdLqlwtOzwlvSkGOiHy/yFBG/gL3b1qxQpD+0I2PWWP4b0sUb6/I8+SAeB8M0wkMI65EOrUZTRVit4xomaZUdSnqUXDEt7PZJf2Cc5fux8d4HCEuAs6Zvzn4xz0AjKMLl3w1AMHsZ1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767030234; c=relaxed/simple;
	bh=srGs/NQ3zqKksQLpQEbcv9yldjyskR5t44RmJKfcVTs=;
	h=To:Subject:From:Message-Id:Date; b=MIgQFMKuTmWgZGLESQCRM+ySNjQkUzF0EPw2AIf3zbUgFHF/3TPJ8pg+YCyWy3md86NOCEBCmMDrSqlxzn11YnvVWmS3BXx1cGZy0Ix+Mt7ssu4dsLkLrH0dPDZzuny7fnLJJ4AWjN4sZYyhqXGgb2hw1hF2xlzOHDf5ovfiWxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EvqCRiW2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EvqCRiW2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7FB5C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 17:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767030233;
	bh=srGs/NQ3zqKksQLpQEbcv9yldjyskR5t44RmJKfcVTs=;
	h=To:Subject:From:Date:From;
	b=EvqCRiW2jNSTosYxHVWI1oDjDhNq1y0yHhQCCTwwb8t/RMn1BgJCAmFf7WOA0CRE4
	 VEi7JTGKjBYTEaK/jnL37K9XoRO3A60GQWgN0MwWJbuVO74gOwjNh8bUxczKxOgNyG
	 9B/aYhJCgLp/R0kLAK4yY5IZA3JVlmJotXmlVvQLUz/DKlUe3GBjUOkwQfY90ZhceB
	 F9oKzwgtawDbi/rQsT6v32wXdu0yASdS5Ri5AUv4Jsw/xvP3cTkgbvxmS2bYh496/o
	 tI57zT50ltZLrivR4v5UnOBtnCvuW71/0iLrkRilKI37bR90L70up7EOq2QMLPmKTw
	 z9TN6EwgaTguw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E096E92FC7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 17:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176703023360.11912.6963319577561092165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1561fa2fb0b6767a0527e210e2f7a2f71d186abad4af5581913eb4cb62e39abd
Date: Mon, 29 Dec 2025 17:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767030233
