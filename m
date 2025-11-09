Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FB841F4174
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762712994; cv=none; b=Kd6XADACl3MJorafJnCVZl3nejZaVay8R8B873CE19NJR6K7ctdrqXrlUOhy3vTCtvFTtLwcscsudjHl0xW4wLJGAhFut4+HS5tX/2dFQvv1XpZIlnzxCC0q/nbt8qeb8jTVCwkbICMPqdeKw0A142fOfh36NHS+reltpjD08js=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762712994; c=relaxed/simple;
	bh=QyKtwPwSm5WYTB0iWmyziMSlTIqWTfdVw1spauzmhxI=;
	h=To:Subject:From:Message-Id:Date; b=NsiM7FQRnYxGd2jrMRRZsWcixZ5V61yEwAcEy5jTYaK/yX/5wGSEcmi6g7+1MuwtRYXtvcLok4knTTDd7txoXxnzVGKpxexqKdmjq+aExFUCZ+yHm9cUmFgXZRhAR136p9tyzUQnBiLvoaRBWTxLRP6BmMQvENxCG50BmaC45KI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hfTnWG0t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hfTnWG0t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CE9C116B1
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762712993;
	bh=QyKtwPwSm5WYTB0iWmyziMSlTIqWTfdVw1spauzmhxI=;
	h=To:Subject:From:Date:From;
	b=hfTnWG0t1Jz3dzBPKk44Y5mKY0xghGLS+jZeeJmtrbE/9gGgaZxFUjZGnKfFi2ktk
	 ALj3oO5EZTqhLMoxs/9s5QB6CQouRmp0sHdeCwp8OBtzFy1mRWakTSgGFdR4y4CkQ3
	 UXY1qfXrZYWPG1a/bc/p6MkyqpswplVRhpqyh8JICgJkT/Y0ie16L/zvezkdk/tOEH
	 aUYhk69PiE8gvnTxioR74r0rdhdT9273nmPO5y0klAR6uh9t9XBpH4LUAQn2NbjdSS
	 78xn9/Tc9xJe/w7e5yY5NTCo9VP7EtzfTPuqpBIxTNg8msGkSnvSkkkV77qykelZo4
	 dzTejjrrXcJpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9423BCCFA1A
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176271299357.7275.5784406092626166161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d97d5ffe2065607759d65d971be3d5f69fa3a3fc9e823917b75c54a1eae0f150
Date: Sun, 09 Nov 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762712993
