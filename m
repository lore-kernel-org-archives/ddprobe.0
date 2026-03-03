Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 150483A6EF4
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 18:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772562894; cv=none; b=EhBWQy57lgchscTHLvJL0gNH48+PcXsOzPZgYy+F5HQecoNxcSx0GJishge6MNwtK40bylfWLPQ6aDaa6S2BtU3ZnmpV2lxSgWC9DYJTbHUKD62KjRMfINNDWB5KEZzwRUidvE5csUX1BeegWmgyGZyQUEi2MF3hjgrEPfwftL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772562894; c=relaxed/simple;
	bh=TrU8wxIl1iPfmogAZIM5O6LC6pV7vqlT8qSLtA23Fk4=;
	h=To:Subject:From:Message-Id:Date; b=i4kbMSWsO1RG2/VVk7Ta9VwOz04ykTUVrEyM3uqdXci+Yj7UN/U/fRQtM2taiPd0pQ8kuD2F2ld9tIiEU4Iite27iQb3K8Kk5rCyWekY444uqmDpr9ooQUwY+5r6z64ZIBKItuj74Be8CejuZm8KwiDIxJCwJgGdxhr4ddmvcMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E3v4rDvr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E3v4rDvr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B138BC2BC87
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 18:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772562893;
	bh=TrU8wxIl1iPfmogAZIM5O6LC6pV7vqlT8qSLtA23Fk4=;
	h=To:Subject:From:Date:From;
	b=E3v4rDvr9igOq5n62Q2oJ/iicQbiT0b1mBDgeHbcnEjcKqo8AmFjA2ieeK6sHhClq
	 CrP46C2bPRUh3gts5FgDJnhlbS0sPVSk01pkmi179MiNWZZNi2609iJOatM77PFQZT
	 ry1MIYEZuv/o710inmVgqKS/6Szo9Yz5g3jps9h8ICLzajIkHCfa/MDCUZrRgLOALn
	 seTjHijaZ7KJts5hBJrhseykz78vjeYrR7KbQfj1KtQDKYz5ALnNNEiC0HZWFf5g9U
	 AwMAZ20ZW3AphLqVYJ+ylNThiW4GnHa56uKvQuzZ1VG+rkpT4ifq6sQmAczJjq/Jfk
	 62C1HSamWOg1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BAE1EDEBE3
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 18:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177256289362.24767.16104073045339596342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff44ab5bef968afa6f609f581c7482f808ad6e72db1f71842f900bcd279d4fe8
Date: Tue, 03 Mar 2026 18:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772562893
