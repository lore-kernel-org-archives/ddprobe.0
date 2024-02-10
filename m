Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0305F5FEE8
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 21:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707600497; cv=none; b=PANR066Pnp6/vrJEeTBg9f7x4O/EBxClbCJhggjr4+mVRmLdR6TgzQRP0MhNwZMfB2MVU7OG2KI2EDDIVpdqQqNMkmBO+/ve9eeU/lYIar71GUwHE4VgVIEKWhf9hq7ewg/YA0cQ9E37Yd64oFsjVkSgz34FBzMSfWQYHWDtCG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707600497; c=relaxed/simple;
	bh=dSIyfkcYtvO3bp/AVYzolJZlmgwCuPsVDhV9IFwJ42M=;
	h=To:Subject:From:Message-Id:Date; b=pY28T5dzGaTZHpUxZgy/xvT0eb8xO0liX7hD0u2wZkXnWs5ULaZWR3/0RUTIjXqPCOGo5Cwb33s/U3jJmHvEwLz3ZupTKctcRKPmQF0wIoWPKdRwIJ/KiQM78mmtE1CD8M1yRNvuCqqcLpJQNY6zW5riraUY3GCDpwyHD/owpLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z77bPd1y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z77bPd1y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7ED39C433C7
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 21:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707600496;
	bh=dSIyfkcYtvO3bp/AVYzolJZlmgwCuPsVDhV9IFwJ42M=;
	h=To:Subject:From:Date:From;
	b=Z77bPd1yHgqk0R68zh2iviDF0ims6UnPP5IaKfaBI3PLLVMzax28oH12hNLkAkA27
	 1XFwLZvPUUA58A79bS3aOmGM3omARufU81bXfU3pcOlnOoiB+O1eF+84DGo//4RN1t
	 lI86hUfaX6hFJ55vK2vouKi2HHEsJZRYCPqJbE0C9NJapfXR7GoktYDe22Sl8ywwj7
	 C8Ds1+oZZ/CqeRRtKQmVviSu0BVegTbFHmIu0d4tZIemBB8ex25ugzrz/KWBpWAbpA
	 EuBjjAZEtuj2+7ZpO7zUpZAY91yxHs3zuu3xx1UQCZD++ElG1J+4wD8Kh5jNfAzVGa
	 Q4ZFDBNzTF/bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 636C1C4829C
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 21:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170760049638.28497.5941364162705441506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af09f0dda6fc6b3b10c7adff0c53e2154407645c0973d3a94b9b0f828237bc89
Date: Sat, 10 Feb 2024 21:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707600496
