Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 291F12DE6EC
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751487594; cv=none; b=UnIMfIGjaSN3M8xFjNZA10U6egkU7hUIrPYDSHPKQvJygTFYs4mzeFR6JYRrP7rbTksd2l5Y6KHZytvk5++yGs01e1dA61+dlJPbL81tNPxRR1mc7IvutM5Z0TikdfduwkSmP8xGczLB776MiJRa664FNSjLcN7/ZS4qaHWISU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751487594; c=relaxed/simple;
	bh=sJtKe/hkz3nWLigXO6Lpjlk+M7WF4iry6YyheXwpg2g=;
	h=To:Subject:From:Message-Id:Date; b=XztuLIhP8M4P8iQLFKffqmjLkvftRnH7r00EyEPRLQHhPXaKkIECGuGgPeOpi4nw8kH/9iY0uLnGalh1+C5wDDgS7qTHbFcqrHHw7QMleHfbfDvm7YPqbq1jTOo2xLBef/vfz4E5N8sXmDSLhj5wLKRFJaSnIcY4fh4lZ6mTf4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iai9hABb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iai9hABb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F572C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751487593;
	bh=sJtKe/hkz3nWLigXO6Lpjlk+M7WF4iry6YyheXwpg2g=;
	h=To:Subject:From:Date:From;
	b=Iai9hABb1zQAsRU2RNEvSv1ybygvyFzRbOlSO0YkBFMo6GMOtWapT3MnR6KgM9x8P
	 OO6pq5vpCq/hJKbpWgUscw2TiKvCkC+sHqZkLpKZ0wRP12TjISDz/k4GZRlx0EwRGp
	 a/tWMLfFEaNtL/A5KsI+0a6ajYhvspFXTOWw5gv0nKquKBe5+f7m7CTT9iQAqnnj2r
	 qb9KriSu9QRBUbqoDEUOpQuSlcCxpHwFs2LxO/yFtLF1R+iiQeOmMK5aUCNpEoI7MN
	 P8XAuR4Y0KDhDPWGC8kocVn9bRj78s+X9eHsMvH8sw3pqQmdtMs8R9HRXQt53GPjIi
	 MgPuDZLi5pqyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD5FC83F03
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175148759357.2923.16311308136267673268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da877250bc1d6858e9ca59dd1e6a36d63dcd886074dad29677d8f53e63c77f8c
Date: Wed, 02 Jul 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751487593
