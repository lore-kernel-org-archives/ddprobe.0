Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BA661A317D
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 09:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777974454; cv=none; b=TZtzIllFMyr1NwfXYKZnu72czggBwUN6adgvzMmiN3CLLdkE4HQhfVFmSFYtXwckgIplZEWbVnfIX2jClNbTFY0LNW72Mbz9cBRgRLyxC+pxJXnE3rUsAMd882+70lv1ivDFsi/lC45xfc+CKX1c5fQP8wJ7LvXAnZBguciKO9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777974454; c=relaxed/simple;
	bh=454U857HMFI+xr0+0U4EAD48pc2t2l9R+MDLv2uGZMs=;
	h=To:Subject:From:Message-Id:Date; b=DlCAtFwFgMMNOSmZw8UaEt+l8IhD1Yn0GvS8wnl7p14DNcrfjRswUjtcK8yB3v9Kz4ZTgiqnSeuXHMczunV/DRZJVg/s6ORlY4eg4lCWHbHEkOJB5k9K0WAA8WemTklLPu+fBV4XrpOHMKdWPduFCb31EuWBNYo3qykwbyUXDPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WAPcsiRL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WAPcsiRL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9919C2BCB9
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 09:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777974453;
	bh=454U857HMFI+xr0+0U4EAD48pc2t2l9R+MDLv2uGZMs=;
	h=To:Subject:From:Date:From;
	b=WAPcsiRLZ5rIUQYXadDsu2wxiwb7iK7phTTfGXilbT8IQtVTzwek1TfBS5YF8lOA0
	 Ury6biZXmeovpvmvAfqUF+fA57u7Gp3MjPVXuzpODH8udbHweZO/LqAW7/vQgVmgIj
	 gqOlKjvnRkTbEZMW18X/VTvkx41bdCV3EmVc5bNb4H/Ob7OUmrQEorBWKVQlY7cvSH
	 E4fljl2LyvYvq0hOUa+z2IXch5po6Y/0rFBSwHS1DPG9IRIAPViL2gVwZItMulOSi+
	 GJuL9aas+/bntMkzk4AQm8WpazRJaRMT+2SwgZYeFO6D6lBGaBFh4q2/mtsguAoSN/
	 1njURUCUQ9EpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA7EEFF885A
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 09:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177797445368.10633.17634629042466741189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed72d290301cf0a75479793ac1c19dd89a992588843b06707b45474927e4b28d
Date: Tue, 05 May 2026 09:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777974453
