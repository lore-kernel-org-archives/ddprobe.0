Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13680188715
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758711594; cv=none; b=slavAd/jAw9K4Y6Iwh5oISV+K0Q84o3o3j3oWNt6duTbYNiOhw4VGBZqgc2RHplTaj0jBoxylHS4uv7zuea0R5qr9+tYeUvjfd1xnMlMdpBTEZy9D2EnmeXR+aVgopxOtN3ovMNsLhzAnXsf3s0EvXDUAHyXcWg5jRqhA76nQoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758711594; c=relaxed/simple;
	bh=GwA1UVsUbVERLNuSJLTPzjNaiUAVou7IuXPkL+HNuUY=;
	h=To:Subject:From:Message-Id:Date; b=Z3KqKvnEGKRMR50RT/FxE+p9HOIoYa3xWs5gp+6tYokRiv26dvFF1YOaQ24nLVCmEH0ZSn2SQxz0MUeSjW/RdxclSfRr/UGoXFfwUlF/SKi0YY8qzmt48EDdIrX0vL2Qx1oqbShssq/pulhMg98V8RaDSOJqiUr77m5lTnLSkhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DglBgGY0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DglBgGY0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A43B3C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758711593;
	bh=GwA1UVsUbVERLNuSJLTPzjNaiUAVou7IuXPkL+HNuUY=;
	h=To:Subject:From:Date:From;
	b=DglBgGY0r4RQmoj2so1Dt69h5OTaLSTZoTkNwNc41pIlLWwY4fDMh6v6GdT//omkC
	 O6FvSX2WLkNOIru4qm7dKX8qqAPk3flL/pTSYQnulN3d7lhtSkYheZ+ZJUnc+xCNgQ
	 kmucn9Ep4GmFlTimpSqwCJg1nhoxSH6svkbK88bnLaaXKEnI3+UMF38ucWhqym9iZ1
	 G6e6zTKvfMhRUgYsjoQDatNbFbmlDL/8uBkHFL9j0KW1ArCdaAM8kDObP/cTzERMDq
	 VA5xCopM4c/Hs6cuIzaHLYRD5VKmav2bO9lDnJFYYJ6HmOAFsr1qOrijPjhqTdzqX/
	 +nJeQ/iFUN1eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FA0CAC5B0
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175871159358.30413.16342048589695371099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 389fbfb0f91527c2d4eec2a93197a905fff63689ed03b222c3e81a75b283c26f
Date: Wed, 24 Sep 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758711593
