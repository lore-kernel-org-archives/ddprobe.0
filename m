Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D98003A8CE
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724442953; cv=none; b=mciC37oP79FhwLlzO5HqgTqTyF0+pU4ORZUeUe/QAhFjE0V4stg8poV9p0HQjH2Z4EaoWT+HzSoeHYVDQeYxoEj5+U7S0dIhd8bgIVKCvsrkVJA9i45GTadbqNby0VNvsKmTqXuzar3UobgnW8pLEEjqB/1CEo/QlR/7RilE4mo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724442953; c=relaxed/simple;
	bh=Qr/1i+A87qVhfr6E08/bMWTYzXVmgAC4DcVX++xhvug=;
	h=To:Subject:From:Message-Id:Date; b=RVapdsE0IkP00YIJWb6ebCr+C5M73nsXTtyVwO8JYm7tnSwbCLjzmLUPbnUhX0HN/jJrjNVhXjS/UwBK7VJ71nNELCVqzVWnaP+YWSfpBFb4TmHwpBBT1AyyTqZ01I9VpRz+piNlssi++hgeE2dArsy0w5X1ETlrpsG7zoONXGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p5of7Jya; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p5of7Jya"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0B31C4AF0C
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724442953;
	bh=Qr/1i+A87qVhfr6E08/bMWTYzXVmgAC4DcVX++xhvug=;
	h=To:Subject:From:Date:From;
	b=p5of7Jya8m97RkT0nsvbM14oFZXVOGEz8IgPYuhuSNzP+zO510Sx1aH+hY9JOh6LP
	 UIWTP5grWUWXgDWYgfEzoJfzgJqt9vsAGGnW6a29gT4bC5/ZcMor6YbiX6j/gerxX7
	 02pDKHXGDi8mEudVa7vRP3VlTfDjjbFvqtYU1fZJume6mFMFJJbovb46d1Z3rniaWA
	 KOHEuUyIB6+bvq+ZLfmqr/jKrUikps9AGreojgS38CUvFE/f56ggEo4KHVszqLrkb0
	 U9QYDzKkqncnt6PhZS0LhrgsS0ls3YsR0jh3DRtCoLJMkwAD9hhKa24plUWGxgGyy+
	 TmW8od0tGbgZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FF01C531DC
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172444295361.19863.7522916224847731522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e9d46db52de34d69e1df01cebbc5e0608f87cf4b0d6c53113e9c3ce1f8aa333
Date: Fri, 23 Aug 2024 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724442953
