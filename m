Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25BD8280023
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758193794; cv=none; b=ZZIVrNKY/qKqghTKfLYjEgonUvtehNAfQSdUN9+n+7Fm99Rdnkm/Hj/I0nAHiq/xa3lxDmeSDXJNpQDn5coHHxHmFyHLzPA6OwiRRtoAmH5CI9WhP2Z89ePYL+FRKWO0/XLIvPeecXV4p5GOpHZTRekNSCTlyJ9bkFHiRi84Rnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758193794; c=relaxed/simple;
	bh=TtkOQ2cKh+WedXDFJIcwHf9l3nfVCSAdjtvfgSpkHSc=;
	h=To:Subject:From:Message-Id:Date; b=ND1EHU4PWQnbyEhl3O5KAAZYSLwxF2WqCMDVO4QcSt3HZjqgJU83WBj8Yia19gnugWRU8Zh/qXYSYTwx2zFCmcSE2wz3KqhXTeaJqXr5BtJsvQwBDGo4Iwp7Bdqlyf8lZy4QluO38eSXu62EVu/zEaRa4FgMKHpHFqAkGFwpY+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fmo1+l7G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fmo1+l7G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D4FC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758193793;
	bh=TtkOQ2cKh+WedXDFJIcwHf9l3nfVCSAdjtvfgSpkHSc=;
	h=To:Subject:From:Date:From;
	b=fmo1+l7GOieMxY5RY20Bxu0XUqvh+CCEq79zyV3ogvOcO3acQqmV6dm3MP1BFdJ3t
	 Z7WSFGL4LDjmqcgcNqhC2iYux8CMg+14Y7r6g/+mzXOvwOeaOLMNgIJTCip2aqqC1M
	 hVPut5UvgE+hiY8MEuFUmPj8wl4d9NlBFeHNU/Ib0SCenRMcI1PRl7u4vQQKhmZ1DY
	 alyuI70rEjw1uu7uRknfSwvd6Ey+Nd3kcXx4WKSAM5ahlCCdmMcd9YTDfjFsXbq6Er
	 qoKz29pW0U8Qiqcki3IAKH3OmFgMbyU899Qpr3ZL2HmKFW8wEJiRw6sJHISvaKESCZ
	 9GpvM2VxtPClA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954F6CAC5A8
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175819379358.2487.2769337628542220950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a92132b81a38d0524a6888e627d13aba5abc027774684dcb574a63f7729a074
Date: Thu, 18 Sep 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758193793
