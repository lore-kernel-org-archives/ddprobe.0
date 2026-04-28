Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C2FB2D7817
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 02:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777343254; cv=none; b=a3zvKl1R/f5r4zlxu+tGGRvtqHfsSmbKtHrSAB9Ac5PPo37ntJzqQReFPs4YYLb8HflwhICRJ8+rlLE5C6S5Y9yO1jfDkd9BvBJAGMpV25LyjHDsgmyjnAqHKwwz9MPnOpn+irNh7GW1VtJ71dEfaysE7ApLV4/8sLxPIn/oM1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777343254; c=relaxed/simple;
	bh=nucGxN751GuMNs9nxLx9OdqZAjw4ZYoJGTPGUulGn/E=;
	h=To:Subject:From:Message-Id:Date; b=Q1GxQRa9Mt74ywJIMsT6YggQYUHfxNtjbnGCWQZif1fwo7HjJc8g7+wl6U/qH4ZcGnW0D8z0pnBAnPyJyeVpk6DEiGPSmwtP3hNreR1dG8d7B5S3qRo1tdDtpzyyJNgs6BNB8Zc1XerKnVkoi33oLiwOC6ShUH0rDSduuoFse8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HNdD0O5S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HNdD0O5S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8F7DC19425
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 02:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777343253;
	bh=nucGxN751GuMNs9nxLx9OdqZAjw4ZYoJGTPGUulGn/E=;
	h=To:Subject:From:Date:From;
	b=HNdD0O5SDOCbp/iPf68H7v/KDwE7dAOdoQZD8ScGHbfF/xP21U6x8SFoY6vr5tlX6
	 MYR+2xQ3uhjUCXYX9O9BHA8WAcfmSgZ/gau0VtSBVpGEL1CW4wmFXI8QKU9zCTZxV0
	 AalWAJggMYf4TSK0z4IaoSzJ28hAm6Ivw76LLH+aRox63Nc9nybT4JONKTUXDer89P
	 5guRM5usCMgI1ynJjclZdh/tmYtI3/raLath/WPtwMnaxYxb+8tH9nhXXalJqAdbz6
	 wUBPmcYTjdsKt0XQvlOm2GTuWa0slX6CztZrxPOMvONyzjqTApO0spCw9mWWIMo0sg
	 5eXwASwCPkUUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9338FF8867
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 02:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177734325368.5867.8000017968796087912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24d57237d71951b231ea2235387872c7f4af8423a808eb3fd25d9fa2d158e116
Date: Tue, 28 Apr 2026 02:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777343253
