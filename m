Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 143BB293B75
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 19:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766518434; cv=none; b=PotP8P1ATIpmj/FqMTuJQrSR1yRBXnh+gBkAOAxU+p5ghgaWR65OJo36rf1+YDx7PrlNxrg49IqwiVfv3gZ2c5CbZTUIyeV5BXUXFi6M55wuQ7HIVVNC3aOJXwgfx31Okp+v5eIhijC4b5sjEcEJmzxnovkdZPhJVIhxvSJTaCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766518434; c=relaxed/simple;
	bh=h3On3dzw214nbRu0qvUFwQ82bvEDkDf96uCJ4nwtbPs=;
	h=To:Subject:From:Message-Id:Date; b=Ad05bwmGz8N2C/Dj8kolmejT8CdpM4a+K+Z64yROC8/We90ZVn2bDyI63HyWtAmoFKQwNpDWyM7F4crsmDFYQ48Ab8PSqssbuMoCnwbSjHdMJsxOKnAvOyQv0xGoaAKDCJaR2xXulG6+DtUsYHYxslTGsFDS1GUxR1AtEfQqbC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=npx3n2St; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="npx3n2St"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F5EC113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 19:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766518433;
	bh=h3On3dzw214nbRu0qvUFwQ82bvEDkDf96uCJ4nwtbPs=;
	h=To:Subject:From:Date:From;
	b=npx3n2St4Q8Gn5/7RbqgpnYT36jpxFcyj5AmuI+tdu+k1QYpQGX1J5XRqZZfH+nNX
	 6Zda/956mrqsUWTD9aBIsc4QOKCCFO5HUBlbcWw1gcgsXGw63f9iCEReZBPJ6fWn9d
	 gZ7yg4DBTFca7F7PIc8H6KTEEk46d34Lv3rKm7bcj7u9ZtdGdnFz8jGK0QTeWNyi7w
	 e2y0LupWfp6aTXkoVU7zKsnwdF+zRIGVMSwZ9WYhhzVpcIwA9a8gHcJEH9yvGdZN5s
	 Uv1lTRKkF3/t0VtWDzOKxksp4dS6m24TF90EGefQYl54Z1McvhR6XfC6T3HKws7/ar
	 9PogIXFXx0OdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962F0E6FE24
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 19:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176651843358.11632.15606405536578709364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a177fc7803a0c563db7f59f275375e654d505e31594faba52e2b1e4c404b33b0
Date: Tue, 23 Dec 2025 19:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766518433
