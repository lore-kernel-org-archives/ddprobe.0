Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FE5DB661
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 14:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736604354; cv=none; b=VAYjZa7YDgcXdIwv/m+NSwybEro9CvLsbGK4RCPQsYHmMxuUb+f9FpzZXf3r+5YcLTF/uvGqc1TpbMm/hSMxCrdlSoxrINoH/CikritDZQvSI5p2cuuzhcZvyfJsfeONQNhZzgUH2YJ7/TBGl5CObl+xRPnGgfKyLGJXinkRMr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736604354; c=relaxed/simple;
	bh=6bXwpslL4LgOJnQtGJ5PsSoEn88Gu9EW92PPOxZsVhQ=;
	h=To:Subject:From:Message-Id:Date; b=RTEIhLwl0o0HVnmSJ47I4Xm7Z9owVFOCk3d3UvthMWM2wrpr3BKmFUP6LR0SYhFHF/hIWj3ozOmz72GhUIqCnw+zEIAIuA+cB4Ij8iSg/8RbjHrAQDflbvShkTccLAFV4uYFxZygiFOPunxAgZsos1Bh2riQQoCGAWXJr6Qsaek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tyQEk+gb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tyQEk+gb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9737C4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 14:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736604353;
	bh=6bXwpslL4LgOJnQtGJ5PsSoEn88Gu9EW92PPOxZsVhQ=;
	h=To:Subject:From:Date:From;
	b=tyQEk+gb0/4d6/UvX99skkYqbq9sD9j3/GbAHfqY63iDAyK+Yy8QGmY/UZlbuRtbh
	 22MPeTRWEbawTFGZ/KbZvFqsmV9KnOUu+xprmAfW8FIdw7YX6uwiiam2LdLojQTL/r
	 MO7Q7UgPmCb8haOQYvn7s8kbVrVfG4X4BpfiNiuidj9CBvB2kUr9Xtr2f1EsmbUpmv
	 U5YM0angw+vNyHcdEyBqCEn/cKG9dgveKn5EairTisHxjfqWHCNIX4EPzt7Rnsg8FF
	 Y0NufBnIrpZ00ia7Q7FhKeStwB4ae37e4hZrvRXdaMwUN6tFAydy6RmfzPeDlq8fuf
	 GwwEVplG3LCtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F88E7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 14:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173660435360.25500.6314405472681715628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac1e2900dd9d2c85c258932752e5725c60643e03bce650d95eb1683ac923c3db
Date: Sat, 11 Jan 2025 14:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736604353
