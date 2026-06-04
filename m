Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 385CD1FC7FB
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 00:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780534474; cv=none; b=REW+FG/GGd5dY/zrLI7ma5WkM/3QoBs1Jjxtf7nXTDXYbXrxFT9vEP7hCqAtoWG95o29QXgJ6QdtP8XfbjVUmBfvwdlcvGDO4rw5beB5LhxB8hHzB3Mppxua0gnpZrI2vYfgvwXcpItvQB18uGcGRUF6o6PVyhbh4P9pj62ZVtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780534474; c=relaxed/simple;
	bh=XRr9MM+bl7p+msZ0+Y9A32D6uyI7SoqYxznrwTVMzPo=;
	h=To:Subject:From:Message-Id:Date; b=aSXZ/qGO9sNn1rhNxXnU24Tkdj/be+p0kQu6WHWmxRKBNOmNgvg/HE21pYSG+qE7iSKEpib6MTMYOUyAFWdVF1noTNB0oTizArfwANEvqfF1jxbcTiIMgctT8+nnl9bXQVjW/zELx/V6LODeCqGg3sJjEmIfkmFPwvtxtX1J7zI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oR1OgHOt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oR1OgHOt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C545FC2BCB0
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 00:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780534473;
	bh=XRr9MM+bl7p+msZ0+Y9A32D6uyI7SoqYxznrwTVMzPo=;
	h=To:Subject:From:Date:From;
	b=oR1OgHOtyarkHCnkiwwVA4QUSRds38xEFsrsJwcbEDA0Tl9CAqh8TPk3AZVc/4OBG
	 qNfogikAGCU1G9c2TSzcI64198ZnDa9Pw0+OeA7c1kbYzlfYl7NJAsFBavfPcRiFax
	 NugynNY4EszWt+xN/oq2nQGmWP9M9+zFZB5Mraud/RgqQTPGn170leqzfh65zLtjh7
	 EJdGa3eFaoriE+umc7cc5ber/P/X0bfAUFkkk/bennDbi0TWB5jY4Pz0qbBQ4Gqurz
	 IDtI/AlcAtSXq7UaxkV3JLHwllgEE5G+4cxR25ZuH0QHIMF7SkC/0f3vWjpC667A7y
	 W10AYFr8BQ0sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD518CD6E60
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 00:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178053447368.26653.17646535633262505368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9926862f9c46e4096b5e2a8d682205d9876c660e42dca28d8bd38dcaf40b1d52
Date: Thu, 04 Jun 2026 00:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780534473
