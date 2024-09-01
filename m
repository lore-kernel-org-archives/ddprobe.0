Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C7B814F6C
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725230754; cv=none; b=mwCbhY0IwhXoXcGS+Dti2HbecLprTSJzcL28owvQKF4bH7HSZKaML57gvGN/abT6uDJyI/pumChW6JO1hSKPloMpHA+rfm8y4H2yt2Pok6zmXs5dZNdA9WUYcj/2nr/0Ez9UgNWRv6up5iCUYG+nA1Dbnw2sDKN7mk8Vj/JG8Yo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725230754; c=relaxed/simple;
	bh=CWJB5tUa4/P/9r5M1g6S+Gg+oYT0AREfW67a5Bo3YG4=;
	h=To:Subject:From:Message-Id:Date; b=pvys4YvIQUwPj3wWr2TbN56vtH0Fwbc7Fey0ywSk5FhYLX6ocfjfc8nPhozo6n+A3w8tUKntUkSEvT5jkKfhsDY/1ptPF5XlysIZOcZe3i0HHxoVwC6rJMAKx5KdOteodVBVhQtZPTMKs15SUYNouy8+RizNaKmEYHO9iplkk9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XrBMXdtk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XrBMXdtk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A50DDC4CEC3
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725230753;
	bh=CWJB5tUa4/P/9r5M1g6S+Gg+oYT0AREfW67a5Bo3YG4=;
	h=To:Subject:From:Date:From;
	b=XrBMXdtkCSFjX2HO2qTM3cVUPgCpWZJCJHxFkyXNnlr4NOyZuSmi4MISH8rsEwef7
	 npRqmk4V9CeLCzCQdpyTV0e4LZSloH/pX3OObEUFR3cqjtPx/WcnsrKE1cJGtgayQM
	 Bdjq8So3Y3J/s3vpi+le884UBMOYD6CrLk2FNYGPY7QvnMF5YKhirvxB0zb6McZ+qa
	 qmX7+SRXx/921BQk2zXzjxJAXhpeoRk3JbgHQ5MxioyFAq4chVdW6Hp5BocDPMmpFF
	 ruEhlX/EiFDWqglgZVN336kRUUaH4v4n6eqd983v1C18ucChNn4r1pcWBCqUnlApjE
	 xqMaqu3g7DPZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93619CA101E
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172523075359.12694.15285089366496774423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c7a82623cb7034275cb3814eee70372e62f6eafdb0f1866f2c0cdc9b8d83a22
Date: Sun, 01 Sep 2024 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725230753
