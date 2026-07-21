Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51D2A48C8A1
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 12:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784635714; cv=none; b=t8pjMlTOi++hb5ldjVnR2V3gzueFIjZ/7p9PcxwJ5LtIkbt+8iWYO+Wp4P6pCw1FpRBkbovtoCdHX1w7P/VMTMfcA9ZKNMuYIoLtjBTJctg+0flv4As9nMtnanLKNBvuixmvmf9BPfMCEuS7mlIz4GXPPM6GJ20rENyQrU7yHAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784635714; c=relaxed/simple;
	bh=T42lkXP75HdyIRLO8dVC2kBvcmWeTdfrtC//ipB10pQ=;
	h=To:Subject:From:Message-Id:Date; b=Oo0gxABYC1hik0/+LnUV5Nl7I2dI+r5LxVx/91XgV1EfNP2uSTOi1+AE8XV8X4iykqAtjOuBavznqzutlMsb5oNSi12rhRtzXx0fJfanGjU2+vz88M47xcXVdNRk6lfixOHgKkDN/lSsr/XAd0wrssAxtX2QdrZdDjzZbEfTYXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jWwDw1pH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jWwDw1pH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4A2FC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 12:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784635713;
	bh=T42lkXP75HdyIRLO8dVC2kBvcmWeTdfrtC//ipB10pQ=;
	h=To:Subject:From:Date:From;
	b=jWwDw1pHLs1PLASSapFobcjcbPuSeAoAv8qfktd7GVnU2IodHYOihzxbmKGoWjvnz
	 TznInC48MAa/HMLIbLc9fJT4KDR32eU9wSSXyj5HSnwgacq4eFsaX7/TPqM0OY1Tow
	 1JHQ1Mm2p/rK9ZL12mbGIJGeAYaNWHYDKQIusuaNK2FqUq+6f6qCxHhMOfclPlzeMt
	 bX8D9t/znR3G6+WGI7pp4eeqlAo2hMJrJpzI+1urcpbfVDgcN3S9htE6r7SFJvUi/g
	 sTd7NxzgeNFuCZNkYPOObhGYMiVv3igIUIurCEm5aqgQDJWmuE8StOKo+saoA6so51
	 8m0zInqYaDDCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B029BC44529
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 12:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178463571371.12936.7969754138894670039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70410d9f960058251bc522fc66fee4aec53aa6345a2d115adfff4f292c6a1a4e
Date: Tue, 21 Jul 2026 12:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784635713
