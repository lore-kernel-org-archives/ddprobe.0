Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4155C23E320
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 02:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781749594; cv=none; b=MU0gCu4dqd4sKpiPc8ngD5IelC751jcvPxVzUY2h6ulVNU05ghqBavT2CT3YtSc6lQ7+IsXc3kEE/bHh1dkJxXvYOT0PK6fFy3AoYr8nAqLKibiZUbfTeucA5ZLEndG0LJPxyh9+a819OEAlrOgZ8lcQEH0TR3F4zwNYQfPjeyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781749594; c=relaxed/simple;
	bh=Jnvju8igub90zQzF0PDnB2E8AP3oYeJ40/qsHMXhZls=;
	h=To:Subject:From:Message-Id:Date; b=Q8Cd7csogP7h0+yQ+/poFCplHfywvUDh8SbB72IhbCowQpq7OdLDOsjGiNirfJRC2EKvQJWDFHN6XhV5RYLTQDUlvlxG8Mi552mHV+2JdWK0pIixrIwvUmo8igTUOKkHx3EW3RhMK0K22xws1VxGP38i2wJ/7h9c82hqKZ4/f9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ofxmQ/PT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ofxmQ/PT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE079C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 02:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781749593;
	bh=Jnvju8igub90zQzF0PDnB2E8AP3oYeJ40/qsHMXhZls=;
	h=To:Subject:From:Date:From;
	b=ofxmQ/PT8G6HHYqGNTHjo9rushqQbgs69SBC/emdNim58m0PPQe8VvwmT1mHsQSQK
	 ooiQfVcZ6uHeWCB2k/BaK8yCHzfpWZAVmhH0oie+B/QWBOCcIe4TYfyeUh0alItlnJ
	 nWlj3TOt+gr9qwVX/kJ7G+KL8lM/W8/nlVjL3emlfqISCjmQTk6N1ydu2aD3Y+Jqxm
	 YXH0sq5ktriGxAhYEkOPyxz1ul7AqHFm8kqyZn6vJKHPPwbVB7Ui7JQ+79VMbqonJU
	 x2FiQkjHQO8745Hu8dbyvDyVwRTi0xhWSdJ7wrigiWWwEFUqcBUtHt8I/v6/Kgvwfx
	 Y32xq0/P32bHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEC06CD98E4
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 02:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178174959369.6336.2802627645611314222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8f0115bba909ab43beeb733cf8b7c14fd6a32b7f5a1a11347108df2bad47526
Date: Thu, 18 Jun 2026 02:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781749593
