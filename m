Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0202A3A8F7
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 00:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768177434; cv=none; b=fU1LUky0tFtU9FvGnPxW7Ecpxvbe39VpItOnvUGnz+OUmh50WCQQ9NkLfnIZL9W2tTHQ4gh0OVovUhARhLhrh46Vi2rT7XL017qvgFKC3Y6t9Oxb4nK+L6nIsGSugarc2lOVkM4xFiOVUV1aLoSaKeqqvpGoqvwc+PcA5TJchwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768177434; c=relaxed/simple;
	bh=u2oqIpY0fV8rD+hVO1QFIU2ii4NohhgME917ejSdkSw=;
	h=To:Subject:From:Message-Id:Date; b=hpZW1fN4xaiLY4LpU62IRfSWh+3Y88V4LlH2+QCGhmEBZXSXrgTA+xSu+bs3KBoSBP5ZwtXLCex6QfoeqIbclvhV+ng0qPLzviKwEfGPFPMik8QGxGk3xs1Oc6t6Fp8t3juJdEWijYRfYaIpYFn49Wh/+r5J0T9VeT9/1fdlIFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t3K9aiRB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t3K9aiRB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17F4C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 00:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768177433;
	bh=u2oqIpY0fV8rD+hVO1QFIU2ii4NohhgME917ejSdkSw=;
	h=To:Subject:From:Date:From;
	b=t3K9aiRBo4sJuumykMyGvz4Q7arakW4W48Mcm6onffd2pPRxljdjfHb5SzHYmGOSf
	 uQVogcaWgQv6kOrOC0qepmzCpkEqT6DhXfJEPfpzubTjgUCtmfTietyzRQydznc3aD
	 5FTx6EGFfGwaMqv01B4yzbgYb5KX3EfEeoIYEjBBnhBFqpEectmkXavRTeBSKo40bA
	 Y5Hy/HW0rRLy/R+ecj4hgh3dbyxBQDNJ4A9OuaN3G8Jfi/v0My55gqZn+gBD9NGtkQ
	 ZS6a2MHYHu+iJ1rX6oS9AUkSed/KqaVPqPtijYlZWMY0I62if8Ij1L3J5Q1YYRlyKc
	 /xVxQEm2mti7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90895D25031
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 00:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176817743358.11572.17385481782140137622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22dcb5acf87aabb2d5b1abd24a9cd637fe2611ca6b1fa9747df097d3d041a19c
Date: Mon, 12 Jan 2026 00:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768177433
