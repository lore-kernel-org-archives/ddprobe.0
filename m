Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33CF14C91
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728094554; cv=none; b=auNufUPBv5tPgOBkQ6Gi8xPHApsq0CfYPU9f6t7OhYz7xmEnWgNY215i+eXrU9C8Drct32ND5oFy+dfKuyWrga1sWdyZb/I0mJgWKYLP23dDgZdF4lCKGCdgvDKFlNUicJTroh1WjGieL8YNoihInyFYu4nb6wgsSkI9ebCAcLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728094554; c=relaxed/simple;
	bh=En47Ao/+3WENZsDwM8zojV6ez4dZCUEYqr5Ug1u0XE0=;
	h=To:Subject:From:Message-Id:Date; b=nku/CXqgWqk5uyMEEjItC9ZgFnfvGYgMLWYlnyZOCfpu8XElhymHh1SVQrcRC77lNXDJXT7LkGVyjZROVb8qk+ZbarswUdjxHZ6XOxtbsc+6vq1oT9segTAieCqU4LBb130MSMG5NBo4GcT10aSiElGsCsbKNXRaGSkXiQKtna4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wesmtb7s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wesmtb7s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5F88C4CEC6
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728094553;
	bh=En47Ao/+3WENZsDwM8zojV6ez4dZCUEYqr5Ug1u0XE0=;
	h=To:Subject:From:Date:From;
	b=Wesmtb7sNDU2ma1C4dZbJtu9Uoy8nfoeELtPXzEJ69LX8vAyPCiHeEzxRzYkNA2eN
	 th/axc/S76P4iEcUXYjergyGxTsa5lWYuYHdNSmZDoK56kgiXoAwwibipJBd56nK/t
	 +9x0A6S+WuAKMJJpeAFFdeuqZiR8tU/jCU9X3vzKwvt9QLZ+o209qOh9meIkM3SV2P
	 4JIhFaxi4tb1XqOYpJNpjbsCjKYUVqkLIJxbAyh1MGkPQvaPYZ9FmCvvWwYvhdyrxn
	 BZ6xhW1sZAuJHUq9ndPSd8M7U6hEjqg7fZWnDVJ3rVhAiiKUOQ1zZeheKwIiOeA8rV
	 1bIQmcyc/dZSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA62CCF8868
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172809455367.31946.6477398128276082415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 419c0a0f3fc8b3f825c004a53ad6e78646be1187958815cdf626fab55c1a0a37
Date: Sat, 05 Oct 2024 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728094553
