Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45D3D12E6D
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 16:45:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721148323; cv=none; b=m+O+xARof3LyB6Qli8oEYMr6r14EDcZG2b9COX0PEQ3dzQRJ8sw+kW/SrvLDX5ZfZia9GEGlyYZACOrdX5OrvPxnxb5E2U03QS1NR55+QUMqjgjWsq0rzesWGg24IqA8DA/4H2UaTe0Rnki3YRZgHhn2730jqA8dElv6KFU7ZG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721148323; c=relaxed/simple;
	bh=9I+g8ZLIsBM0qXh63ONF8jfWHEAADcL9VZPIAsxFsto=;
	h=To:Subject:From:Message-Id:Date; b=PIPGQZR3Ns18gJjw/YQPkuUDiUB0n0dhDguNx/mxcCdTP+jXN2F215HJemCsKJJRRRNbNWeFZT8ycqLVg2IJegKbwipFES7hdee0S+P30oVkaatYafR6CeUgPdZe4iZ2PKCPPktwWf96tUwt/ZytQqMT6JEWVJ8pnGvhk8nCNEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=scWocfB5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="scWocfB5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D405FC116B1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 16:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721148322;
	bh=9I+g8ZLIsBM0qXh63ONF8jfWHEAADcL9VZPIAsxFsto=;
	h=To:Subject:From:Date:From;
	b=scWocfB5Y82go7/uSOYOAQzjdg8WPwg522KmjaN1qXMCnRd6jaSEWnntqE/Nv4D3X
	 3a6CUL5yPQajFDEvVNFvuRGTzvOhbNfN/uLa8HX0+nwalqSemAHJlQzpu2EIjYZ0WS
	 ST4/xWOp9XYZ2OtGQQSLQ2seT1izwd5XjzSWCC26uKFMvKqvvsWWSusFyKbqV8sBbE
	 j1xElj2TJfjCvLWdJC09oxkHr6Ml92RbRX6yl5NjH5TLnpuaBU35SluT2W2lFZOPhL
	 1OO2/2DaFDUjYI91eVZvysEUrRySfHSfAlC3qph3gimpo39bZTYgUb+mYBYoT8ZCCN
	 I++88OumvZexA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE52AC3DA59
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 16:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172114832277.28676.3542763678581135254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11df7becc3c70cc8db36fcda9e908956360497b9d83a26944489e944eb24be2c
Date: Tue, 16 Jul 2024 16:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721148322
