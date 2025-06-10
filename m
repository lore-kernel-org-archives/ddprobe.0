Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 218CC27FB3D
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749539394; cv=none; b=I/VzmuihUHKpCJI1JBDXDz5qlnSN/7sTgHKChFSt7M0JKYel9t0pFZu1bRExI7WPBYiDoxNtwLFqzSlLdl+C4PvepzsH3Y9hxu/mNQlONtsGhDn6ZAjzKufdwJ6840Hp5212fiXlU1N9fDkTOU+8Lg+MS+1AcMySKNnS2IfAznU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749539394; c=relaxed/simple;
	bh=Ihou0/Lx38AdPy7wZD39UM/L2HE4G2+rp2VhEVP5FZM=;
	h=To:Subject:From:Message-Id:Date; b=r8nt32IzNog45ZOMJkwwxEShYk7/00D/VAJKgefXfDW44ylJ2KCk2VzPHjlCfcX1Y7LJsjAj3FYdrmA2pMFA+EIxjWWFV6hrYBQ5lISGP/8Py/Tu4OrNfGZYoPp8ooojhmGvmtVa2aYyGlyIC+Aq+2u4a9QlO6IPuKkilnYhHuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NYeVqThS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NYeVqThS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA2A8C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749539393;
	bh=Ihou0/Lx38AdPy7wZD39UM/L2HE4G2+rp2VhEVP5FZM=;
	h=To:Subject:From:Date:From;
	b=NYeVqThSWOf4mUvoa1tekme7ZBtm7ZdnKUwFYV0YSd4+n8jEYAmOjlx9fIhyc6p4G
	 hhMc/HWAL9lz6YXwIaR71EAsAVdfqyJg5kuFLPYdboHAJArf6bVS4DQzqqn7t/nQBx
	 Y+j1N2WXz8pFr0Ax4Y0O9LhSEN6ylhOajhCUnde8rKzuRihlvE2eqJG51IKCD/ks/1
	 aQaMESOnQf6VimzNhkWbmh9YS6sznkPnvRHZzZIMY40j7f9OJUvxt99RA9phubWy0R
	 4S9KVtpa5cVqZM/9LFnU1PfN1Q7DzOCgwCC4EvXEnNwuhNn28xVsLX6TU3sD3pBWY3
	 utiSLNPjt0ZrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E96C5B552
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174953939361.27116.1447220483070382421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c0b6f02769701006c61b35289c778b5eb8360fe9c1c202f68add28749dd3562
Date: Tue, 10 Jun 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749539393
