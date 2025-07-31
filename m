Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 335BF13B284
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753939794; cv=none; b=VZHl4nvKJx2pX57b7sBehAAQm/ULQm3073f4NdEkdUV1kE30IpP04HouM610cBQBQte6yv5Ujo3zXXborr4ofozp0InrpB2lScnexOJ4Bw72CTEtlcWCT4hLds22lnbrFx0NLHsrgtSyk06EYuKrFwO8jDHRxIUze+pf9PseYR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753939794; c=relaxed/simple;
	bh=yfVl60MjtrmSQDINCpaf6RlvOC6kL2HxgJckC4smWMs=;
	h=To:Subject:From:Message-Id:Date; b=PvsR9KdMAbEUwlMG1/9kvlRgEp9rhT4QpIHWBP6LxM5ZHSmd+TAYsw0Hb6zNcJp9fyUpfyDADXJcMpEcgjMRi4Pcv1JOTBFtVIy9nOh3nSDLlgIbfLW0WJlyaXhI1GiWXy17uG1BEC4ZHDk7blY65vqs8M8dfiX91iWRKTyQPnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lxNV4fq4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lxNV4fq4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B09C6C4CEFD
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753939793;
	bh=yfVl60MjtrmSQDINCpaf6RlvOC6kL2HxgJckC4smWMs=;
	h=To:Subject:From:Date:From;
	b=lxNV4fq4e7qWC/CMqYymhlHLE0LqSGeTrMDWpbWOMoqPDtA0BVY54L18O3wKIRB3w
	 jZIeD0qGYhvOF5jp+KZ8uUSNI4ScoLgHrMrDn92VyZW0mhkHD1NK9dYSHN4463yuXj
	 qGp7jkQLrNqCRn6mUJFkeAieQwTaUGbLguh4yVEheiZ8AvhTYn2S+oMqf0CJ7/7FUY
	 3L4eZk/KeFJfycRvVVVptooNIaZLU2ZryCqGEI+QqkCR9lB1p5UAOL2ZZZzbxWhQE0
	 kelSiZ8sxEbw3PoQsqTljkrhGW5fite/vDOlWllC8vbIKww5p3QBdpqtkKz5ywPwye
	 2fyoAhdxEbDyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BA56C87FD2
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175393979361.16435.6559293354713962814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 895df513e3be4b4e7a9cc5f5233687c559701bf8b694113fe7466491b0a39c9d
Date: Thu, 31 Jul 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753939793
