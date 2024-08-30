Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D54D481AB
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724990754; cv=none; b=Gq/Ih3/QVjfZng1u2keIArKDG+A1Kc/TuwJUhJ1zN5mQzVqbqw+fuPPUIrryx8AXpSU9XQFWdCFdnIuk5Kn4EZdlhFvQxNqK/2AuJRxjpe9vRugFRGUvng53mlmjh2pnZpP5RQhuvkgfZaFGyfSOn9EWpcEb0a7tZeqSndoNog8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724990754; c=relaxed/simple;
	bh=ysE0tjgMnaXYLlO08kLmjRiH1vdsxOmUVJlxke8e6W8=;
	h=To:Subject:From:Message-Id:Date; b=spLGf59ASwIOm+6Gp5XlNLexuJDogcaAjEh2PTuphTi3O5gqp6n6eF4GfIegcOiGqko2eoSXi5HbhhFqbVWlfR0m0gjA+ScN7XXtQCmiIFNBxL+erBJrF7GU+pK32Zbo1TCflRTcjUFgB74nRXc+cNhizuNHQoWmXBzds1RlmK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ERrugpBz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ERrugpBz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2184C4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724990753;
	bh=ysE0tjgMnaXYLlO08kLmjRiH1vdsxOmUVJlxke8e6W8=;
	h=To:Subject:From:Date:From;
	b=ERrugpBzE6hxz3lUbxdFn2vmfpz3brPFn8HXlEpHdi4t8ZiOef0H+AqPL8dLXRuPl
	 bMlNR2XThAVei+tjrVhzsLuZ6grxVPp9T7mR9NQJPyLjKVr3KCvHGjro+tWafKenjv
	 3vU/tYXgUJg2WvW1velz4dcuO2vqWpMjmUkwvBLYOABTvzLFj/7ebKj/Hql1OZ4ZUG
	 4mJdQ0P0WlgORlFZFYtsW06vuo9Bspnfof79uOeZ/wenXLNMG/x9XoZJmOCmBb/pdy
	 bwa3aLdoRaSQ1M6CPOeZMtf4AW5bslWRU9SkTsueV3dHFL0g0dcVJEH94tc4UgxEpf
	 W1C6WFraBfV4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 975B7C83F32
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172499075359.5596.11822024126241248456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fed646dcac5551e887cf1bb469558c0a3866ff35ccfd2bdf6e4a0a3d171b6fe3
Date: Fri, 30 Aug 2024 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724990753
