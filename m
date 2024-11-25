Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 336F81B87CF
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732557354; cv=none; b=XM76LBRqP42Qvgp5weetpcUms5Hgh/H+l0ntgPCQtiWYUe/wxklIbUgrUmVIsORmOSuG4gQKJHUyHwuPNVZTvGm2Qq2DzPD9YR1zLG6G7EctRx5/HPnY7AYM7HOfhV25JDeZk+8E0H+TMMMVXhl21A59UBCs/8IZgPWPARGpQfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732557354; c=relaxed/simple;
	bh=z++rXrSyvc2NnNl4teBXMQVmJiVFI+lVlT6dcvrEknU=;
	h=To:Subject:From:Message-Id:Date; b=JHAMzA+rDTKG9mDAxljbg0xGMANQ/axpTdQyOx7O/VZHqxpX9Nf3VmOJo1FEHaoctsdB05cXo325nB/aHc5p4qNyuJXK4NAn4qtT0QgNDVY+Q/XDwpq6h3dEdw10Z78dMWjlKZSp7AxffLWZp7xlkDu+v8qzbL7pmhbP31pZMzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lKO1Dv2/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lKO1Dv2/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8105C4CECE
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732557353;
	bh=z++rXrSyvc2NnNl4teBXMQVmJiVFI+lVlT6dcvrEknU=;
	h=To:Subject:From:Date:From;
	b=lKO1Dv2/rYF2lxVlBfUMH/qTKueTnygkvmV1SeN/IOnCpLUFeWi2vgBJolv4wMN7B
	 gg+N7xJEbDdbHTw6SULFo+yrSJTpplnZEnEtLYDTCLJwIF/N5uknZUyawGiHQXt142
	 ud/hZCWydXmgpfnmmTQKL5KvgBiRW0930djp2+CR1KJoEGzvq5u8bOu3NWHeeTIUZH
	 lbDcm09HR4PfW548GzOUIyr328jb/1bpXJP7lNxYj7xi+jVCOPjMx5dBb2F5af0Z2g
	 BxODwqtMbyeGPdbTedtcJbsSwqBhYgyVcn9pv5GgRb8lZqi9slFPBcEU6RHzN7B+G6
	 EYrMVwR9u4ziQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A98D58D74
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173255735360.15901.3152437882345480752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e473e25e0f259afad39b77afd413202b4665523ec3a2be0e514ceafb5aefecf5
Date: Mon, 25 Nov 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732557353
