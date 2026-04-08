Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CC8D3019BA
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 04:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775624134; cv=none; b=IAyXpZGzlrWZW+2CCD+5y7IeFOf+9rfi53MsbuNSd0T/XpVRJ+NHmqKE3yZHWO9vnRwOQSTbHxCbAK1eGz9xm+VviwirQNRQabBBgcJFz9wvvn4t6x58OV3cRft+QvQW8aYg72HgUXfphyZ5TaJY5PnqMcedvlLHIIbGspRlcz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775624134; c=relaxed/simple;
	bh=I9BNyZDWf3pJzJnS+cdJP7q0o83W9UNiaVIQEq9XhDs=;
	h=To:Subject:From:Message-Id:Date; b=dY0oRHle4E+m7g+TJHgbjIe34FHb45wO4SMSEAO2gQgibcrIiw8ixdqnlX7QhEp6E9Wa5XP9OMoQVXm8wLrQDy4exeoXFfNmeCYC9xwcJ6zYfwTXvrAvyqg5lZ6UvB12SfJDDNN520nh9ihDniczQWHblSfOqjqx0Tbr/eN24dU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ouOXxT9f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ouOXxT9f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD2E7C19425
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 04:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775624133;
	bh=I9BNyZDWf3pJzJnS+cdJP7q0o83W9UNiaVIQEq9XhDs=;
	h=To:Subject:From:Date:From;
	b=ouOXxT9fHkff4NH1khRIzR7kYG3GprMECuOGYClUZ+/eX5b9j9AVwgi3dVKkpSuOU
	 RmDlHcwf+UU/U3i3lQLHpn9OPjo+7U8pSRM8dRXD2Q2dFSzzvJlCYDbW5HEOFB3R2S
	 OtlfaTjjqqyknAwMBJIjlH3ysVeLUOlL54Ybp2r0c+ZRDCrZdowIxkHivIbLhNLud/
	 JlICgV74e8hYIjZcCQlxkFReWnUsWD18wYzBwW1loUtBnG49t3kUFEFizmGQaQe41t
	 zt1t/z/ov6kB4T78x79mh1y0dsMo+AgVvJxtI2vmZaL3ixI/2/biW8cFuMUfs45lRc
	 YXV4hG8vH71aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD512FD5F75
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 04:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177562413370.16768.8242733925046878843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 129530625e4f97a64d8c181350aac2390f336b770d919ec9fbea072a39e9d0c3
Date: Wed, 08 Apr 2026 04:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775624133
