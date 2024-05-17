Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56CD839FFD
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 21:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715982143; cv=none; b=LG2IWkoGJAGibcRRwpecOczc+tr6stcMPQZH8hYRIyCCimBmm4ui+Fpuobz6e61CCn1Hh584p897RtVtW6jARvFWSCDbh0bBHA1Ci9eSXS42f9gNZby98r90lHWCImo8hJGvHxQldjlj45jxoXSl69ViTMaCVGcRH4gpuDalhuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715982143; c=relaxed/simple;
	bh=maozFy9h8lZOh1s0u5Zq37CD7kyvacFhn8R31I87mck=;
	h=To:Subject:From:Message-Id:Date; b=VBaranlw6s9w29oBUvt5el8hAuLSKCnBQ7XM0vx6J124Te2f7DpJp8xb+qs05Av0Qc2eSuXdN2kOp3BhifYQ88jkw0e2q8YxapY5lgbnHxJ2BM8Zq2162yOfer+7Q5LOsqC+NeOzNKFJ2vZZx6qS8tXigcKU1dK0JLCjMUgKtFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NJ0ag9OQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NJ0ag9OQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4582C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 21:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715982142;
	bh=maozFy9h8lZOh1s0u5Zq37CD7kyvacFhn8R31I87mck=;
	h=To:Subject:From:Date:From;
	b=NJ0ag9OQ6qvsw14LIX8RJvd+5k+TqtW9faz/l/MgU/xehhlqQWd1jDQBgalpX4Kib
	 bW91Yg65o+niMzhuA//ZKAMG2ml8fiwAwbo56trsAIIQkhnu15iRpWG5D6rU8EpnaN
	 Gxn6d9Hgij/ShFTnxUsY8/9A89QRvKhsDJhAy4IVkEUIvqJdkyfwd5uX9RxvV+fLLN
	 PnnkZBVtY7rkccDJXsoZHzzhTnE+l9m09xFGAvb/W0s3x2IHPyu0wdqa4y9zCy6c0B
	 ROqHZmoCW7gv8nKI1RdpuT6e5Xf9tRhUZs9Ozlk5l53B4xvJBhYVJDOLknXVIMDq1T
	 LuHVi8LJETC5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2310C04FFE
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 21:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171598214276.23309.11301328970383932717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d56fbfbf37bd2f9e9e165be77881b78234837152cc4f028ee3506cf07777328
Date: Fri, 17 May 2024 21:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715982142
