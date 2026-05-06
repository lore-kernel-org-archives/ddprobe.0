Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FB152C11DF
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 03:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778038654; cv=none; b=rl2Lsma1ZmZcixGOd+rUDNTEK5kbNSpvquXfgDpyazLK0uSdRBUiXMUmgISK12lokMjvblvkQw4dsEWwjk049UlX6e4UGWTIFKnwiQBif6OuUZb/JSFDaanTWsbw0LU1JQXuY60G1UFlRgBMN6glap95GawR2BlhU9FhhcDaBok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778038654; c=relaxed/simple;
	bh=17rH3MSTlqZQzq+ZKpwvjWV8iILDQxycFfWOVRcDGOM=;
	h=To:Subject:From:Message-Id:Date; b=RGeSUa6NI4xNv+l30vxiu7jFAbMYiLy9fSKp8HkraOOOkJwOk7P6Eie6z9BvorfMwB9TzR07t0ISqutlFNxhk8MaKtqgfEpzlROAyILHHJgCFnLofFma0/dzZt3QGg3bEg2syzhAm7xUq1YMJ7S8zDNhgcpKWdsoDENYMQPBRDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HO5wGZF/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HO5wGZF/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC347C2BCF6
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 03:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778038653;
	bh=17rH3MSTlqZQzq+ZKpwvjWV8iILDQxycFfWOVRcDGOM=;
	h=To:Subject:From:Date:From;
	b=HO5wGZF/ITZHPhGhjDHoZ0K6QkFOAyL3WGa1kUdNAYyLPEXs6QF8MkCUoGBS2nCsl
	 kOrdoLW7yjgf/LHansjkLFB/k2B9HhTApGYQvdimEzhMJrkaAh94c10VNWVdCJg5qs
	 oR2cmysdbP1Ai5/459mHRbG+lU/rf+bwKRC1OOhsYtDU7ZzzwTYJ1x2LQvE8QI1uTq
	 J9IIpzx6jtMnjpENQyy8FuujkeiOi5qznku8INehXSxE7KMcsP2db/lXCGkMT9iQjx
	 5qiwMWot0lehRlBrGMflS/zNZt+7oSi/0YJAbMnTbW/5s6ejo7086ivifm5wAWwS/s
	 ZX+emwVMDL6eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB08CCD342F
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 03:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177803865369.32015.1062460737921540900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47f1710e67e62a62585961beab9d893f600102f6cf29e7e1608e019f8a964b1c
Date: Wed, 06 May 2026 03:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778038653
