Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EB85175A7E
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 09:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780737874; cv=none; b=j3xQD5U8I2+0IuHgvD8f4VyFSF2FZYXClIxD9iZYXCAIYq7pI0esU9mLx9+BorAAiyAUPgWH5VvsJkaXG4lzObK62Ztdh3bzCJQzveBpffZktoXY4Ff5cVSMX82NrmjiXJylBGoHIGFiJ29fqR/75bf5szasLaE/etRZqBu/GZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780737874; c=relaxed/simple;
	bh=y5aA/7JYsqV2spcUHjCq/LPq5hdtzgWiQtIT1qsFoGY=;
	h=To:Subject:From:Message-Id:Date; b=Y6os8XjetF6Rd05Sb6/Jh1r1lYrWPBug+Ju8ybhwfpkYfDG+IIpLaBQ7nOajwHARXVwZXqM5sRLNhP2DkzvppdO9fQ9tnvyXsGX19f4HBTE9x+MsDXQEvpBuD+F3jhQds9Obo0+0n8ZbRJnSmgdhVWBRUF6XA6j8LDlicg07ScU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EqBm0fQW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EqBm0fQW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD92FC2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 09:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780737873;
	bh=y5aA/7JYsqV2spcUHjCq/LPq5hdtzgWiQtIT1qsFoGY=;
	h=To:Subject:From:Date:From;
	b=EqBm0fQWNCvoBPEXiY//aZ3Lcx/QoQ/Vi5GFOs454VoVS20+NAcz5jvANkKbA1ZZ2
	 aaMGz7cZA+28xxhKC+DtjLTrd3BcgkM2ZYelBB7XYEOjXtX3IS5dIU1O6uodTDxKZA
	 h0FMsKSIqYUNETuCdnq9ucaZyWxDVrmSgtsQk/9xEUz9aEDqU5u7t4Qo0lrw/CHqA8
	 4RokEIojYsA+WdNEtfJqIcwL3TXt5ZZNuSgswncH/auXHckSQ1hpSTKMymQgQuGr0t
	 jcTDGXVJrNtuLCciVGni0sY9Cus5uIEgV9JC3yJpzX5kAkWgcLiW2nUsTgwMGSjkxQ
	 /xbAhpvBYqaNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD8ECCD8C8E
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 09:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178073787369.25167.16084506387387650045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c01cafdd4843fe4599589bf89d5d5939c0cca590fe8d73111d44fd86d3d33ed
Date: Sat, 06 Jun 2026 09:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780737873
