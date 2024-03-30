Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0853B1C0DE8
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 07:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711783697; cv=none; b=LU4iLfbGE04lWU1JcrKIFvPJcm0qfNZCDP4c4llhonjLmsnArJ96OaamRdeb3eySspUWf0sxpXZpBVT1r09fzueUfk/6bVvdOfN5+YzZ6LGHQ8Yyz3byE7lgs4Eim0AOBYBmIhf1jyGrvAl+1Wf8WwOPvKbiZmHd82trapUjGFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711783697; c=relaxed/simple;
	bh=FospjVo3HMhJacXxRKCExDo7QDdMH3pki7GrXjTPMgg=;
	h=To:Subject:From:Message-Id:Date; b=MuSbM2JBfY/4fAfXNHC34rFc1liT4PbM2JcVFRarxj0cPuiwnjCE8CxRB8eDxKU+kGm0HfKdAEulVZA2MTYpKCrcQf0ew6h2Hm1QZAL+wTKmuEarQhv6SEx8YpnGvIojQcqhAixD18sb+O7x585ospo3+uDA+zISWxrAt+/sJuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uKG5fHOP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uKG5fHOP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 802B1C433C7
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 07:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711783696;
	bh=FospjVo3HMhJacXxRKCExDo7QDdMH3pki7GrXjTPMgg=;
	h=To:Subject:From:Date:From;
	b=uKG5fHOPXEtBnITNAYj7tZl+HszSizxnWeRUbtSHXRM3rVeg1OyEjfsFGn6KLFt8/
	 NUFIvs9tYyM9qZKY9hu6hTcjBXRnP1/5QTPPSwKgUAbrGMWMCTWryNvlU74//secy4
	 JrbI2ayUlWum3YkhGAGgM/Z/Y5Pyf+cBkUYy2kdVN8+LmHBKcwzY0vOtubJ6wpJAOz
	 yyaXD4U037s6u9MDirD4C+1NZG2Nee5VFVw0Q7ahChyFoc0QPHVQFb3ks2xYZNzNXC
	 0nM2caQNglRxcvHM+eL6ZAZA72wUqau9vuzZo0QnZee2dXEKMZgOpgS5EaDLt65Aiw
	 EHWwzVsgKrLzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B1F8CD1288
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 07:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171178369638.8944.329319992194615446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d391fadb9c2a1779e48adf7a9380508cceb3159c1372f92050a0bdcd207e3aa
Date: Sat, 30 Mar 2024 07:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711783696
