Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2729C21D3D9
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753745394; cv=none; b=rwxh8zPKyBEdYLJ8tUkIrZBNo9JZWfi9O9zso5GZpUWX+dfl18shxnLwr9ArnVBXpH+JCF0JIO6tcZsEUyNY11z6ZJGP0bcvcLvGqIyAkPMVOh1Z99kWTBiHaHgAqUMBW21UYfS4uzywuzqV/ebg/XI8mym/9rEMnca//LlTNZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753745394; c=relaxed/simple;
	bh=iH/3PiCvruvWrP1ebFTcoN/7+4zZTtQN+aZhiB04hoQ=;
	h=To:Subject:From:Message-Id:Date; b=S40nSgaKujsiN/rryAw0RxbZGLfEYtEejY8J40d4FId0tm8c1KMuXB0WSdNY0/t0NcjEP80SnKw4s2bD6ZvDN6MTZlU2fWQBKL+tkzumsdIxGmZGTSO1U2zGZOpINFM70P3yKNkWRmW+oInHK7OhUGLAYUeQGF5dY475etTURHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pk3EINPQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pk3EINPQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E97BC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753745393;
	bh=iH/3PiCvruvWrP1ebFTcoN/7+4zZTtQN+aZhiB04hoQ=;
	h=To:Subject:From:Date:From;
	b=Pk3EINPQtoFOIGP0VTHObjeiJmkbeFgVFQMrkpddIpsyLu8wQl1uMLHWU361c8LRw
	 Qw2Dtk/mdkuGbPG2lhj6+ZtgZSDIEYJMPwtfXNLg9ld6lIZ2unxMAg+D2R2zXHEyzq
	 HsjQFvevbz4Ve7OWAtb0gOFolPftggSzQaex8LbaohxdSZxEcyK1BxiGYzi0oqJRTf
	 YOiWZV+vFFSSqC+LB5mLBr5dicUBIZruMNN8uq3XVBU7oO2kL5s0lL2ltY5CoX0jU+
	 1GvQbU6FzniXrjXeGSxEFdVYePMvJ0BOzIF1mTkepN0UhbM6+//EtCdmYuMiIgG1Bp
	 BmHVQo1km4ziw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F749C83F17
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175374539358.14936.1491368835214185210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6384bad316c568949dda2361a2873dd998f9999f52bd97c1a1b63270b416bfc
Date: Mon, 28 Jul 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753745393
