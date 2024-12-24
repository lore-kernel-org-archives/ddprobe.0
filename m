Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E587927702
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 05:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735017954; cv=none; b=DQWYoIUmlyM7lXjAdL/vuSP99oJqw5cO3inApwsQri6MAkgDsV0JI2ns7qipe9Fs+KIpiLK7L+WbpJ1ZyBmtCNOUzjhoTA/px21Pvj/eZIMNlO3RHYQxwXgS7NjYsPh+uEbx3anPT7V3bhL3eWT0WMbOYDU/RIYEaVgjnyZzZvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735017954; c=relaxed/simple;
	bh=jeAEeOyWFChNDWCF3lSA+v6oi3E+fMWJLlAjImLPfwI=;
	h=To:Subject:From:Message-Id:Date; b=bfOyNNaRw9GN2QVqfLBjxzjkaueY08oATXpjRbFggkyohTm4HrBT5OhKDSNORvYo19fbJah2qfrKn0SUvLAS0srL8ORoeO8cjCtfMly2izFB1W4mvsK3yJ5/rD/HJvY25mpVd/VXObkBWEVmdEAKHDJfvP8nug/3LCZfV5O0k8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VPzcaQEr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VPzcaQEr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B42FAC4CED0
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735017953;
	bh=jeAEeOyWFChNDWCF3lSA+v6oi3E+fMWJLlAjImLPfwI=;
	h=To:Subject:From:Date:From;
	b=VPzcaQErCaPIYp8x1xwEmHRnuTZPsaJY4xQLUXfQtQW2rRydqvs3LRmo1km8BSKHg
	 H5x6OACktl1rN4ApI56A+RcUA0hUoV7GcviLarXYkeZIh3EdvsO9anCCkejEvvmbjc
	 VLIZ1J1qfB9wMeu25YzOcXsP5kK/qzxM1lNHjdCNs7snu31YzSTNZrf4oKIGSc59FH
	 5KbvGL68WezKeUzko6gbI6cIBLpAbhyek/VvwRgjFXrTh6Xmz1WqQgPujiSUTUgj8q
	 skGoS+GP+B0GEfnczrIKI2nG4vJHORiBOTAoUTqwcRkgM4znwbvv4YC846KFOKf533
	 XDc7wFnN0uKoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F14FE77188
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173501795360.27034.7223207364103321208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1eba1e0abc30c23995ca5c992c0a7fcd3f0805007e8fbae333b6c39a5322783
Date: Tue, 24 Dec 2024 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735017953
