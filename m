Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A7FA2E11AE
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749838195; cv=none; b=ryP6ap9uIuYq/v6rxXg1Z+tEn9u/Vzq1kG6rCYWoR70Mey2tlDZjcoG9shchh6M6uiog4xAqYQPfDlhRUg8saWKLLjYKM4XShK3EtDOismpoy46dbBkGp16F7oAR+WZ7424Gr1oZ4Eapf94wwxaGNJ6oGBnKCaYhQSlVvLboiG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749838195; c=relaxed/simple;
	bh=vmwZbLGql9ickprj6y78mNoP7XHYyjwJHu+d0/5VkU4=;
	h=To:Subject:From:Message-Id:Date; b=Tm461nRAG4PNunccw8obNTzhwhR8v+EmWyEVwALC/oMYKBaO06FobmuK1HsHH/vog+8znX0e6EOObCqPHULOnQLz+wNdRjwPFKYotBVIZPyR2CpZTgs3SNgo4YdkaoQpDYx2GBLe9L40QGPvGAYhKAdhWrqTvf8uNGivYOa/8Zc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VzgVNcCe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VzgVNcCe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BE1C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749838193;
	bh=vmwZbLGql9ickprj6y78mNoP7XHYyjwJHu+d0/5VkU4=;
	h=To:Subject:From:Date:From;
	b=VzgVNcCe/54lj5f9m8RUFhFVM/OOr+A+Ghb1mSKhKcxRV3Vj1iV90x/JYl8GWj9O+
	 wrTT5FanzWg0kB2gJ0oGoCFy3tNtdlZMGtlumO33+XsbZOOmmzQvS47QRpzEmiA3Qx
	 CKH5XUxFLGa4HXuKdOkWLDrUt0G7l1jj8CiL6q4e/e6UtihHxg+kZQRTF1Fb+l3+8x
	 4LaEdLibAcxpZ7r4fKys8H6h2Ukv2tFH16WLDK0fKshMq/dB8W14LPrjTatPRGjB45
	 680GoyWn12C9Lee+CCo9WFQ1IW3r4ymLTYYsRo+Mtu8lOmNP/gi/pAJD0+DYL/NE+g
	 5e98eQRwFDBqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F77C71148
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174983819358.11186.16401832136608851639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a96e64600e1ee24da81dc05516363c5d4ffff81447120b286bd414a3e6e966a
Date: Fri, 13 Jun 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749838193
