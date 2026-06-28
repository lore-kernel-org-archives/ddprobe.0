Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CCFE14ABE
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 22:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782686914; cv=none; b=sk5/mKULbI2h/Gl67jbOE6Gp0a4Oc1pR7sC18NWS6bxaGJ5XaCmAkpmK7K7lbHDui+YwMQME00hqHlQnAkt+R7EpaPLpbDk6SmCm/xy1FKdRIuRHLynoA1NLXtKSuR4rBHVxXos5WhFjP0TiOwjuxYdJbNCHFjkh3GPkmZlMT14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782686914; c=relaxed/simple;
	bh=PPpG3mMXXzUivsCCsxVXJ/xJCB+hMOOgU+3msZfD2dE=;
	h=To:Subject:From:Message-Id:Date; b=OwntbLxhsSbyp0hVwQ5ujNemICVI5K1MigoU/tTYclfK/2gfOtnP98Tj/gifHZvH63AIE19jqdL2TFeryP24s9SuNhDCWT+qJnELLz9qGwbtz46UqB25DRz3qkZHI4Ow6z7atOoyipauDGIzyUSxXM2j3JpPP/2li1qnpuEex/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TcvzjQp2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TcvzjQp2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0E4AC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 22:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782686913;
	bh=PPpG3mMXXzUivsCCsxVXJ/xJCB+hMOOgU+3msZfD2dE=;
	h=To:Subject:From:Date:From;
	b=TcvzjQp25LqSEKeh9bU4vmFbbVm2IZqwGR1WuhZrp3PUdrw46gJwCB19XL9pjMZPQ
	 IEQqAyaP4IduKoZySCFcXiVb+xdAtXv8Ji9PhT35Q4b+jjpnDqAOQ/WT0cD5SZjSj2
	 e6swkX0xGCBvt02NKckxQODwg503nQtqT/CKUpxkT2GAUzIkI50dvDa/t/zTLXT938
	 SGe8Ev6WeibB9/oIO776iQ4uyMSba3mP1FlDtDxmtXsc+/NzhuxbNIx509HJn1BmbS
	 I+JfBvAKu5BFAgfaMYRsf+/eG4uYZIZBFSEKdDl8OhXDx+ZttkG54Wt7FNqdH6MXkv
	 Wi4nO3oCUuLrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1EDAC43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 22:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178268691369.15491.4777810225849063733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9768a655e19fb6221a3383ac53c7d001b493a8bd7338a9412693d92c52e9007a
Date: Sun, 28 Jun 2026 22:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782686913
