Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 256B0BE5E
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 21:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776546454; cv=none; b=invZvYYoIQdBpYPIGwM2vB0nTC4CxwGFrEeaoHJOdUFpR2023GwQnUtBQrn+3R2OKlV4UV5BIFubP1FdnVgbQ1JNeOx9hcEqyrdjANj+1ZeFdCdDraaOO2lmvjAITJ/jD7XXhmQYD61ArBs13Uz3s4Z3ly6KFg7cNVISvfbBC9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776546454; c=relaxed/simple;
	bh=xNf7tWvvoAqm+hKtCFqZYbfNFPtEjlnAgFOAz0x4w1M=;
	h=To:Subject:From:Message-Id:Date; b=HBxWwMPKOzgc9OiP8lNX8X/D1Of0Xd/2B/l5F/t9KjkxY0qoBmrmXgLuAQ3hP8TLdrwtoVSy/dtyRMFp80hXUqVIpfBm4RTSYG5Bx8dvTWKz7mVhsTtPdZNm9JKKCLvhbqfxvLVFhS3S4nra2gRaQlPbn50WtmNh9ZFp47ykZpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=auLjGI62; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="auLjGI62"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C313DC19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 21:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776546453;
	bh=xNf7tWvvoAqm+hKtCFqZYbfNFPtEjlnAgFOAz0x4w1M=;
	h=To:Subject:From:Date:From;
	b=auLjGI62BkHu5BDuxacE6YBKkKZttt254GhT8WQi8MU7mrMDQpk6R4bYTNewaJsou
	 1AuzjeToaiW5pEjMksWF7tBQCiZSv2s1Dxk3q17jVZtAJdQEYwoIesUSDI9zM7eU3v
	 L++s3xjuEYfQ0Bq+MDBKti2W8lUPF7YQWVTlV864c74/loKA9vh3iQ6zCsVWQ8qv5g
	 oHILANfqphnrmGb/jadZXP3m7WBdjKCDdAcWAzbJG4KyLnL+4UJ0J9DKKE8S8yesKR
	 pDTfPHF3x9cALFCkVhH+0XYcEalIkt0TUKdiQqws1SA2U2y/JM+Ps2kc6Ea2bdUEJJ
	 1pOYK+pJw6DRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B06C7F99C95
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 21:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177654645368.28935.3352453260855066248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f59d493dc9f4cf8fb49acd024df6a529aacfbc50c45eb323b066acec7a25f4cb
Date: Sat, 18 Apr 2026 21:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776546453
