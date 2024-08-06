Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C1201C32
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 05:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722921355; cv=none; b=psuLPX4SwgtLlYNUr5rkWbsPQtNl1jIa/q2p4Z7xVndJXZO4UkOzQzw5mL69DP2X/aQxFiRt5jQObGReER406dM8oaR9vVmzMjfms3ulbaGqgzZqctNa9JTeSH+BlonLmFiLZti5ReS8eE3YWDnZngrYgruDVTZlusmdAipuujk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722921355; c=relaxed/simple;
	bh=EVRjvWXtIE6Nl9rAIzEx3yyEE3Bv9Vzg4RFOjByFS8I=;
	h=To:Subject:From:Message-Id:Date; b=WkN7f58DFXtvJlqf7dC11tGkQ4yaLbQchPk0B/SqyhmI4MhGBW79pcMUjNFura4ycsMkIX620ozRnaAzXBqoFzhVfKWH2OQSqcIBNX5DkCl5pwEYdkDPuVyrkO98vBZvI6nJRF7sON8UIMUFhxo6suA4WEdYLN3xPNHul7v/N1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E7txdC3n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E7txdC3n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF203C32786
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 05:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722921354;
	bh=EVRjvWXtIE6Nl9rAIzEx3yyEE3Bv9Vzg4RFOjByFS8I=;
	h=To:Subject:From:Date:From;
	b=E7txdC3nyD76CqJFLWM6ZoldWygFdBStEyt7tnmWNmJBbn2HAg5ac4ouAbRnPNVGr
	 y9ikxBO7gzVznFjd3aBRhK/cnjSBJJKI7qgvEi2EHWYAmW7ysuZpebTZRIn2NDHQnC
	 QmqdAFThhgh7sp4fwhkAacykovkxX4PbUXmAEuh/KBTtdAgiN60Yk+e3se8J2yfSfj
	 6M0GPlHoXVl8JK+GbpLEmbSACRX/Ice14qRaoKg+4yNZJ/UUGhYwp6BdYnY5ERMgvO
	 beqoIqbQyuOYVpZh6BdefbL9WWaH6cyk6s8QyKBfhrzpi0i+HeNazP9Nps44yjDWCh
	 jP7amcrrD65iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9542FC3DA64
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 05:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172292135359.4236.13044044589071442987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 837a34467df7bd8e145be33490100e7ba282a1143a2657e983cbadd4b96c7a23
Date: Tue, 06 Aug 2024 05:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722921353
