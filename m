Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 676894071C6
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 08:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780734874; cv=none; b=tVoByKqSjcOX2F78+UkzKsB/YdD+f8RobjwuunOn4JVVU86FomcZFxNVe07G3viNF6KUaLJ9f7iq4wO0QairHdG2BZWT9Sk63MM7C+CcYclMmIzB3e31My/mFxcsqhJu08XzdlrIadiJc87wC3Hzj0S3JyKgLnon74UwStWtmtE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780734874; c=relaxed/simple;
	bh=/luMwFVy0cMI0BFwekcd4Mf0iOSdFiAULNyUUjrVdD4=;
	h=To:Subject:From:Message-Id:Date; b=klzN5PSPhgYQVOzZkbXqib60ylQFVRjcqD2swiQe1crg56Ks1/GirTNHd4kvKYkwXI3f+zT37xBCDhPLt24XJmWRw3bUdYsrYN42zubAXtZrcnGavHxL6PU4dn6MBqgDJNOKLv6a343cdg9H8avW8eWtPdiewZaWjq4ROuDtOkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IIlvKXFn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IIlvKXFn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3B72C2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 08:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780734873;
	bh=/luMwFVy0cMI0BFwekcd4Mf0iOSdFiAULNyUUjrVdD4=;
	h=To:Subject:From:Date:From;
	b=IIlvKXFn+VAVACjQrtnnlvvQmsi+tXaUUrudtPNPiC2wel9bigb5JtU0ZVH13Ytks
	 or9sAJBTfl6HDKoNcwHbq95P/9R5F89r7Y+bxgnQNyHtO8We13x4LI3pQRLSAwpcpO
	 sqAcZnCNIKFxJnZs7BquTGeVSNhxmF3VfcZ9bl+D+JTO/+KSB13d+Vph2kH4612FuH
	 B4dKK5NVhL4HTc6CoQx0QKIsVDNf5dZ4n6GGkfJdjFFfLdiEe+F1IC/Y9Xq1lw2WAu
	 S5iLfJYAb8XfGVT7qnSTOoBkW6xBmoelOv0Ximr2/7xbM6w1NEx8FP6GiXd5H3030f
	 Cj+4hTWveYGaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B04A5CD8C8B
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 08:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178073487370.28693.6355538699266606762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fb503445b3b2e31ced1279adb0545aecaa2e9d91b0c72b37586e5b43be91fe9
Date: Sat, 06 Jun 2026 08:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780734873
