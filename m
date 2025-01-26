Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 423DC8C1E
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737877554; cv=none; b=bfrOHqg28uV6o55UCuIJR1cU8tuidm2dSZd3SNjpDU5B3CSSv832x4xzobRhqZtCAXyPYMw6XvLQKq58LgosbQn177VVVM9lJ71RRULbMIMyL5U/upG4Hoh2huDpsyIBIbvVQO042+dDSFoEPkmx2wEcY9TUxFbV+dmRkUEf1D0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737877554; c=relaxed/simple;
	bh=TH9N/jYfNiDZRUBIvS+aQ0pu+V1ZfM7sXch9CbKLcTs=;
	h=To:Subject:From:Message-Id:Date; b=KTLyn2Mfxu1wKREemacSMAQPYlLjou6jpTm7tOaKPuibx3uWnx4k2xTqzqj5UgcpmatQMSByk5L8mE00iO/7mFq5HNoE5coDdRLQjBrBphF+p3BAX8g5hWVZ62gKivImcT2dHNkStnB8LgP3XA5dUDbg7KSohxN7ObVX4CD6THQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=re4+LtE/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="re4+LtE/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA8C6C4CED3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737877553;
	bh=TH9N/jYfNiDZRUBIvS+aQ0pu+V1ZfM7sXch9CbKLcTs=;
	h=To:Subject:From:Date:From;
	b=re4+LtE/lyUnSJWNFH8NRLlhd6pbDt4b2nV+84MVq/tXu9dq4B3GcvHcyi6s27g8p
	 a7xROU6kBWSIXPgY4zGOS6KYyd1urWkoA3gZLa/CRc7x1hHTpXRjN9rzHQxc2YYRZd
	 W5UJ8By8PzaFOi3UwGI6At75UMrY1GaIIvyYjWSbXCjcFV6Uo7PHgAUcwJGcxajbu/
	 vPMSesv2g8KswO5Pf8TbHg0A+RHjYEUiBdt2vtK1LbeVEJF1EkQp9MJLa0Ef8QOmdC
	 r1sKGhgtFvEB3Sk2x+DYYg0g/9tWP5b/lYZ4YVNDmtdeB/Mf5VFpzJTV8PrGV7HRSP
	 FUqRAPQQzsIJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95888C02181
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173787755358.28367.16595222127831267404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83d17644272f8fa23f38c5d54c943dd8c102dc032ae66a9ba5012665085bab13
Date: Sun, 26 Jan 2025 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737877553
