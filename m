Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C44327978C
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746509394; cv=none; b=P0+62VmS7Pr+42BStDEU0/vL0kK2hCPsYapbEWtLN+DtnVWs7+Tz1jnT/4rEEyYCCCtFGGvYCsIcQMMnPqreGCQGPxix0868STnlF6CCRERc/e/iabOaEpbP4Y724DvYTo1FmaaOuxVtif4jQ1yR6wnLWPGdB+KheWChVlwnSt8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746509394; c=relaxed/simple;
	bh=2eZgETHPDT7iv2gj2fKgCISsJsHY42zyArPJkiCF6RE=;
	h=To:Subject:From:Message-Id:Date; b=pzeEqtO/Ab6SygaQlh7ypbw8OJG6zfkQilcZA6D2rZ3VndrYk0CktfBKZu1Ww55JAgsd9pZ8dvoWnjyMzsGRXbd1niJh2ejmL/9vm+W6qjHBZNTxOTFmdxJ4clpB85bWXx7YboAhTWW1ERRwVNJv77WopBGliFMahRejlgTORnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CxPDoVxz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CxPDoVxz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F892C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746509393;
	bh=2eZgETHPDT7iv2gj2fKgCISsJsHY42zyArPJkiCF6RE=;
	h=To:Subject:From:Date:From;
	b=CxPDoVxzYazvt/JtbEPBGXrHdKM7OeMcDjy4+jniIZqlF3YMiFbhgPyJSX4k+Qakf
	 Y5Gqv2hNyh5YdDfCJELu5svwn4Qrj+G/OvsZKysPUX5iklr7oSBq2k3O0clypO2Qwx
	 K2J6yK2LyIboVrrX0wgYcX3ybmphRySRXCi4jIIMjMhA5jYL2dY5s61STbmpyL4Y9O
	 cSXEBpm9sZUozlvZjGB6GaZIjC2I0q4zfUcNfthJUVp31kBy8VyS9LQEJmCy29Y6fe
	 6dBwnZeBLNHg9ogXRzmoIknvOt7vLllHEyGdl/gQxg//NA+c3YKKDwjTP2XexD7f20
	 I7yJufdeBuFOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED59C3ABAC
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174650939357.23791.14337197745492338851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a9e10182295cafb6369531c00240b0d7bb9b378e59163e58438296ee63aa72f
Date: Tue, 06 May 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746509393
