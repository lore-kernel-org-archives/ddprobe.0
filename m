Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 360B61E526
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 15:20:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713885623; cv=none; b=l/QVNX12dFCch/5nPqUFvYQc971n/KqW4j8JNEzHRnIdRFb1SmFDvvoq07moHH4IkgMSCmmo/ZyhqbM/4QsbdlL5eSahK1YejsMrX4C0MuoW8ERQGKF/olJE+mroGl3O9HVzMQR7m4sERey20ou/l/t6JXLq0+VOukrfqXx9PRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713885623; c=relaxed/simple;
	bh=QnczssaJD0uY4DIGwOMoi5AXmlhaIyCEu+XC1Y29iRE=;
	h=To:Subject:From:Message-Id:Date; b=ijA135vu09xzEuMJhqmbiOcPXBDiS5UxAWOqeaTY45AQyChXWBEb62TSykms91Vo8pNxCwAjlvxs/G4CJcDtMOPoa96DOmr6xPfHJwz4PI3tljODLg9MePvRn6khqqd0A8CjIJpKRXr9x93GzOEk9F5lHGby25UgVBIzi8+3QoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TvcbeioB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TvcbeioB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCD85C116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 15:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713885622;
	bh=QnczssaJD0uY4DIGwOMoi5AXmlhaIyCEu+XC1Y29iRE=;
	h=To:Subject:From:Date:From;
	b=TvcbeioBitK/+sfkQJwGxMZ55NKahtRCTy3hElzK6IPqxRHGwcuHhPicj0AC8kPTK
	 LqCueVfVW2HryozLhvkhiYcwD0qqET1Ny7zZap6tJbK2tCihMbNXUAbRwSXDt6Wylv
	 jIGKVlUVD/WylLyeYYm//zv37r64h4SxI7T/Cg+lZ9nx9Zh5ioKKeAqPw6TJzSYaeT
	 FyhSNDpzY5SFzllxoJ6AiudaPMsL0oT18oCDveUcBP7FIz9cfkf+ZUa1+tHXd9n+mT
	 3zKdPfJgBwhTK6LuoQ+bE6RnNHXTWW//A+/31gSnd1vg6rcZIkfLLlnuDD4jgDCQBK
	 /HgHHZhQEs3lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAB3EC4345F
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 15:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171388562275.8439.14704517473644416701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42522fe8f869adf46b3e2b59e3534f323ab69dab78e77135526dbb642026f818
Date: Tue, 23 Apr 2024 15:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713885622
