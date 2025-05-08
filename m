Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35BBC213E7E
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746685794; cv=none; b=s86G2dfeSk98G2al401BjbrnwywxJiZdj2IaZrYDqhxLDxbVuNyqX/qfiNBr7glsFPUq3ciXBaitq37kpwZrPN+t6oECO92I2GUKMEFZbZeAoE2AjIx0bYh5XKtyofW8qOuP0VXny9U6YBW690tYn3TCSOatiQ9AszQIrLtDIR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746685794; c=relaxed/simple;
	bh=5cM6oKIb1KNfsaS64bz4c+ea0M6P6kxQ7K1oFlQgWCs=;
	h=To:Subject:From:Message-Id:Date; b=U9ckQzmFjapL3s3ypbrC2C0E2/d7HiZD1Jtw1S3rPMSLYNMRwI501TrPHQSpyeSFPhTCbl9KjRnaLUEW5IZIIkOLW8A4mBE5S46tTayR/DWW2sEGVXVbCWVHsr732sC5rcl//+DO/3gxbc2ku9Y7Z0PkjjIKfIeskphpKdcKz2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GHZeUlS7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GHZeUlS7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A4AC4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746685793;
	bh=5cM6oKIb1KNfsaS64bz4c+ea0M6P6kxQ7K1oFlQgWCs=;
	h=To:Subject:From:Date:From;
	b=GHZeUlS7LmWVUy2KSYknfPYm7VwEJn9aubOhtdP0TYatf08Sqbmu3wcw0qMBcjnE6
	 J6YkNn9BnWiQQg2KKGur48NowRWMVfNzmSBa+amA1Y0evmj1NnLdiWoiNi8EmXsp8a
	 +Igg60GyiJeL9g6yq6cN/2gwG75lkuCuj19Rho5z05lwe7Sm6PD6YukkK51IBz92UJ
	 4Oe1p/jGbRhsTG4XPVsvJaFYJoydQWfUmXw+BCnLfBEsoE0U+SMf8J+K0VMY7XbYSg
	 +rYfHSPMQ/fnJdWXV60olHkTT5eCmubqEXnKbdWxYzMICOjJsfkikHu5bONoJj859n
	 mZBa0v3LaIbLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E59BC3ABBE
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174668579357.25145.12028105063882210998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a3761eadfe1041a69e835bfc32e139f735f40b2548129e6e9b8d909388143ed
Date: Thu, 08 May 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746685793
