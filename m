Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A43112E1C4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 08:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720512983; cv=none; b=q71r6SmDWYVmCcJYTRRB/VpfMtWMXEFLyZCWZNTTMiOTIKWyhozsKux3LgVCihw18G2O6NtxsXfrgpmWcEBESuee8Ka7c6PkLtPS1ncLYT/ZCkvIdnV3hvHNYTUhcS6/hNyrKajZJCwWbQtLJBGxY113hWKPpXfRSfldt3KKhSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720512983; c=relaxed/simple;
	bh=dKHGtdDaSs6QdRbILpWeeN3r34+PGlxFbpLLGIIqCJI=;
	h=To:Subject:From:Message-Id:Date; b=WIRJWwhMb/+7cX+A2z2HKHy72Vvm2G6URYho+whwxRtQ0v6cGyjeKjVDAmjHlIQmjzZYGL2OEcka6lRSfg+guVQorFvv0yuNEBPcybO6FweEkd/txI2VLJ+WXAhq77yhD1CkF9YGfrOrx0hixnT9VlYUQVnPkD2sZ1vf5HA9WPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NTnYSeTX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NTnYSeTX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E185FC3277B
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 08:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720512982;
	bh=dKHGtdDaSs6QdRbILpWeeN3r34+PGlxFbpLLGIIqCJI=;
	h=To:Subject:From:Date:From;
	b=NTnYSeTXra51k9X5YoJQIGlRY1SW+UDdlNONgXN2TkXJL6h0BpKhaFQAjPvNZw/gj
	 mpy9T0ok1iwssfqCZU5qYxElewQFvasTgh9c+88umXyWJd7BouAqOEVrmFZC8N6vF6
	 NUQWDGZ3nfOtnG2oEGbUoEa6T6c5h65TolTEWeWY7GvSy3PahY0y9CoHc3aEPtUyiH
	 Oi7zMcBXew6olfyBg2kUhGhiD3kRTNKAWunrAKEoqMbyCoULLxz/VKNPsT8ZIOISQW
	 ++zBG3T2JXTYXXEXe1vHHVQ824ijXmQQCvkUmvcxNt1T1iJJxl9wzWKmdtcqNJniq2
	 cqN4vtDJ1SmwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8F3FC2BD09
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 08:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172051298278.32401.8358954090124070828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0452e04cf0fce3c8bbbcb94d422467a807da63f9eacb76261caa1c1253e3918
Date: Tue, 09 Jul 2024 08:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720512982
