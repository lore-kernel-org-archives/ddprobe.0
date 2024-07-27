Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 282937D40D
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722093354; cv=none; b=ux8H/6jj+Y4EiSsEAbAuHQHBVbI1azjBVEkb/9O1PWVfx9xwfV/P8FkJbhpK27PEhAzCviqrHDy81zxrdm7EuJBS3cth7DQnfsE9CquvxjJqZD1ef65sp64wcQrXYMQpTEbbaU+P1KBWuCZRK+gZwiBINqgR/Io2/jL6orYBXwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722093354; c=relaxed/simple;
	bh=qqiHLF9ASlyuK1oYUz7Q0Ja0rmIULJi+qTYVMW7XFCU=;
	h=To:Subject:From:Message-Id:Date; b=NpjYCaZ3+8KEPKz0abD1BnEr0Mp36WqUAAt2M83ZzON3iZVCJrEMM9uHutOqTZG+kS7MdivhbY+HoRK6hVfYTd2+zN+aY29BcDX4bz5+lh6xsTNJzW5Kw8gDnR3rrWzvePoOxdyLOgIJm5ldcS1lpElTLgte0FGICiLZnLntgvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pNVB5fNa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pNVB5fNa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9823C32781
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722093353;
	bh=qqiHLF9ASlyuK1oYUz7Q0Ja0rmIULJi+qTYVMW7XFCU=;
	h=To:Subject:From:Date:From;
	b=pNVB5fNasMGAFnbgB83PMnqA4R+uAs3yIAIlAcL5RcrBbHjyKyKEY49aCE2afLEUi
	 qFTy2hl47kTG4+zVdo0BWXa3zwPAdnXFlRuvSI/g8Y4jKi0SBVmO3zcgcxxH90196K
	 0pzBTxxAZQoYb3Hn99EgU0h5J3VPv9/DP8/1iDbpIOXcAq41K0g6yT6hHtUZ4KSAmA
	 3pJlysEDZxVv0E4Q1CMLoyv3tKuyCsf+JapU6GmVC8KS7HcYHZ1OyRgYi19adp+V0Z
	 biQJn5XG7aNylZYr8ROY5gyyimzu1H8yXw/alSA/jtTPiimCqQNpnBikmTGnPWR8ae
	 G9dNDwbmWvDpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95AE9C3DA61
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172209335358.9955.18247118908910960283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c88adba1fcdcee78824bce3eb45537b4f75abbb0b4c2444ec78d6db4712ef38c
Date: Sat, 27 Jul 2024 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722093353
