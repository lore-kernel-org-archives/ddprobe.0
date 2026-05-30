Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 895CFC15C
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 14:33:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780151614; cv=none; b=eYJaxsETqWvheQfTcLpQGJNmw1r01AhN1OML/aNdY+bNTJVvyGqGmf88mnnZ/f+Zoc9G/ly9ydK8zkUGax9paQpECn013cQB4i2l0I5qp4wC3LlR/64IN4S210oh5vODqGkVF7pifnIapZb7o3f8+3vw5ZqspVddv4qb2KmESfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780151614; c=relaxed/simple;
	bh=uC59c4jeUJRd8LOgdySeMd+FlCx4fJrZp5oe9X1ebI0=;
	h=To:Subject:From:Message-Id:Date; b=ZEnF+42u0M6fJjyfSiyXDs/VBqr8et6u0GdibpxqNFpTpNUiHb3euUSHfcne8g3SUsA3yD3frNbWEQWq6fmolzhD6hWrVokdtupRy7OFE04+urUCzbcfHk/NKhE+/YlyXBwX2wTjj3B0RuqM+ojON4qsXky4Z+N/YuR4Ew9cQZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lh/+fGLL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lh/+fGLL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D387DC19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 14:33:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780151613;
	bh=uC59c4jeUJRd8LOgdySeMd+FlCx4fJrZp5oe9X1ebI0=;
	h=To:Subject:From:Date:From;
	b=lh/+fGLLkCzTCmfugQNbZ2z3phJWQmzQEH9t/3lFdR3ErGtQ+mzSAZ9GijM0uQfbN
	 wlcQcGUeGpxPT2YQMVu83D6y37qxW5ZO9QfOFiIYHvNLIPwlhtQcam5g+q7R7lCuo/
	 RchgdHmMkoWWG/L6bmyK0BoxYMFwW5VxhbM1687kIQJdCkj/93mTbYJgLnZE5/q/I5
	 32zHLWmPHjvvaMTS5h2aazo1C8u2cBwNNeWMJ6tspru1lfihx6r1Na85hkYMnsDRnh
	 Gn3Dj1i7pqMg17F3DcOEaEVzIASz7BVcLm/D9n0T/upNBcWFen+rUq8J9LtRWa4ekk
	 FNKIeNsyifq+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1F6ACD6E49
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 14:33:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178015161371.7202.11794243776610248852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 343d4c6887d4a9629b29923800439bc4b936007781e7bddf36ba69c1e52a17a5
Date: Sat, 30 May 2026 14:33:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780151613
