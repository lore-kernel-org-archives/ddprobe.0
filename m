Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3002F1E7C08
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 02:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765507974; cv=none; b=IS0EZJEYo7S1HO+2SaA3wZWlYi+3rf2Nz3JIDxTdPVDtFOlh/AEojaCMAAuMpvnZ/S337wDBw/cqA9T08mW7JhyJGbcVjnQHekFXh3ekD8H2ij/vMrXXc2yxblIyNUkPbtvCm/j1dTzFl6W1ndbIkAOt3ah6OD+GHQR2YbxEATI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765507974; c=relaxed/simple;
	bh=gPVGOh/+J2Ovbq2wab5e5ZWDMirXzn39ElUa5xNYTtc=;
	h=To:Subject:From:Message-Id:Date; b=nyHaS5wTxOyl0dOc8sGYrZAsRtujL2fFMtojGJhyv2cV2knzVLN1Dvf3DJpNTVZ8oE0KbkcMI/a1Rm0o4+pPrS+DW0opik9Ht5eMD4W6h1Fqm6UMbZSZsJrr/gg1Lg6YFzm5vihV3doeP1UfPMngvSjPA8KxV2luCPQ/eMk5RWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uthHKiFN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uthHKiFN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D49C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 02:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765507973;
	bh=gPVGOh/+J2Ovbq2wab5e5ZWDMirXzn39ElUa5xNYTtc=;
	h=To:Subject:From:Date:From;
	b=uthHKiFN4XBbAhAXbKqiU9MEWCeMMo7HfjM3eK/mkd84+KCIn0kbqtKjwg4QMJb6c
	 LaRj+N7eZdfsVjzBP37N8fm4R0hWrf12Bs53HFmRBZPWTDhZfEQOfyatxbFACdPIvL
	 2exkjhTgdJ4hUww6TcBKKIn9vWFYum2fPAdvkR1DGyeJtKPPxGFwSA48AvwFH1+90K
	 UjuPOQRFuNvSSmxH46fClvJW18GmpfjXf50pzwvjL3EF0N7lLa52Uyv5k76aNlLwWN
	 ZCsv47n3QJiGYGPYz0Obj2/lNzHsPfDAI/0y7PqFIXbrr2UTrOLzCGgpMjLD9gmvMt
	 Cm5rhJkKROfsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9163CD43367
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 02:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176550797358.1898.6678072590929859216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4abc3c481ed4db6bdc886f8c16e85da9b9cf9cf540a8821c46c384d46a8fe2ef
Date: Fri, 12 Dec 2025 02:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765507973
