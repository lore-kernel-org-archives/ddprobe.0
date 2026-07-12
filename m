Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D9F131B833
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 15:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783870114; cv=none; b=FxF7r+vL4Y9/mzpe5010FJwm7WriNue6R8CLR1GyK5FAaWGMCUigIGVV2Pm0EdQAxKyO1dd31x+lnFWhcwZkeiFSjdRsozrid340J6dVw6tEDDPQUhNvTaw9wJI52LNDuJG1yuw9m9fZgJfBu2PovW/D9wOjnHn/5QWsqEMj/1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783870114; c=relaxed/simple;
	bh=y1u1QTBQbFIeMfPq8a4mTDU089TOGpXod/C7Ik2EuOc=;
	h=To:Subject:From:Message-Id:Date; b=rx5Us38cxVFBEWoVP9LTnxyEchDAbwJHcKpj19ByWkQd6+wzZ5x9KnvQA/N6PkWX9HIU84IV3n/5pkcCk0DJIYs19segdVzjDncX27Y2EJFZq5FuaRjb0ZjMGupvN6XjieI9wKoJyMDBkkujGoxBAf1A89AYbuEDss9sXIN/rLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ogElOQ7K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ogElOQ7K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC796C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 15:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783870113;
	bh=y1u1QTBQbFIeMfPq8a4mTDU089TOGpXod/C7Ik2EuOc=;
	h=To:Subject:From:Date:From;
	b=ogElOQ7KIawtbDxxPCbWHoMPB5ZbhBAkukvzlRLqfXjBNJq8jh64xij4ktvbEK+Ej
	 iTx5mQxKWSeLrhvvuLKd+bDsF6/DGiWFHRjRwlFHMLZEst1fy8p1oMnMZ7Lx8C6cFw
	 4qdj79h+aMfBE+C/iG6Rym8FxNhYr9+Ki1WQSFfHKd5NS4E0EeIQ9BUWP5SEdoFxcM
	 EGlliN/MWdzjqVHZi2AgaczJ9zj9XDhCkPRbZEJxZMzhIG6CAILzfbZSVL5PgxVzT+
	 FRGb7yWuSdbosqP5xQhzqLAyI2E6nhifAKMpJ8P7JP7hLr5+pa62cXz1LTodu9r/g3
	 n499319z72ydQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A868AC43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 15:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178387011368.12207.13092341532065217709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ea0de1018763e2af4f14a4841e24c2cedc902a9d8b7dea0a7cf010aa74f0012
Date: Sun, 12 Jul 2026 15:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783870113
