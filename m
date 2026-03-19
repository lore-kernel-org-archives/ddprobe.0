Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 126F33D3481
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 15:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773935694; cv=none; b=szx1XdLUGD+0xu9vN5mnUOqYZlu4AXcGzaCS6vcEB9Juw2/ayPM9a2w8zgswoZc0O3uBffo3Qcna7H09IGclQ+7ZwP9oFRGxRNkIdSkv9QTxNvcP9Nhf0UUpFvpsqUqy6JCUbxJXLjoEsyFHcjJc//rrm5WP9usqGM5ZDYfxWuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773935694; c=relaxed/simple;
	bh=Si6BbXfWExoHsCEsiDJUCu9DDLTt2oTPlLEyhq0RY0M=;
	h=To:Subject:From:Message-Id:Date; b=ogTwrFSVk5VG2CSqPhSjFKs0mbythB0L01EXgF2diWmGqxPPvS46TKzKOwVtfG4XqdDaHrUXK3rKqu2x5UiaPLDsxAwjj4r9FBo2IlCC0cGsjsirni4d28N+oAyJUn6GrN6jSt/6g+7v20LAQ/INdJqwJ6zrhHCyljbYoRIa1pI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fVXnIcJH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fVXnIcJH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A739DC19424
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 15:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773935693;
	bh=Si6BbXfWExoHsCEsiDJUCu9DDLTt2oTPlLEyhq0RY0M=;
	h=To:Subject:From:Date:From;
	b=fVXnIcJHPx4s1Li3rXD7QPfORzfRum8JVavjXoxKm5rYp7M6JdQhvmDPKDEW4FmPz
	 U/ApVB6RexSU3N0ybpW7oBBa2QLJ2tvjyZB+CP1IJwRkx/eab3SCwNch9W5/1g2TpN
	 bOmpVIJSFjsT91Ne6hGh5vaI0M6d42zOgTiAaqlnRYcUProz+JG0ftSzOLHrM+8jiH
	 ImYqPikKI28S5e9zDvT6FEcShGMFRoA2LaPAFBwlpNtUAu5eM/EZpFO4ob+unbJcWX
	 8+gfpBu5YH2C+nB2GKiuxvvl3FjEkYn+XHI5dVADOT4j1jQjJaogdxJpnuEKdWm//m
	 1UaJNSLYYvGsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926C71090247
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 15:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177393569359.22772.8634120338105375740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2831118481468cbf43b785bbd03424b4d83240982f847367cdf6aa0383c90d35
Date: Thu, 19 Mar 2026 15:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773935693
