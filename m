Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E756149C51
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753331395; cv=none; b=NPGPR9u2aza2vN7/uDk63Bd9tucXHZ23DgsJiQU7lC5ht0BOLEA2KqXd0LG+ACzGkQCnO+ywQPOaJd+6y6OJSPROXaW8bCWudk2PybOfc6TkTFWco0yXxMidAlqhqTRLYwDyzPNC0FJ0buTVqEohLXh95f94S7hOha6L7U2mQJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753331395; c=relaxed/simple;
	bh=kkgcpqJgA3pUtVtjF7oWTO7o2Y08oEwwUP0fqbm4US8=;
	h=To:Subject:From:Message-Id:Date; b=m2gfIVm4YvWs9akdfP+9u12ZnJa19P068nuvkTRTPJDaEZUhZUHFPTV5JC4ozPrm8ug4GXA2BfS5NM4D+EVz8sZ1/O5Fw2tyW1kS5P146UOk1J2LzPdHwLC673A7tzlOiwfY2FLY2vDoEZtEcFkriu7aMiMu4Z3UEzw/HqvuKNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ubd7aQfj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ubd7aQfj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A4BC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753331393;
	bh=kkgcpqJgA3pUtVtjF7oWTO7o2Y08oEwwUP0fqbm4US8=;
	h=To:Subject:From:Date:From;
	b=ubd7aQfjMWN6wNVfhVWn3qyegK623DtescVgpaKi0gM4jL4IY4HfO+6mbOlHRUjq6
	 +k2MZ2jz3ojMg39YrimjVc3YKjQwl5lt9JdITPUmyMNqNGUijY3GHx6+aHydcMzeI2
	 1qzsChTVG4rjBp8J/xeKjjYBYp70uyiDq5qILAJfpcqdghAuTb4UxBSc93gdem1Lr6
	 JjarIN51SHyUSE7pTXdTpaVlAjgicoxPXpqByeLntz/ssppH2QjgC7AW+uNss2+hMi
	 dDulMaE+Ga3mLwtRoMojiYtEqLLr7PLHTSc8qc3vkOte3TlDZw5FGZNDhLsMn4VlTM
	 wFsLDPI8nVyfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9287BC83F1A
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175333139357.2491.3616141733532434973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a1bf36fb3f686091417c4235b27595a864d71aaa421eadda4424a1bd4b9edb5
Date: Thu, 24 Jul 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753331393
