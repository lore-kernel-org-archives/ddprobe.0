Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E8AD2E62A3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743904194; cv=none; b=j58RoN7e6rFpi5dHbL3I1yHscHaKLi28QWD7KlQCtPDMiIeJl1C8KUBKRhtn66CTzb5zyvHLCRVAI+sKMt7yzOCv+l4P5wCBKgK2RJZur2JPZuob5qHPSSoVpIZ37LzrNhbAuWG5LGFiQXTh2CBk+9LLaSPM4irgpAz0AhVwLMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743904194; c=relaxed/simple;
	bh=vx80nY3kQg1OHx0LTqLD61/kK0dE7MUnr8TzoG8vW8I=;
	h=To:Subject:From:Message-Id:Date; b=MEPuN/zuVqtw0sJ1A0Dl1JKvsU+bPaLeO1y9xOjmvEFlQzxhGQUBUOFptusTedjVNUmVg3VhOoywVz0wgaO1WJws1uRFvVPMVwB79jquwE+bOyValmXxUl60Mhv4vqsUgMeO4ONHKM7WYKkC4xhkYGZ3x8padUJlW127jPiPAz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tuhkXegU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tuhkXegU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD1DCC4CEE4
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743904193;
	bh=vx80nY3kQg1OHx0LTqLD61/kK0dE7MUnr8TzoG8vW8I=;
	h=To:Subject:From:Date:From;
	b=tuhkXegUKEhUzD/Lr6pwyD/1/xjlxK7L55J/IfuLB/7tcwkKItI4BBHJZsUgtmyBf
	 1lu7T8kBFq/J3rHd4YY8qLSyU9RBXvjGYrxySqDzTMkI9PBVQ8N6RzfpmzZdN/Kh2J
	 Ib8jzb7SjUkUEeQPqJD6GLctaYUDiWHJ2zqNwDh+/KW6zXtSopzGmSuzcZMvpVYmez
	 +PlBHcYFo1mroFiZ72XO+tyHw60vQQ+a0rAmEQ0x4tFxsmM4Dy2sG4dVv4NyFYPT5W
	 CGfRkVwdHgJ7aqavCkr6bYkUhKE5r9xaSbWG7j+dYIm4RVY5ZTVk66apwAN5KZ2HoR
	 WXjMFRsx1Y/kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97AE0C3601A
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174390419359.27878.15441471560106439980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8b6cc62ed033ecffbf74663301d4fb9ce5cd1fdf192cdfae918a0e506dafc54
Date: Sun, 06 Apr 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743904193
