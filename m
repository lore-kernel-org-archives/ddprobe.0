Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C2C627380C
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 01:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762133994; cv=none; b=nbuRB7E3yVTU3FA4xYleCtYw0kyh8oKTI9bzgUYbEJHRa+Qfv83FDJxlLmSbZrXqh94gRVuOLoWbbVcn+kVXp4rG1YmHZ/yo571+9ne76+7E99do+Hp4yFCvmazYiipBAtfJN5PiGPV/4v5HyWjGto9QmlCvkPTTKsP+t//mJ+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762133994; c=relaxed/simple;
	bh=DV5+nqrOcasLJN0bcmhjgA5ntkErxzAL50Tn9kY2/e0=;
	h=To:Subject:From:Message-Id:Date; b=U0KuPTvDxAuqhJJyc/44AJlcxRNlJQMxsgMf80wPXAM7q7goAVIzHRHE1Pwc7RQgL7QmRHGVpXE0bGQ6M1+bcHuxF9U/48bXs6LZhW1AddXshUlzex5fJht/cOpIhWWe3oc554zh6pQ9ZR4h3y0ss3zFz8pC0BdFvRMU7LoG2z4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HE5LPoeE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HE5LPoeE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D513FC4CEFB
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762133993;
	bh=DV5+nqrOcasLJN0bcmhjgA5ntkErxzAL50Tn9kY2/e0=;
	h=To:Subject:From:Date:From;
	b=HE5LPoeEO3TQwn7maw7gb9OFt4vKYU7wqKBDpTyQfZt9LsJy0lowCkkjYxhUTi5dD
	 HqQFNMQGGY8O3nitMka93omPjNiT/66c/dRLNMc/ucFO0ViK5qznLa2zofti5RNKtw
	 BX3eZHSEHFmjGD7Alznh9uOpb82Tnk/SJf68wtMsQYNWw0pbT4pjNmCm0rqVEaHxMM
	 n8HFdw1tmlHbo635+U9qYxGZvdN8k7m1u1lVf5bxXg7VMl9AHkIQOY+UlmDgfHzxcV
	 YLVEdJBpM+BMtmUeCq8vR5EseHFmb1zBMieKbWNCgmi4iaLggu5/+aeSRhCBEZPDZ0
	 1jA5UzWdbZBiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2178CCFA04
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176213399371.940.2712346984099689540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a38d8a724352ca4a9d2c9012675b550ec36803a99598747c6301160a218e1ee3
Date: Mon, 03 Nov 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762133993
