Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34CBF310647
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755797994; cv=none; b=q9QRJ8UBFGlxmSb2QR7r5P/iKj1OLA1fXXwRIjDKFGA2IyyPIlvkBsoOMnOeEo/Wdu7lusSCJoAWvwMWHMyhbLlNZizvwgXAeHHbPVr1+tri2GZMAD9tHqHDygpc3Juj4pbovXzYhJLqLIP+Cj1EOI7up5Cqawesi5l4eWg681U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755797994; c=relaxed/simple;
	bh=fz/5CepNGP98tZCZ5tBZSLouKsrRdn511lg97q+82hI=;
	h=To:Subject:From:Message-Id:Date; b=RYQYZY3rCdi5T6E85BGp5mpjBTjTZhyKqkkORYMLFg44NrG2umLAsIFdoDpABT7QMgyRWeMNkv6zFaBk/Wc8F8YDQOSxaMSts/vjnlgFJRcidybu8i3sDNmC0kC5UVnq8QZZ6zZoUbmNhak+/HZokp9OnxsLEngUa/rBZZNYJQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GTxA+nlg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GTxA+nlg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF58C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755797993;
	bh=fz/5CepNGP98tZCZ5tBZSLouKsrRdn511lg97q+82hI=;
	h=To:Subject:From:Date:From;
	b=GTxA+nlgt2rqvqeWUPAMVUYJ0iNqknx4yT91CR1SkeebTrXc+86uMLfNGGjov6Lns
	 JoRdi5e2Uq5S1HXobxQWP8/CwCnAWQFNBSdJG6Cy02pLvtF6JZskkAOWja4oqLcyT+
	 6aU0oYwo6htAtR2TJqF7zo2sIawJGuyX6rjw0QG5s3DYkzicQVDbcDqgGGHlvUZU3K
	 h3Next4NItfXHN/QxCjq/kYzP0m+w5OeTHWxF7OpW0MbWFyBgD2YSz+rQ2cyLK+oGy
	 0XKgAo9ujOQ5pHBldpDQoyI1mI0zAAY2MAV/kK71Qg9OMSemWl0yqNTTJDPvjge0BA
	 Oo1+WqpEp+Akw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC12CA0EFA
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175579799357.15779.15298116285740738562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b432d4c4afa69f9a0fb80ade75178d2c6de4610e3e1dd82894ee46e830217c5
Date: Thu, 21 Aug 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755797993
