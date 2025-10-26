Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E72048CFC
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761517194; cv=none; b=reQh0J7aGgzXTOedOOA6Dr0XOrQxxRadGL9eIjdi1Lr1xkqE8NStNPlMMqG/k9UvU9/g+6IX+MMcdaUOFegVW/Fr8m3YLmcj8vwOOWB+enYBYj0BiDzPY40KnyGkjbO5YkoZQ/sc1zCiKaBTvUVcYCBeStR+I12JQ/Fi0+z9LrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761517194; c=relaxed/simple;
	bh=aUBBZPX8HNDZyBM0R/uiG75Mdg4mHQrY4OTkUOltO34=;
	h=To:Subject:From:Message-Id:Date; b=CCQx+XudhaJ1N+egzic5Ak8VaVbUfhgvG9i2wq7Ar9AN4HtnwEW2keS2xQ2CcCl20MNkc4Ot9PML9Mgaj29HWUFA+o6fg4KIlDBEvwUb3QyDYwwqR0+TudfqBi417K8nX/+uLkKvulSrURdvrYes8RAgn2HCNJ+DJkGsT6CJVdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RVheqXoB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RVheqXoB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C71C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761517193;
	bh=aUBBZPX8HNDZyBM0R/uiG75Mdg4mHQrY4OTkUOltO34=;
	h=To:Subject:From:Date:From;
	b=RVheqXoBelX0isP5WHUEPHntgNGYDXOAvDl9bK32dXwoAgJwTUasRfp8iwWuzRxVA
	 MRaM5hpeUT8FnhzovbSRiLPU+thvk4r3lggJjKlIJekt3PCta+iOt9j6ewnLpWsaoR
	 Jy+m2/1hA4dVf9yOGY18tkDUMQw+6srHsx6tWxjbqSoTGUE3E0KfJz3PA9VjjXXzc+
	 u2mwiNZVv/qattUdHwNwc4UbhlliLG6UJhoRfIa2m5rGRCKFqIzSI14jWZcffMW+KQ
	 zPYdbh4CdZ/4L/yjxr+rIUlyiUFfr23N2S/zIdG39xprFXAXQ1mRk8QZ7S/pN15I5D
	 9Xjm/tRDfCBtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9602FCCF9E9
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176151719358.20527.6638646334586635434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f68f9b99e5bfd8dbe3e537cf6a78845ec82f53500be0de6db949439959c1fb7a
Date: Sun, 26 Oct 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761517193
