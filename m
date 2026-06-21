Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50E4D371878
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 22:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782079594; cv=none; b=GSegtPTrH3mF8wqx+Tm7mSGiNH/r1MpFYEQKe0iWKRDAka2h46kDsp1Rd5ZM6p0op7Db2aL+43euaZS0cLB42fqZKiXXZZUlF2238BNpFDmfDQQV9JQYxkux0NUQ7qXsY1g+XxyTKqjwq8ebntcIidZv+l++rnNYoYz/NLJG2Es=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782079594; c=relaxed/simple;
	bh=+vQSrBIqKDBuhn6DhzSpNlcfhHKN871+0wQgPv+PcRw=;
	h=To:Subject:From:Message-Id:Date; b=hu6+eYHni8FPFn425bX2W/uhjh43lLerTk5/uXdxLhHBFCXM7jmlsh+H4ahZKBf34zMw1loeQIuaf4Mw6mXdg9Y8Cia9cmdlDZuEWA8XvsAnlPM34hRu+aZ0Ro1uJGH4tDQr/sNF/vgqYxYKmGfbnKnaanfKyeY0q1NfHG5n9dA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P8vAphR7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P8vAphR7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E88CDC2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 22:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782079593;
	bh=+vQSrBIqKDBuhn6DhzSpNlcfhHKN871+0wQgPv+PcRw=;
	h=To:Subject:From:Date:From;
	b=P8vAphR7PWeRgiI8wm8nuMEJ4e6AYJpLP9CHAdVKZ+a3MPFEV4mN27G7sTTV75dSt
	 HEhUSK7ZrzvMhgG5OQLYsGzo2cbXvrURWYNIY6bQcKCCHRYkqnOH+pwDzXnnIDn/9p
	 ekcBArsV2FI5Ci+9l5T4B4jXU41j5m2cXZK+ZooM6gH3UwGy7hqQhmh5jfJtpBxHqN
	 G0VanQqo+BMmz3ml4iKkPFN2RFYGV6+z+dbSYAONS/Yyl1XPs3aVCPIpGRomzP1B00
	 p9DcbZad6kWUrrOa9gmDkdfs83LUsQEPOhRh+7a83/IxeJ+uLLITJ7IHmp8MYXoTGV
	 cTTSng9KmYhJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7CF9CD98F2
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 22:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178207959373.22960.6260031329329315190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a30d0b1d4896b65fca441601b702715ec40aa974cfb6cf9242b70197b4148c3c
Date: Sun, 21 Jun 2026 22:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782079593
