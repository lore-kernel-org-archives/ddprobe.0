Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C70A1C3BF7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748238594; cv=none; b=XfIS+LANNFR+JocfbJPk95vJyCDxIa+BOVzDb/CCj6G62JEutmVxpcgL76iW4MateYhud7iyXHPrds0oYXmepYj0oIudI9EpaRAQTCzSovaSugwiOoFkplZPCJp+lS6DF5bMIm1EVpj2l7O02uzZ93nSebpPLJhsbY70DAN/5vs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748238594; c=relaxed/simple;
	bh=4Uf60z1oTa3J5sKAI482Wg/9i/+q4iqtgWOS/24rMzY=;
	h=To:Subject:From:Message-Id:Date; b=DL8Lsh2xnOFQU3cajUmXCPtiu1n4JCV8jhVzkzvaLVfa85sTni/mNG3hAXahthRhsv3P9XnKp0m15xUlL6aMregmCdAdB/uHYCo2eeM3vWlQY5BFzRuiIQe7/mb5gvpLA98iTVnW3KTjVFAEoRy2ylcUZUkwC0YdcIolaTBc7HQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OWZIoA4z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OWZIoA4z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A814BC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748238593;
	bh=4Uf60z1oTa3J5sKAI482Wg/9i/+q4iqtgWOS/24rMzY=;
	h=To:Subject:From:Date:From;
	b=OWZIoA4zMeBP/+3jzQwcd1tsqGwz4hMV2EZKkd155IglPSb8n9dd8hNGbGQoRj1Xb
	 Ke5oiSwpc9iAWqcCdPfZQ1ViRI3umtkeRc+6VvxJTcEI/sT0qMLZ1HlG0VEIcwrxSg
	 W+VF7Vfryq8e8v/tGcq9cVuMChPVgfb8X0IhxNS3ED08x2DXULXfa7BLrPBJgMSVDq
	 4GyQxtjVsttbdh0Q3qkJ7slb62nft8CsNAoyQGY/vb1CO9gwewSY4NoDtZQfL6UVKz
	 nteCO7SHu8RrAbVaWpX+G74vHS28lftNP8MJuu+YC/aT2aiREPftqqLs3xyE73kp6e
	 d9J4Bq+hiJvFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90057C54FB3
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174823859358.4405.5470071101494756601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3003ab833084d9886cb50f126c44a5bf713c2229087320f8d2675fb8204ea4f
Date: Mon, 26 May 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748238593
