Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2404F19CCEC
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750534795; cv=none; b=I5s/B01F8gPM1JNVGhHULx6vtkMFm1C5tOBZHcuI0PDxOyugJzrxgx0A8v4yQlD41SmXOCBakNWt8DeM0do7b/S7z8dzA3N3h8bPM2TLlstewsAzKvdz9Kp/bx3V8/6N7C4moC9DAal+YnnsaxovtPjsqHvjV6GUrIwjXqT9+o0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750534795; c=relaxed/simple;
	bh=WhqmEzq0awEqywzq0GKx8RRPxhcdmEZOn9KEHSI9WUA=;
	h=To:Subject:From:Message-Id:Date; b=fz2lKd3Gmk6vRnwOqRQrgoPUkq7ZL/Mg+fJCCwcktGbCaczjUSAY+k67w+GfxZprzEFr8+7fvJOPO0h4PB5KNMP+8uB4tq2f43GkGBUrNxVG7IKmzGsby9qz3iG2Tq4BABPuueDfZWBvNwLp7wRCQxQ3XzWHUgk9XY9D53+Ah+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h369od5I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h369od5I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0CD3C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750534793;
	bh=WhqmEzq0awEqywzq0GKx8RRPxhcdmEZOn9KEHSI9WUA=;
	h=To:Subject:From:Date:From;
	b=h369od5I4nbVn7d7E+rN9iUnMBUx2gU/MsZQeLVOe6TM8Y5QoHtKqEC/OO/cXRg1/
	 JNZxW9iTQkjclxbgEYPcHTPFhTscJmH/TWrbFm01PwNxSyRDNykq2Ng1vpNSjb3tup
	 uN9NP4VGvndS1RT7tEDl+PnYQKG21HgxB0CN+NCldKUIYsHHRb+d/68m18DtfXLtDt
	 lyjD/mFRjLYe0EcvBRmxs1Zlq1Q91cmgsHxF+fuEWgTH7IhWcvP4rgg1+GZis43Fqb
	 0TxRpaiW7rhV7mFsrpkxjs9YkQKeESZl7f2bgZ9TLqVsNcoWhA+0vtT+4hYfYIR3Um
	 CirTDY1KYHksg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F72EC7115C
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175053479357.20169.13161608076525650788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1d1c866bbfd4e81b1308e2913f596b37601480ea4c87d6b7b8127cec70f3bf0
Date: Sat, 21 Jun 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750534793
