Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C89727470
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747457994; cv=none; b=EDXf+H1hhZrcT+owTTy8N+7laQSTs2/K+RpJ1ZAw4LcpGpNteXLBBtR4/fF4IYCMCUKx2ihsugpVy6rRe6OhzV1+hUh0zbKEmRGhWKBGZwJVezUZqmdBtFrJymqDWqPE1ipTRVku5MYrcTbXgp6Ie+cPhvB1mjPvayTpgk14sSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747457994; c=relaxed/simple;
	bh=7vEqLRHQTZ3yo15rJoFK5ao+22quB7zVSvthc840+Bw=;
	h=To:Subject:From:Message-Id:Date; b=CtbnKMVlqSO3baS8H39i4J5PXelY18XLAeg7kemF0wkwYAwjHOOtW+ofntSGgPutXfKAbAa3oXuDOgWef/p6ne8VGHL9O6fZ3LqwkbCxDmgfNWSnGa84KYYfTa8BtQYuvyeecUvJfXYqUkAyCt/X1F9IwdVc9JMKaD6bCgVKD3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ms4yHOxM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ms4yHOxM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68D6C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747457993;
	bh=7vEqLRHQTZ3yo15rJoFK5ao+22quB7zVSvthc840+Bw=;
	h=To:Subject:From:Date:From;
	b=ms4yHOxMDTWNp0b0kWu8cQDqq9jCSesF0g63/pYrQtqWLCqwcUul8ebCc6/C+dWit
	 Z7xHqcqGN/4urcncqDBSVhvQYp5h351KyBgWp6ZPCiDZcQ0zvGvx4BxW7apcR4DXFO
	 5Ytixla3hGBflh8JqHIaTA9LgWS0ipeQuxDuKBKwewI8AXDuPe8b5FXCkQ01sehb8A
	 xR/BFO8/pZntFW0PaQJbFkbdIXlyYg4fgaGGUNKr3pkaSljiEMTNJciLt7ZXDf/upD
	 1AayTPkbtWx+VcWnCy5K1RNff8We12OIvaWf+2R413zta/0RXrjrAnhYtLZook1vZE
	 n0LjDbbW/uG9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929CFC2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174745799357.7182.1743305284108491264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db1de615826a98413657f9f7c91c3d27efe7b3fbdf75cc757e7a3f688e672e89
Date: Sat, 17 May 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747457993
