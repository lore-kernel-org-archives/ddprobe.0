Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47CA237BE6E
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 19:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776020854; cv=none; b=TJsUeFeBdISTYQHB387YtiqG1X+Z+wZrkQZWkBu9WLFlQ2bY+Akcfbinedz3f3JlcyM4xxeB5dbny3FIuYRBp9DtHq5dzMSxh9rNQIrGB2Y2rPZ0E1zSuPhT6TLK+3CotJ+Gznh+seLGitSZxBqrAC4kMAB8Zm9VwPdInZgxFSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776020854; c=relaxed/simple;
	bh=IZ4ZeEyBCw0gmGPfIYi6XrL6t7GXiVJg85XqlAHlC0o=;
	h=To:Subject:From:Message-Id:Date; b=lw1pyYDsM/5fO1/qC1HfHuwzqteBF/Pawd3rItSaY1kdNk7A0N74mCg8TgmlA48gZsRYb4cJuquhziEAMj7aVb7i6q4y4g9QakINXSAzUyI7bp1bgv8w1k1YrWRAJW+NSAciEAZXarJvMmjZvN3HTwt+bmh+EePqdFvgW7B8LtM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G1OLeCow; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G1OLeCow"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0A1FC19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 19:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776020853;
	bh=IZ4ZeEyBCw0gmGPfIYi6XrL6t7GXiVJg85XqlAHlC0o=;
	h=To:Subject:From:Date:From;
	b=G1OLeCowYFV8UHoapsSC4t/WArWCipk38uRIG4zsNNAAij8HWO8mk6WPHVN12dJD/
	 EAz8uRSZekycdVLBTIauCA1fK/rXnv7wy4lup9A9MRHKkk8nZ9qR6G4rk9vvqzNFo8
	 G4kmC8Lv9jDOb9ygdPJTnMeK1gENBvtd8lKk6mmZk+WR+ILExKXI+vMN49nowWAPNK
	 dlFUgUNQOL3vira3j8Wc4lYCEwzS3OfHwdYkAwv90i5y+b91e39bVxwoVQn1vVOpPI
	 mcYaURZfMZqyKPT7svKDCV51wPqVDV3X9fyGw7lzH7Cv1ckmFH0dD/tiOLEKzjTwIy
	 DwcvOYFHu503w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACDAEE937FD
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 19:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177602085368.15113.10440640211581324692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bc938547354e18db68afbb8b7d58c07cc10eb28934d8b0dbfe86aa630b2f03f
Date: Sun, 12 Apr 2026 19:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776020853
