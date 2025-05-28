Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31892193077
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748420994; cv=none; b=PYBIsZxt69ztMAk6ld4rYihlSRLV8T460ZOs4Bw+xOsEZIvNvFqVpYo7jjYuIPCBxQUN7M5sxmwLX1ifuvbVLnICkNjcbUkybHrAWvlGPG5AaKEpp5tETKEbEO90hXbm6vI2rLSSjROfHCVfHgrmr8T8AWS+O9n7vXWpU1/54u0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748420994; c=relaxed/simple;
	bh=fXqECwFvgbGsyKpkZGCK25zF5aOzYVBykaJ/VJg89zQ=;
	h=To:Subject:From:Message-Id:Date; b=eJnBqzdlALU3psIYKmWvXJo7gWooHTtXvdB4JWbkzP984T+1Ee90FGetX7HjsqjBPXQdFJqm0GIIaWVu8GwClszlKkQF0mddIPiHT0g6FVK5yhmHSHsf0A+7SoHJmY1384vUWxqNSbCbFm0sq1QuvcNYEg+K900emovGFFLio2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iOOs0fpw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iOOs0fpw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4AB8C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748420993;
	bh=fXqECwFvgbGsyKpkZGCK25zF5aOzYVBykaJ/VJg89zQ=;
	h=To:Subject:From:Date:From;
	b=iOOs0fpw0ZrT1fb++hBjmQN9tx3ryHxjT7x2B2hvxTjU9dVNDGUF/t/PIvOlteIpj
	 tjDi3rTBM2CI9GyTKXkHm5gWuCT4M2aYwJj0dAoz0GkCHdqisijc5ffrI9lcxtkhty
	 g7fIWstY4Vub4+YW+BFvjotC+dkf3H0rtNr1gZyUP4lFryJUCAj64ZaBNlZE+SlTBB
	 8BHnyqAntt79co9+JFPTPA0DQSkGjpwmCnj6mKn8a9+O4zD2Sqkqss+cyz9aqu+8sQ
	 J3xSOTDv56PeEAV8IJRYAzdpG26HeiuzCQ3TUqg3yg0/KOMm6iDX3XzJV6KgdZUjfS
	 p1iE/McrbjZzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905DCC3ABB2
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174842099358.28520.8815617224609308633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e996a15ed0a463fecb8453e4fb1bc74aab035da5e7d187fc309b9fed79319b1
Date: Wed, 28 May 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748420993
