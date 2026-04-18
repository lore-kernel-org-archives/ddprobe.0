Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 285AE327C0D
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 08:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776500854; cv=none; b=bIrvqW0zUefe8k8ljkNJGxdGSqoIO+lBWmAzTMtAKVdTMi9rXM15btjPux8FV38LcrdEn8l30lFyYqcA3f9Ib27cAzevfqyTZMrp78e76zwH8c8QHUuBvtnc24j/hcjEYFTHEnnqE+04QupxHX69rrL4JPCQGhBYXlkHUgpD0GE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776500854; c=relaxed/simple;
	bh=mj7atGcULe4jvxMm731FtLuuRDeSGxvQM1kIfyibaj8=;
	h=To:Subject:From:Message-Id:Date; b=HHjL8H1mY3hqkMbort/s8qdVDkJCKsc6bq/NaKwc7cpjvK3uJvb2SvgszSpzvhm0RuNMQW+0CLeOe9w+jJYY0dZFnL7ohWt3nwihUKxovqOpb3GEhvVKpJPzOGk3Hm5vDWqm06l0vSdzgKqdkp4oibcOLHCjA+UxYcaM8C8RCR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f668O4WP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f668O4WP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCD8FC19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 08:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776500853;
	bh=mj7atGcULe4jvxMm731FtLuuRDeSGxvQM1kIfyibaj8=;
	h=To:Subject:From:Date:From;
	b=f668O4WPgpiO9uh8x0VV/tr/cWkZa3Kyzh41vYqUp43utzaS2eseSSDHCGj9yRsYo
	 OHNlfX3u+3JWIgNBNbpJZqOTH7ieacoovtTkWKiywQgeGqVI8p0iVVTQMv4DRTJM7U
	 nGzKIE5y9LP5H43+AGCZPxmDGXiL4YtBmupqxDk7K0ZCQPlcm1sZ+isMpTqTfQP47i
	 axLOl0F0latP3McPQHqoo3YlM1u+GrF/88uEApnf3OnJ7iKjdMjlSHc31Kh+5kIPaR
	 DF1YORxCfKPWvZthzEz3AQdJQsZnzOsW+/hVuPrB6qDT3334JE5N1SwRJ4vZsnPTVC
	 L808q13uQ0AHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA0AF99C7C
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 08:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177650085368.31521.6970958899626316727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e30a7fbfe4767aa4621220e6dca74892c8801f32d01c348601a68d86a3cfde9a
Date: Sat, 18 Apr 2026 08:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776500853
