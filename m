Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25E7778F39
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751182194; cv=none; b=DGrqT+GPaJsvjz38HlkGRfVkAEMJQYIfJ/YpLABNgwVrSnO0eucV4f8oUIx421Ob9EafVYNnNQM57PjRyxjLuxGB8lKCE0KFNWUU/qnwyPFNZX9zaQZAyiFvvlDj2N0DowU007k12qUF+RfzDZzoQwZes/Lo4N0dyqpxjJztIwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751182194; c=relaxed/simple;
	bh=boKMp3hoI6ZZVlZ4MAxjHgGNVt6hO5gnBENIOjDgJz4=;
	h=To:Subject:From:Message-Id:Date; b=cNFN7JzqRbZjDaqYZCosJtCSMhGb0dLOJidNMqyRbtY5TWfvimCF/RnpZYfd3RsSf5WnlSziKAe3yRXG1U9JSY1z86y2hJRYAfRN6vcRSCgsKwehJU4LDihp78pGvm0LPKZEGmrHwVrpYfJuIaa6XcVodv2SP9dp+GMM6I+LZVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nzcJyVPM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nzcJyVPM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33ADC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751182193;
	bh=boKMp3hoI6ZZVlZ4MAxjHgGNVt6hO5gnBENIOjDgJz4=;
	h=To:Subject:From:Date:From;
	b=nzcJyVPMtop7/8okQcdBP3YhX96bYdwVRl0hkM48GnhAiaLnh7LZLR/t58XoMtwoj
	 gbAESgTEs8oijcFGwN5evA5q/4NEaFMgqEupaesOjJ0uWg1jTpmqsWWdC8otSxsILQ
	 GQYr+GF4I29egce9VNZbjKg/gEz/rNFsPKkpz6ia+duoVYenGNIBjTcf3lB0VUaYG/
	 AwDHsw6J+Dd4x/unIwg+6eEHzD7/yyXHFEFqwbKSjqWXFbUXyoEx8VIA4DqvAjxjuE
	 XsH2nQfHNv/YDITfreNhJsN6MqzUYmpVXyazkE0/9cVbkX27Xo8UOT+6EAgLvtgdzz
	 vbTE+CIKVY1IA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D73C7EE30
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175118219357.3873.5749478941292096231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d56cb1ef9b0754e7ec09dec821ed529eedfb274e5bd761b55615c4e225d7e95b
Date: Sun, 29 Jun 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751182193
