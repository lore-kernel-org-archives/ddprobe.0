Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FD133C1F
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 02:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772246094; cv=none; b=Hw0dR9JyZ5a9QMNG4RW2Fh9wFFAJyNH7RMrRvIi0gS0uBV2V5tF2Pluq09EGan3lNiRnG/QqyXqJ9GBGT+05Pz8cb/16duNtyUZuB/JTEZ5f1s8dm1YNfXyj85c6XSteBmODFWUqU8d3Nz2PDjHt2LgoSyhzsf2fWuLTOp8qmtY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772246094; c=relaxed/simple;
	bh=2wsSxFs/eUILoxJYghgsb7gyrGR5p7SoAfVUe8HHqro=;
	h=To:Subject:From:Message-Id:Date; b=dgRJPufpqUU6Zbl1sX8LSNnwKQK9RwduV2oXtHXnmum8DiT+vICvZi9yNxMB6cO4HpAPf5My3qLcGuV4h4OohajwEIw+7iXDfetP4Famt3y+yxwq0/rmXNuQ0CUBg2LcaR0PNT1YOXOIBiHGCdf5d3xoJkSW7jPpJV13HeGyUGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IeoxEdS/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IeoxEdS/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B7DC116C6
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 02:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772246093;
	bh=2wsSxFs/eUILoxJYghgsb7gyrGR5p7SoAfVUe8HHqro=;
	h=To:Subject:From:Date:From;
	b=IeoxEdS/5oGEqwbeYPe1/EZN1+oPbIgm1Kw08m3ZYwRKZdSF/sF1VJUl6zqbQTxPg
	 ihBmCRF8zui+IOOp8Rje1B0R5EzHUUOd9z/nBK31JE4PSPmwTXM0BSzAr0SLYt38iA
	 keuInaWtXHCgsiuuY5LqItMYnPIyemoc2tJFfQZ/Ap8GdA0+joa/FAuBH0PaGBGB4c
	 3t9eVScC/k6aDaPXnXdPKiA6KcM0oH5nFqaoIlHhqbEaqD2+SnaBkSg2BuL/yzeYao
	 XiYGbcVGwLYVpsh7vQWsiOVob4icxMZvKcqBmeEoYjNaPnDsJ7wKIkA2zbYjn0zT6t
	 KWt6ZhViTUDcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B3A1039882
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 02:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177224609358.29093.3392861280045522582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59cb1e2f49f7cab5aafeafa432c57fbc51fa17ac747d8d01d5dcc6aaf7a9b710
Date: Sat, 28 Feb 2026 02:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772246093
