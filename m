Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AE0919C556
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746848394; cv=none; b=Vdq0/lBbkbVE2YOxCauugJYIKVDsA1CzhXrJXKffbnR1lFwf/o2G3Q6cdxQwtyG9FhQszFWsM9DfSsnhat1WiaEYGxhr7jfFtG5Dszqh6rhYtEMw7PbE/KYwyW5YF0f/bssx73TgOuK8KVyBHg7Mn+1+7kRY5ZbeyK4YSABsqGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746848394; c=relaxed/simple;
	bh=qx6BtKk+u+hS4Q0pniyAD7ZaF5pJK0BIJdENd0CN9CQ=;
	h=To:Subject:From:Message-Id:Date; b=q+GBsAktqF83SLxYWrvMKFQQCYNk3wdgxeiyjwjcynjCHbubNyJqYLxdB5AJrTKjUWDWyB1jPdFDE+UArI56UVnsG7KHCPHve9+rF0s7q9m0wjK2uWAaMLsollx5qp9EScK1JciuqPP+TE8Rrg1x6CbqaRwexqBhIpAkfV5MhNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qacgZrZS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qacgZrZS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A44A9C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746848393;
	bh=qx6BtKk+u+hS4Q0pniyAD7ZaF5pJK0BIJdENd0CN9CQ=;
	h=To:Subject:From:Date:From;
	b=qacgZrZS8OUVYhHbx2wKZ9JpNAJ76sIZmAs0dg3X8JB3Iy0E2zl/NfZ5Fn1arGwDq
	 tGotb2Mt6FYo3yAoW3VChlMFBtheJyg5Ws55UNyfwl9Di7OF3vBM0psuWFUzNLbU5C
	 IPqNafsXfISKnmlHoS768qeb23w4MzEFfVnYdJBuY5Vl3xwEsyNwMHR4ZRXPM7i5WQ
	 HK4RU8LqXVY5SiftrF6gce9xi+mexwpnQJTRD82H0JpeFEZWa0pmLv0H50McHtet0G
	 E6iXR6+v9gtQJ8So7Yyi4YBdFZojbGtY40HtenMyUxoBeBiWLwQv1oj1ST+B/9Ei+u
	 WTiEkpWaOAWtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91233C3ABC3
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174684839358.9136.9729686448664734499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6fa4a608aaeb15a1671b1a052da8b822ec43a10e59a1541a24ee8cbeb4dd9b8
Date: Sat, 10 May 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746848393
