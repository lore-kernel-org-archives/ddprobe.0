Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D070B22E3E9
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758348593; cv=none; b=Ogxkmz14zbg3RiNAm0HDV5RbCw7r+oHt06OBptPJ3SQ3JEq3f3LoRDGGt4fi/iBjMCZlAWHT1PDStXKM+LZLLAfTh9sZ7YOIGNfQz1SiDXsu+51RrykybzV0N9odxr1yZAM8vQUcUvKv1dlzbPoABB8HmGzwGVdmshD3V72F/aY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758348593; c=relaxed/simple;
	bh=k97gu8TCkenAceo9QDt/fYUBsElPQK6H0IQQI0eSbS0=;
	h=To:Subject:From:Message-Id:Date; b=BAi9/IDytNuzXDNrbIAi10rYQHotpzpWRxnKXKY31HavDPAxai+Ca9tqQeT+WCjYcnwuFZy1MOm7Qy8ZIxLKsdgxDfK9luALp+Qgr5GwhbQc6HM0c4b6HxhSzq+qzs/tgJ/V03my+NsRDNrdESIx4dWynJJRyGtpqBcRrUAdhIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jUHk/9Ds; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jUHk/9Ds"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E5EC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758348593;
	bh=k97gu8TCkenAceo9QDt/fYUBsElPQK6H0IQQI0eSbS0=;
	h=To:Subject:From:Date:From;
	b=jUHk/9Dss5i7WVGAGhC00HSecMPz4xFWKzAh1IVQjmstv9xCJdVwlxSTyMLSqqDng
	 viC+Lb/OlUqvj/9ghBaM2a9A2L5110j7hsTTRh3yEt7rVwLlVAtQZjZb7L33sHO+W9
	 /DlvMnWCySvMSc5gpxJY6Ax+2Au4CrbarF1eCaNeACc92VsJ4736xhdILznF3P0T06
	 FNQC7tSZs00E8Z+n+JJGZKfThd/C1Gb1WB7zf59N4/ypm3WnQl7tgYaQFfDzGxzmmA
	 YJfXic7kmsASNfqGX2lgFfWjJDiuUA2Kva30YzW7DG8zhT1STqa/P5UvWRkwNVs4UF
	 w1fsOM1eAf0pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AF9CAC597
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175834859357.28424.13952562302098989252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b34e075b005843be89fc70419ce0ac97041cdc2ba81a2231f690f78b0f4f5db2
Date: Sat, 20 Sep 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758348593
