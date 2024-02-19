Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CE4D4A35
	for <ddprobe@lists.linux.dev>; Mon, 19 Feb 2024 02:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708311497; cv=none; b=J2mFc+K4H6ZK625cXWAkduL6tU0PV7FnVNM6gEEQGwgcfugowINmP4ibnr/dKIavAlE0t2tTgRRyMuKcINjhrQA5Sz0MgPoj2E5QLvvhJ8ZUo5nO/ujSUEyeliFJtpUg8ijLgoco/ylwWLvcBhQO6RlMtWGE1zmrpbFc6+cYljI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708311497; c=relaxed/simple;
	bh=lSNDD2pk4NWRUG1rvWd6tbhzE/z/mhm/dVj6z71+9rw=;
	h=To:Subject:From:Message-Id:Date; b=SCv9DMNBZHZIhvVV9PYJpFcbUx9wXFIuRrNgCN3ocOjI2nLQcJjlGrUx7ZgbygB7K60g2vZ0UTDdsNH+BWK42YFFQd58T5ltXpS/dId5ifnS1dt38Dt9xuoG4PVIIhSQmMwH8dQ4ieRHMcv+J/0RB+fwEZ4xTVkiWA5UsLrTgw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SXNa41YL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SXNa41YL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85538C433F1
	for <ddprobe@lists.linux.dev>; Mon, 19 Feb 2024 02:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708311496;
	bh=lSNDD2pk4NWRUG1rvWd6tbhzE/z/mhm/dVj6z71+9rw=;
	h=To:Subject:From:Date:From;
	b=SXNa41YLejQHTIOLJJDyJxbT9m8JuSG3OoZs1Z1CPZgmwUiwvjzzpXfOgLeMbslyN
	 Jl4nVK4NOBsdsALJnAgO30ETZ43Nb6uZYMI/5GzattXwuibCn74Hq86dcS6P8ZeMx0
	 iKHIPxOhQzZ8L7oAcQPjE0kD5lJpodDh72iLIQ+DJd7o13eBZtZrOdQd5/oHhoqluK
	 Zwdop99dsKQAF1uHPVKhnozvfZhxeOcX0IV5x7abWPIKgVa72m4iEjvhQ92WRhw2y0
	 4/oaj4nQWklWV6iaepkw0Y5z5YwGYhgh9Cnzmb8gq33j+L6hhtvRWxBOICEHLIXAr2
	 btmrE6TdM7EYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 662BEC48BC4
	for <ddprobe@lists.linux.dev>; Mon, 19 Feb 2024 02:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170831149638.29111.7732242282281461862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b37ad94bdfbb507bcb3381d7a7cc4a5fee51b12157151f9ab28aa8b3020003bf
Date: Mon, 19 Feb 2024 02:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708311496
