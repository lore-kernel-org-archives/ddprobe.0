Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D6762356C6
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756757394; cv=none; b=gVw9BwJ1TxQPidbkVrJYbJSZs5TCaUoSJEwKn4LbWWOueCh6pVCvbZu2kj/kMjGkJFrIJIH998K/Q/TZI20uW/CRhg9kVaTtgEsjUQHbg/94ByVfB/UA7vKWKB9OfYQBL28q0t16yOJK/k7cXlWHqX6JmzwRMifZvn3Vq53CV0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756757394; c=relaxed/simple;
	bh=xYSzo7XeFntqhexyd6M15pnr2VPqOTTJERFD3Z7Px5g=;
	h=To:Subject:From:Message-Id:Date; b=FpAWtObVz2oshGyRJpECpwp20EIFv3rQ4vpxmNaFaQft4dx3tmks682UdiJE5ZlSf7E/zqHUYn3xJofRA2OeUmUZjCXD9DdUZC8y2ZR46Pndmegfaor5IuM2HO6v9V8yP0lxNUkGPf007LO5SXYePAvdCq2u7vyP7pR74OFYuts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sv7FiQM8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sv7FiQM8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9198C4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756757393;
	bh=xYSzo7XeFntqhexyd6M15pnr2VPqOTTJERFD3Z7Px5g=;
	h=To:Subject:From:Date:From;
	b=sv7FiQM8SYaP6ijQdqLQ6ckLVUpdNBtxSlTrZXSUL3M/RsVgAB28u+S7fI137SXcD
	 FZVkedvwP+ybO9cWKV/2yME4X6eWlwhdEUFxPsPOaHOcbE+irAuTQwOGUX6vZyd5cv
	 UbCTnL+9E92AHuIwbneHbGZfVKcDXaHIiG8OkhBnA/Atqb+xuQFh//ZUYgOTJNzxLe
	 hGQd1Hh8+slGEmeNLuHpnNiV5VIJPX9z4BbFrqdn5mCyOE4L9eKhSJl6JZPmIYlk1G
	 T/zr6YVXAIWtnTJWyj1Lyuh7VvwHNDLJ+ILQicZf07n0qfMWzJzj7KXJVher/MyoWb
	 j0ha9gFBL75Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9794BCA1005
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175675739358.19879.12336081003195215091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe251739af17e496aa0c270e25cad73d0e4634596436cd90d08f8da458b30177
Date: Mon, 01 Sep 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756757393
