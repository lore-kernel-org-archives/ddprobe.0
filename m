Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B35A3E557E
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 06:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790922034; cv=none; b=bzSLpXKQwzS8juCTyJNPcejXzdqtxXQey7fp3eAAwANby2q1nCQzK0wjraFPZO+Q5JmS2sw3QNhoq2kCJn4gFtz34pMfTy5wOU0ujPNFEFbfis3yBRawoAwETs+7bRhfZBe3eidIh8ml9uKHdDvSCc0DLrJoa40e/YJFhbktUiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790922034; c=relaxed/simple;
	bh=IdmDtw24870/ED+/Npozsb9XpsItLoSENVqrmsGFpNM=;
	h=To:Subject:From:Message-Id:Date; b=UFInx2I3YtU3mYWcL1LC+peDQ+aEfLNz0VnafAVigZPZG8LMjzpg3+JO7QG1e4ZhM45jJOt6f6h2VClieSRiuvthnu/qZo2dmGngSvMHsQPwb4r+3G3s4BMi8OyqUOhMukjkBXRwtblcUGdMJV08hKWfvUmgRu/MlywvGokvd6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aF3AjgQf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aF3AjgQf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0DCAC4AF0B
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790922033;
	bh=IdmDtw24870/ED+/Npozsb9XpsItLoSENVqrmsGFpNM=;
	h=To:Subject:From:Date:From;
	b=aF3AjgQf+KpMemqgCYj4ac5nbyrrmXp8F5k4Q1uXmfwqT3CA+trhtquqfMEY4EZcY
	 ShIWtH9enEocp5BQTZ7Qwx63Kzf4dV3eYutUoFc3+NOI5eZQ5ozM9gKm+AvrNlqRh7
	 kfDfcRlwXGu55z4faiWzczv5PFMx81QlPxc0CNm2DsTlpvTEEcySaBrV2SPFeMc1ry
	 nAuUDc3kURMdEXMXDJDZ8mhSayeXmFzr5bi+yD/m2MJVSTmE07k4dan/VemL2+nwNu
	 AbGIHm9HmPYQad2kS2aEwIkLmLJSgPCtbZAB8uRUIWpPdm4LLVksRlLRUvkoYszJme
	 Otv/ISpGSBMVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B032BCA5FD4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179092203368.25844.8273071830523677979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a055df7500f3372f26d5228b4e1037d692a7e2fd4644047d559730a0ff2c291e
Date: Fri, 02 Oct 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790922033
