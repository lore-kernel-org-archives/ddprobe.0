Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 017EA11CB0
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 06:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706336897; cv=none; b=fWsSWbPO4SluIL2zsySzM6HUevtCTn1n5anO5VL+kGNbU9R+bxgy5LHxuVTDwS/cGegbRQu55BMiC90tpM4H4gCTiWz4nZzGXXlBG4DMhbGbs3NcsKuXfnWs+2gWAJzX9Tw+WJAbSz7Jw/aq4nlEm69zQM6sJypnCB2NTEewGi0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706336897; c=relaxed/simple;
	bh=/9BwaZavkiWr5Ye+ndDHuvIBnm6SU8VSVR9JQXc+x5w=;
	h=To:Subject:From:Message-Id:Date; b=ugtIQPS2nfbquwRDfne2BwAJXrTDpDIeiTKxCL9dZfWGH43oEBYusu71wKcr1h206qPiIhDdzgrZcSKGCIGE5/wnU49NX78UFiWCdajaxOWm/8kq6BnKEPXsqgxCjVLTXeq0y0+fb8OP7O+ShezxQLwFqOGdExU0EtjxXPCg/zY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rm/hk1Ga; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rm/hk1Ga"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 834B8C433F1
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 06:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706336896;
	bh=/9BwaZavkiWr5Ye+ndDHuvIBnm6SU8VSVR9JQXc+x5w=;
	h=To:Subject:From:Date:From;
	b=Rm/hk1GaQZw1E6FLmpRaKyBfJn3JoN9/NTQ+zNBcN9h9PFwK2PmmDg65EPvlPMHV4
	 c+KSZKyJ59bLAyzSpoy97oECbzAfr4mUKfKHn7Gi23erhJBZYjweXKnz0PWAtis8cI
	 sTexF0ywyjUD+TryETax+fx0EfGrGssfzU6K/AUEGVfwqcpEEjWdenq7HnpCBf3oaq
	 a8UIPtpPWqNbKIHFGJOcHmtAz+4Vw6hZ0aCOrTJOzeofWKGDdn6zoEnYDe4p9jtx53
	 qYosyB9CRiA93v5vXRXWawTK30EbIZWzJ3sCoXgKsQBuZ1rg8NiWpMLIjydDINd22B
	 zqzYVLa36pCuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65E61C46CD2
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 06:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170633689639.8828.17706972852757848221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03240f63c9cd53f73345a57fb106408117e6d88ad6cd1fe8d87fece74a666c1c
Date: Sat, 27 Jan 2024 06:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706336896
