Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21ADE19AD8B
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761393594; cv=none; b=Kdf4ksC8XVo8jKFTcixI7Zqz+g3f2J7jQCsngGB1kNrHDr/A1NnCzjvV0qt6REkphL7U1lbS9Mhk2/E8+0Wx67Y+D2pd+MVAA6RmTCpPRcFc64krMDIBJzX+nfOiGuG/qvSm3Qq4/OLvf0FEZQxaAVkN/WPxw/xZstHQk+FrsnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761393594; c=relaxed/simple;
	bh=OGXPB3RRuj6o1w3zGcUQi0371fOiOPREPRbUjz7qymE=;
	h=To:Subject:From:Message-Id:Date; b=t1MpzzzESO1oujifAz9MQAQICeROD7dJB2imwynHbu1yTtjq2Tkg3GySwTm2yp8QhG0oEiwYLYoNe5bpEu780lrBnTTYA27IXWEp1fIfK45/Ci/ucj4vDyYbN8Nz3NElCWw+M5Fec/JmEymf5Rn0PmEE9h09CnLF0CQDklhZ1XU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kfeybqvj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kfeybqvj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E04C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761393593;
	bh=OGXPB3RRuj6o1w3zGcUQi0371fOiOPREPRbUjz7qymE=;
	h=To:Subject:From:Date:From;
	b=kfeybqvjlYZnTeITqMH+4tUAyBiCx8561mwuxZMXsVf0UG4GhNPjqiizc3H/4wcA1
	 3d28mO0Hg2mNI2w3jZqbEUyqI0dTC3c7B+c6uPl2i8bgcZWvmfZiSO4W+PH3kaaf6H
	 6zkvegoKbYQtYqJSh56w1RI8IiNRGPvPj4iAVQ7duL4r2VDTQbpsi9xOAP2m0BHRRx
	 Qakk4KKRnRzhq6AI5zGnIUpL87VKKAfvQH4Yk67gEMkIYrhGuRJjt4NnkZ3BX0Lnp2
	 UjNZ5m2e3pZlJsVEjJrwJ6lRfl1H2yFeuEvnA57FiDlXSJ6VQ9/+aUTvOEDOZ2gg6O
	 MjpYL2m4muYxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91690CCD1BF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176139359358.27514.18269439566754929609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 990d9b304432eb64e9eea6bc080e817c91102db26e43c65013745076f78179c6
Date: Sat, 25 Oct 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761393593
