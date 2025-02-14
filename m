Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A863158870
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 21:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739567934; cv=none; b=CUyKhQkRfnRji6NEZ+crSbRdCFXUVX49o5MWPOlGKctRB7zm6PuJ3kFIo4MmeFwdUW6J7sQloDN5WanbSpBB5dD2N0VxuvTkgDkwc5i+TX/TFt599aMN0+iUTlrIVP21iudMeB1zEt/Mn2HKxj7qCBITTvtqHCjJp/ya3gIDDD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739567934; c=relaxed/simple;
	bh=7p/7KcOJheoIC3K3hSUTkl4BV13QxVzpkJxJlFxEmzU=;
	h=To:Subject:From:Message-Id:Date; b=WMNEtcBD2sVvih8Bm2VtMbI3Ld7U3p9lo7R/I9NIcp/VNjm+x75nceWetYuY2wuCBSi0slHa5HQtxo73YXA/m6K9gt9n5jR9pFaKiAeFUcPqC4jWIVnfSGoGsWpuCrhLK0FMl/pQEY1Ed1+GzWwbx2elZErE5y8K4TYM+/S5aRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VYBi/Slv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VYBi/Slv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFA7EC4CED1
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 21:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739567933;
	bh=7p/7KcOJheoIC3K3hSUTkl4BV13QxVzpkJxJlFxEmzU=;
	h=To:Subject:From:Date:From;
	b=VYBi/SlvAiJD7M0R+OpIgId6u+LQdKeo9wGyWG15e4SwxXO3+ww3eeaT0UEwGJFcb
	 nuNdCGX3/xYtQUDPYSySQYBvQ4NfzwtxBXwSRlCkh5hSYCK1/nq50Lvc97k2cNhnhu
	 7wWsywXRjRppOIJD+hQdT3ZaHMal5/9KiWhPKJmdYBnQW+vtcED+9Cnd15IWjJTMIV
	 0vvBd6oLK2Be1uulGCzKhypSLXSaCJy3+yepdN75C70OG6q+dD+XBMkRW1u7laQEcE
	 NQxaZy8x4SnRD99GPjCspo2cjb1GYn1jhoJ5hKvNqz+EB+YXjucKye57Tdc+U8COrS
	 XMRJRbQu64buA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 992F5C02198
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 21:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173956793361.4986.9559128104531160283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bae0cc58c97d0586c3c19443a338c61f58ac0472855c5df3792ad24e835e4d2
Date: Fri, 14 Feb 2025 21:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739567933
