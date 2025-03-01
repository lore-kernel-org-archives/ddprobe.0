Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F808189BB0
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 09:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740820734; cv=none; b=XONA3Kzi4fjI5wcEgdGJvKLyguDBxIuZUTWSkiZlvCmgx19STy0KdPKTFcje6zwG2GiAyItLdypE4bUYGWdhMdyDDuUNyXuT8wSiUg212BLWfuUeXgciKx2tu72Ek6qUUHiP5nEJ6W+JTDlttDFLndE7mZJRF9XK+UHA+sRoHNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740820734; c=relaxed/simple;
	bh=L5tCZy/IRH31RR9L8H+KW3ns1jh6jQBWtxLaPRmkB/A=;
	h=To:Subject:From:Message-Id:Date; b=ZkhDDhLnvnrO4gviSq1EyuyOYjcRA2NWIhsG6/Fu3Q5jnqtwfiG6xNjCVXEIk3o3g9+P+PWVi7nv5SZqwXyYJ9wqzslFuuB/7GIj9E7qUEbvpwkrQnFGpUF1IgUQ6LN1hloyvGqq7A7i2y+lSWT8ZAA2effw2rQAHgsDRoykN0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f+PmzfVk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f+PmzfVk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3C51C4CEDD
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 09:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740820733;
	bh=L5tCZy/IRH31RR9L8H+KW3ns1jh6jQBWtxLaPRmkB/A=;
	h=To:Subject:From:Date:From;
	b=f+PmzfVk034Lb7KYe7EaZ8oXa+6N/1Wq2DrcnWbQ3WyrzXvW6hHCXkxF3Gx1qQ37B
	 z3u0gWJmu+J+5MXXXOOoT3duJ5SqfgQgJeeVcgbJ5JVhqtPjeZFUqL84QHLNuU3SVy
	 c93mbcWTraB+P1fL3Ky44TOfCpYzH4JWMuPXKjiUxWQ0bnMi1iDq5/+3riWEz4mvqN
	 AZjmXdbzJk+DKrvR6YUG55970qt/SmRV7mofgCNzzUNglcdBrAOEynWA3OLG1ClFWh
	 tpPPN8iylxdlzFZTgzI1Im8THJtgn/30YCDzpvwpQYX6wRnkZAfFTbCQIymYrO4zJ3
	 GP3ke3/TCJK6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C564C021B8
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 09:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174082073362.6382.9178986954142119675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b977b28b893d5adfa8adf32773516fe4670e27ad1244acddc88ba8ad877a0c0
Date: Sat, 01 Mar 2025 09:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740820733
