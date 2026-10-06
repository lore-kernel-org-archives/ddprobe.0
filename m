Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 592B845BE3
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 18:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791309634; cv=none; b=Eds3MbCjEYhq2aMHMA0YSqL+m+7kQtHIQDQm8lzyx1ADJSTcekf+/jTNay062/VKcVop2o44ZTzKFTGrNYAgNfa4dfmx2Rzv0SLitz9F82JMY5fZQagyq17m2K9A/WUNdocQNNgHCBqkAZxmVGOBJki3RW0rWtaOD1UL/ZTG4Xk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791309634; c=relaxed/simple;
	bh=Q17z+Fa8LtO3JAA6Fs57+XKeYo0esOll/E3YP5Cu0QU=;
	h=To:Subject:From:Message-Id:Date; b=A6VCCO7jtl9bAGGr9mTqXGfoM2PalsTajb58pXkX9tK9LF3UpTcddjKM4iCQvWYZVXTtjGb+YWg+t6N1Rjn31LLaqoAuvagbqCIBraC/K8t6fJW9oNdQW+js1ZAT6KH59tlAFv5y32ubis9bospjT1NitVXgJxITFynmhtwIxcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dCdu/prj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dCdu/prj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4593C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791309633;
	bh=Q17z+Fa8LtO3JAA6Fs57+XKeYo0esOll/E3YP5Cu0QU=;
	h=To:Subject:From:Date:From;
	b=dCdu/prjYuuifzHmgOBsrFJAAmDlKj0O7YFD1ifWYKj0BWQiiIt2yXt3Q48n2kERE
	 1uN/4fftDReGNvfXMn4uVwTb4EO8GweaTwzRJkItiddozREB4Wlu+IuY6bxzSXw1AD
	 VXD/3SsiyDwQjC3TXg98JOUa/F/6817/dirDc8X1Bl87feJl4jpfOquZ2bOaZl8ImH
	 VTYgQIIJB+CO21y+whrPurl+H1EbaKzhRyrM7aonkWE2fKsUnOSraS684wVBP+//sT
	 BYcnFMGmmoLTwhiOyFruMlpvAHuk+iXuMg0L1bcjK5/pdYIbIPl4KkAlKTl2h1pWdm
	 bgsYhYs7ZLQ3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA491CA5FFC
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179130963368.11110.16987350989249205006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de5fd5e6d30b77159f8cbd265d3fa761665897221b73431b70bca1198f84a200
Date: Tue, 06 Oct 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791309633
