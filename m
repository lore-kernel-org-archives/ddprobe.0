Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43B4D547055
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 03:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791431434; cv=none; b=jL2oO8zMjk+hf1IZWc7vJW2ncvBGbJVepxX8UpadgpJXza4vYPFp5nPuFou+A2ht/m9KKGZh+h1jXWhP9Q+VvWrsjCI8ZXMSMeQ2oHnQX35xtMj+e86+eVRU71GKzZeY7yjmIAqxYah8sVHC9zP3nfAyKeWELlAT5loycjtEWNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791431434; c=relaxed/simple;
	bh=26bHGsH846QikUmcDXUab9/nJAEQOJBqLfL438xMkPk=;
	h=To:Subject:From:Message-Id:Date; b=LEQI/XSOKYHGXgRMIU1zHSLeE+3hTiCtv/ejrnA58dotfYPP0P/3RgMlK7960n99CbXGdUQAmZcEEqc1tyJh+ItHFczqIVUod8dt0tLbwcrIxd7uDaC/qcy9eZlzRN2zNcP2UR7viLzfktfQIKjJHw/jZzJpKUWj69OZ2ugdxWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CfV45KUx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CfV45KUx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D38B0C2BCF5
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791431433;
	bh=26bHGsH846QikUmcDXUab9/nJAEQOJBqLfL438xMkPk=;
	h=To:Subject:From:Date:From;
	b=CfV45KUxK06LGI6MvPNoyTz4x7tVI34AUqe18yZ1IANoJlpPqYM1AF3T85X92K+Br
	 17vs63az8TTN6ff9mfBMyXqvZMMWYYm4e39wlMwanYL77exvWKVpc7/eF62OW4CbSZ
	 7VDs0dZ/jKeQx4YWtHJ4q2Ggz3uz8PgmQ2euu7a3mi939KBNBJwf2LXN7kjh+kKvG7
	 pXRNSfgU6jnfaLBx+wBWi8QBgYBe3pu0h4JVrMyECfazgfo8Hqdjj0vBivyOLfoGif
	 LoJWLH+I6GtJTxgh29ROGi8B6rNcbSwP9VOkj+XeKvXfa5/2j8N4dGRp42FDejLsOn
	 k0MLYRDadybfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD715CA6007
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179143143369.5255.9538815117547377010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd83452231e207c35d31c87b375025f9f733621e9350291fed975d828d44fa7d
Date: Thu, 08 Oct 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791431433
