Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25488EEC3
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751179794; cv=none; b=WiSfqHj3qPUJ6PXV0DI4wEauZKyVYyT4TWFJTsbpGGg2B0YTvSzhBQfYvewiYWqK2wW0wikLtUIi9APxvIiE3eaafOHAtIBaxbNwKRnW4OSn+otYF8p+0oIzmeAO+926st7zfI+O1UuvvAoJV+qTUqtH5THE24H1WRSO38psZnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751179794; c=relaxed/simple;
	bh=dpuNK06Cf8IK1Mre9yXU3TL7qsxwMrw5EGw6alrzfzw=;
	h=To:Subject:From:Message-Id:Date; b=ZbaXA2e3dK8NLp+JNauEpFePn6/LCv2QsGm/WBP9l4ih3mENg5z9xlvzqcHokRfV6/5B2+Gd7h/mDbvNAtVIe77HBeJnJqRZX/3j1UBl/nqnxvfYLTtqUh0Wa5VCRYqLo3xPdu+46ZSNY5hiEDeyLMl7dF4eKfP4vESyKiRDNjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MIDuy6Ep; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MIDuy6Ep"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F20EC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751179793;
	bh=dpuNK06Cf8IK1Mre9yXU3TL7qsxwMrw5EGw6alrzfzw=;
	h=To:Subject:From:Date:From;
	b=MIDuy6Epht9tqzDFnSBGCZglJTARsz8TVG+VJNKW+Wn58iixG3jDOg5/9wPvr1MDX
	 fS7HR+GKFMTtUHYhSORkixsA46B6hJ3a6E+yZdkWXXKk+5MKy9O0jIHabHxkqt8ZAP
	 BeSmeD1nKN4ugPv8OdHyOkgH7Lb1UwChxUfEIhew4nFKBXq0232l4kcPuRpdya6lnj
	 9HSpm1JPIUXmMERfHPF1dGWM/3FX0fBfpNu50l/giK9SpTxo9CZkT6Cq/Qf2NkVy/O
	 kWp0263Kma+J7l3EUSPnyVP/TJOVqFkLsTZuWJRwE1Fa7sEgfwZrhSN5VXTtbmPHDT
	 7VIfVoV61exuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E616C7EE30
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175117979357.31280.17270251550729036459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e540e6f3f4a95f82df7feb4b91b95280e6b0407e73a709fb61a6ebf9710b5963
Date: Sun, 29 Jun 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751179793
