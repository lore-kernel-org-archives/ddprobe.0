Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 321CB34BA42
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759020594; cv=none; b=d6pSKC5/M1c+nJ1pCdAcAKjt7q2rIbA6fweoCmGMBuG3R7KUR6MblYynLAEMZtXdwuXBMsxtLVQdZio3ymYvBdsFw4r6VB0Y1slzVme3lChgKuQM3DP7hBXsbC8wHQdRHmNmOj3Ros5+P6i24l+SDCn0Q9mqBj+DvonEbcQ/llU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759020594; c=relaxed/simple;
	bh=HGf7d15YxUCv71Q7sg+0aNaqX2XBGkiXbVHMjQoQhdM=;
	h=To:Subject:From:Message-Id:Date; b=RjsOmPVNCCpqwmuTMCS8IMjE0rZZV8sIIIK3sHb9Ax/veVW9VRKxjvC92Q7/VXN/9iSkTCxrL/7CbO2r+FMbgH0xUMX5lymnw6cEbro3tXCDiCM8XgSoHit/CkxRkT2L+pedbm5yR0tMW3BVA3fvZh+Khg3MntXC+JUTkCnabQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZqZmSWda; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZqZmSWda"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0F46C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759020593;
	bh=HGf7d15YxUCv71Q7sg+0aNaqX2XBGkiXbVHMjQoQhdM=;
	h=To:Subject:From:Date:From;
	b=ZqZmSWdaxNTVqN9EEeFNAhGUZNYmOJbFEk+OJ8HtfQcln5CJfv/2ZwfNlQ81a8uaI
	 PGe42nrnngpOn35MrCh0w8ClzEIkluB+YXPn6l/levm1abS0iY0i0ReXz50GfWZE0B
	 HJwQnbOytJ7tfj6xdlI3wzkjvPd8nl4qDrLk8at/7wdnJcE+1CGPgFZ7iOsRb4qy3I
	 6tzBDEasPJW5KWPN9JquPj6D/9kEb9tC48wOcSuzd/AvFuC3uc4luWVutI6+5zix2n
	 FhAEWhScizSwgqZEeR5rPaZ3wQklPM7Wo+8bBHDrJUzwamSTtu5qFrT2g4QjQW1Hpr
	 EK8K4XlN0U2DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F38CAC5BD
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175902059358.10423.16368200389009766949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e5c64a8f8bddc6c9d55eff4fabede5b9d7703d26177ed1a7d695501a19b73ef
Date: Sun, 28 Sep 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759020593
