Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28E72BA50
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 03:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736394354; cv=none; b=bCR8TtVOgXdpyTr7q7kC2nzKtLmkS2AF9x7D305z6HBNB2WMiaaQd7qv3U1BMvo9aD9l/52r2RVZoe2JqxTm57zIGakCi9BGFSlC/t2sxW6TOjJ/WSbPHjlDF7oN7L0NXDl1ozUzcUoZpxW3+cyxGVcWdPclN+NAV4nwAYjQYg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736394354; c=relaxed/simple;
	bh=GpIJjAoWdROsM+31BO4uiH4A8NbwQQyvcxKEyFrH2y0=;
	h=To:Subject:From:Message-Id:Date; b=qm1WPX4UUX7IoDsvYj4ddOcNOQrBwFoUMfsz/z0lmI3RM+peQ8sCKbIVF7JX87Ejv7x3Qw4pl2DylA+kInROTSPoElEoqD9NgzMUHCntLKYK3fxK3P3p66HnkF2GUO3hvpCmAWgDSrc8UvrwwB/EwHxMC18wKeu1EAQdWlqHjX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q7WwzjKb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q7WwzjKb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B25C4CED2
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736394353;
	bh=GpIJjAoWdROsM+31BO4uiH4A8NbwQQyvcxKEyFrH2y0=;
	h=To:Subject:From:Date:From;
	b=q7WwzjKbgoLdm6lREDydL5uSclBOanndEZtigKuvUMy1FyTkrIdrmUqAxzPJ+56tz
	 PXktq667IAuYG+yWvzqr/YV+fp7qyYYOfTFSiqIAIZoIzQoDwl0kUN7O9FQM0qkTmy
	 pnrdF9A72VVAE88voWGsUFMFaA6yckQnGRRG33mzzHNxHfhbaxqv6txlyumVl6zzkQ
	 FUpKdmIYtMZDrv+H1Hd4RS+cI9GxVMR56JXOWmawRpndJdHNitazOvm29Vb3f3RLmb
	 u7vj/bbq2rU1pFGoaa0KHGkjQQiPDBz8ga7xCdAoA+j5Pr7jdd7I4sa1kNVepw/D6N
	 iOWRj4+yA4Xww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D64E77197
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173639435359.24220.3170791097563762527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11eaf7179a4b8c98b19104674305dd1990b7866ed44a3285b9ae111d7ce2367c
Date: Thu, 09 Jan 2025 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736394353
