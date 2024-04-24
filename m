Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62F633EA66
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 10:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713955823; cv=none; b=ITNiKWV2IJSPl+x8dzDlaKG0/cnlJ4qhCxkfZxwtTdCv6yha1ubkVTlmtPeOEh1YCdWxjIT0k1TH8oricHJrB6WP5ERq/sZanhYWf06r2kSVC2v0rcqFhulALl9HvewlwTY1QBXxeefnr1kqHHonGheZE3X87AUEt832AjCSKT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713955823; c=relaxed/simple;
	bh=YXck3fpayr1CmIvuLjnCu4e2QdyAiuHQrdbqQUAULL4=;
	h=To:Subject:From:Message-Id:Date; b=JSPYyRPq6Bc4/AJdUzSXWVXThzWhQKpZ3MTqawdRXJiUEYLSi9t1MlZdijiGSh9CJKKhiCWZsiTRAlUq1JmtdMoiQRuuZob1FVCSGSH4n0XHJ2EJqL3Fae5E5XP/Im2jw/1ml/R+EqxHRt9up7DHfm1BhgT6upazXzw+EPJ/MIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NjwrHQxD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NjwrHQxD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB155C2BD10
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 10:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713955823;
	bh=YXck3fpayr1CmIvuLjnCu4e2QdyAiuHQrdbqQUAULL4=;
	h=To:Subject:From:Date:From;
	b=NjwrHQxDm227cTZ/3hz+50PAc+Bkx5Bpnnm7ZRxceJ1h9+qDRfszLmeBMWrjFnqXd
	 IRFFlP21mPD0yQO7QjFVW8YUrTYkmSfWuefUGoS9OU8zC/8NQOG5yL/6M7Wib0/yAP
	 +H5FgQqSDiD1tPcKqNs1DKWEFx+tEX/tt2OCskwiOQ02ONlujUN9ASbZyo8EqLgJA7
	 l10uO5jSo6pu9XcNLql+K8kiBQG54jOYiLZPwTWPKaWOrK9yPw7taBpZCaYFIOVjpH
	 G9A8y/L1L3oj5MjmV1W+Qfm/7jvQAz6HxLUxSBA87YM12VCqVGFIal8pJeo6E7DZ+q
	 MRlqoatbUuQrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D52A5C4345F
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 10:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171395582286.19988.4691469221060694242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4479ed55797c5ad5890e6d6f864d970755e5675232c1366b607503565e1f0ee8
Date: Wed, 24 Apr 2024 10:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713955822
