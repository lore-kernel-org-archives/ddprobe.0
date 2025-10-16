Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC74E223DEF
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760638794; cv=none; b=b8VauACGUq1cnblg8q5C1lV+/JBMXCcrWX+8zfCGHnT66aElM1RrjYTeyNqngiXZT7h3wyQWv2KEyc6mmwYbx8KcB2Im6FoPMInIwMFTn0HnZETxoLAGei6UFeYQHCFEFypr/iuR1C9zBrrNLkvp42YdszglotVnHu5cSltiDpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760638794; c=relaxed/simple;
	bh=cYxQBm6a08nBXgTmMkCZUom7Vu/ZzGkfX+4BB6Y6trI=;
	h=To:Subject:From:Message-Id:Date; b=S7HCzNqr1kmWYsi8nAhRcwGSzWopb5Z2318avDhtX5WYZFp3xEYAKx8JqqHfgwcXW2U5nrv+Vpj9R7LgjlW/sfA7HytkOJOl7H3I7Vhm3jYKR/sAUh91oY2pfYDkpGu5tOecyvpg2ekYbZ/nDPV1LK6CL0fS1doSP+CYf5Xny1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=On6HTR5S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="On6HTR5S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E20C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760638793;
	bh=cYxQBm6a08nBXgTmMkCZUom7Vu/ZzGkfX+4BB6Y6trI=;
	h=To:Subject:From:Date:From;
	b=On6HTR5SV+/u0yMGuC0mQGF8INUaUNp5VgJiV5sVuURyI+DB5a24CymPWPZLTwVuq
	 jMKuxfkSUWWBie2TRNwebZCgW0MT6x3ypi9pclRppvhGjp0kcZa11dyIS2cHIiUIzy
	 be4r/OPvcfBRG7Lm2UbSjrXN4gfN1u6+9DdASD4K98f6m2rFHQn9KjKXYz1Ve+aoCR
	 p8LVyI00iYm1Yd7QTQUd4gmWx1KBaUWYy+CuNtULA7qlmJyKSQdHSvIkIIpaftFZRl
	 FPRvDbwXf8vHu+YFf50jvhaPkviU9yM393dxsyvILim/CGIlNEZIqd/DLZfYCq+1LQ
	 jCVISt74NQVJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E6FCCD199
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176063879359.3428.10980366951813027256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 705cfe8c5d44f2840e0b9d2f926a9fcc451134d9a7c3e3a0bf2b15b600a1eadf
Date: Thu, 16 Oct 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760638793
