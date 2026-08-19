Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EB5036DA14
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 19:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787169034; cv=none; b=V7hRM0yVGWIjzmj/mSsY28VQ5Gk8RHypaUPUGtizSDVTu+3z8Ckxt60SSaqQcEtJB9R1I1Gq/tsC26/D1UbYfpv5cgK0mmc7l8+TFM8BugttOSrrz+7CNVmLGjtWuj/IakSwJxZQC8hid6VI1fQi9ruynrU7oQ/z5F0VO4Oc7ws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787169034; c=relaxed/simple;
	bh=Unz3c7wewZ93qiUG8d4sioiB/7TywUucUYTpgSPu+y0=;
	h=To:Subject:From:Message-Id:Date; b=oSrMhMKJJsidZhrXGIWgVqNpvvk7lU4+kvqYCXpFGxpmFnl6zg9ReRfLaPwBra4yEsb3niyyJqDh1Iiub0Z4EYVhb9HfyWUQtux1obIDLMVDbYKV9y/qqE6ZFSVVmoZFlOyh/3dpyvW3zxgKgle6GrXvaoose0veG4t8mVeFVVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cL1M6mth; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cL1M6mth"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D36EBC19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787169033;
	bh=Unz3c7wewZ93qiUG8d4sioiB/7TywUucUYTpgSPu+y0=;
	h=To:Subject:From:Date:From;
	b=cL1M6mthOpwJo0g9MZX5FouvvaEnTstVkvHsZQND1I37lPWqDdLwvOf9S0v7UkJwS
	 xTPtthI+AJ2M2pCoETKg7uWQG8/6bciOihSbFGjXCVBoqdebZ+Zm6PVs1tMQzSUSZS
	 89dQtQnn45K9l4LhGLAPQpAzJp7RlTPlRtjNF9zE7CCuEZgIBGg3MWM3JIW1Gg3RHY
	 MZINA7/IbKLN4lB/QRmQ0SxHwGRR4m2J+wvA4GQF8jalFL6Sho1g2zOcNIswmIucUv
	 yL/bOOrTXG2vOil4E343oiUmMt2R3dUaFlTL2qSqEzot89nq2V85/xumdQiLLtSFfc
	 Y5JrZby6jldnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA7FBC5DF85
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178716903368.21139.15236069672774769557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe05f5a10006cb6e7b5fb69a98ec014d4174fb4ba43912d90d68778aa162d4b8
Date: Wed, 19 Aug 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787169033
