Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F004347FEC
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 13:00:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789218036; cv=none; b=tD+62tFYbmDdnxoIjru3yGZolva5seOmdJUv/IfM3puq5Q5wFrUg81g/TCMaz2IAGjKWavPWjfiAqvOmrWIqU1+bRR9F9AxJbrazd1TLgUT4vvdBv8naO9tjTMoTSdvQ9mVj1tl7IXpA5GZ3k22dk1/pTVFqcc19/UEl049KmOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789218036; c=relaxed/simple;
	bh=odY2oxsNxbAk9KZJiTmR5Yi5aS+rJFnetFBQ9xMy3QM=;
	h=To:Subject:From:Message-Id:Date; b=Zyh6j7iafVPebV1ayaXaiW7ttjbK9i+mCMou4lmoL1dL6aygbL4QrkitN0xuXwYQC7qNxXhusnoYPGgFiOHr+koWv6zttQRe885VegrAOHnK1miKTpo909rFigRNudkHEYbIUcqqpfIJnp9ziuNYuRdMzpey5nNN/oJ9NMWzJWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XVhhud8t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XVhhud8t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB517C2BCF6
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789218033;
	bh=odY2oxsNxbAk9KZJiTmR5Yi5aS+rJFnetFBQ9xMy3QM=;
	h=To:Subject:From:Date:From;
	b=XVhhud8tGMIwtRqyAVdiUJ7PpNDwgHy6b6WFAnOKUT/uPIPaNw387Xo4p6BMbuf2V
	 Fh74ZUAFblXtWuMMrBRBzlKz75vmSYKUDLAvwzJZwn6KIoCboVSoGFIw4GyrUPA8Gu
	 zrDLF7mS/M2yMBIA1wJDEKa9XnVVZlzGjSl0hO59Kovmfuk6WX4R+hbd7PeaT3QRbF
	 mqehv67qOetLbf655F8O0cj2JobuvddKBBq4G2VZLsUQ8vI8qeuxW8UdjferQ5JL9T
	 C+pZD+E1/CHQdw93GMmEHOTC29XmJFEJ3d8lftfzVs83C1KhOKZ5y08VtHvEIk7Vpf
	 vQf1R37zSjsDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92FAC79FB6
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178921803368.24795.17037698616752248823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f459110d9f2f1f17daff2ff49c82861096e009662997a52e788ebc9a66877875
Date: Sat, 12 Sep 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789218033
