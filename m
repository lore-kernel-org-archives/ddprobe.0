Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C9DA156F2D
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 11:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720699043; cv=none; b=M9zPLLkpw6jUQVbaF5D0giiaaYnEYncuC64mwcChqFqJDbiWRoiHD/ZFVFXdamNTxZRVXYR3rjPyLiFke/LbehHUKag93Gw0l0IjdKL+fJnmsHVFWCO36sKYoIDDQJ3q6gEKOjuXCI4MAqgoevOuAmheGW4N1tW5IhVLxb6HfB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720699043; c=relaxed/simple;
	bh=fToN1XLYg0yYkdD8QnZBq5Ey7bY7OI8SB+UpjEE4UwI=;
	h=To:Subject:From:Message-Id:Date; b=BTmH1TRxIWv69X6BTjVkFO7OxuQxS3vUhHiay8YoM9gvyRohMBRwTnECmfM0c1ZC+P00euhv5/kI/uOX9A8njbn8VTZo2gQSMAdTlaWNVjJsEH2OG1ZUK5YCNtj0pi5wtin6aTikNV+2JpabAb0JvLp5/sYVHMGJaT9zUTbPLMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l/Ts4P6l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l/Ts4P6l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E427AC116B1
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 11:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720699042;
	bh=fToN1XLYg0yYkdD8QnZBq5Ey7bY7OI8SB+UpjEE4UwI=;
	h=To:Subject:From:Date:From;
	b=l/Ts4P6lPAO3Xj4YVA9cn3D9+72LjnnD4rwmwtnTjB1JlCJn8ARNSU1unA4ng1Nzf
	 Xu2tbNf0mLrHbXuU9zhPPd0hIsB06fUFVzXBa70jV6E7ehnAHypGjibozfzPHPkExP
	 E5kAsO795ItGBvzxolk6q4lUKvUehXr4LKvpHcEOn5i6LGnlX8fbovuMEH4yibTrQp
	 2deenPH76v1fom+F0QuBdSo3SssCocxDqhiwul8UtypZbEZI1+40eSQMh9ZtPfRB+k
	 mqnV2fuLOPCUS3b3hP1laI3rl8/+B4R034dzwJbQpMf10j/48JJrY/jLGHpGDVlKr8
	 lbMkgoRpCcQPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D31DDC3DA4A
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 11:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172069904285.29921.12233654558939821262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 566ee2f8819230011ec08b73f40f82c2b27a522e6e5350c5e797c8b0ce744444
Date: Thu, 11 Jul 2024 11:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720699042
