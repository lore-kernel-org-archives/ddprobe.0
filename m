Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69F9A181
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 00:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720313183; cv=none; b=WKYOjd7WHUEKRu4vx0oEz3KqbFUdrfdaRVgJWWpVBa0raEwEpR/U4I14rSJu0A/pa6zb2cGcRVb8tTbLkFdLg5KfLpvrxeFayhO5OFjWQ72oNes5WumsR0FElotDiyEpKohFAIGbD0Zht7+eqzjiFL7qagveYAcfHwc4bdGx7a8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720313183; c=relaxed/simple;
	bh=2yqyhT00x/tu285UTmWJR4gpMMo4BWoD/BLuVdtDhTY=;
	h=To:Subject:From:Message-Id:Date; b=FreLxbvD6tqPSHS13UR0j3TfD2zFAACHaWT8yGUFCME006bAJ+Omh0hCjuT+6dgiJAcqXcmLNRb2ff3sDn8r57e4weWBobDysag91wSP4zrLGuH/BElJTdGos/yOQzsSNKtVzeygPoDw2EzbT9Vfpjt5ZRq+GqWRHchMrjnXvzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QPrp4xOC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QPrp4xOC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9F13C2BD10
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 00:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720313182;
	bh=2yqyhT00x/tu285UTmWJR4gpMMo4BWoD/BLuVdtDhTY=;
	h=To:Subject:From:Date:From;
	b=QPrp4xOCihlyClZL+a2E+cud9uqAd8cYqXFhjtfRkgG5OA7JLE9NEf9ou5AZqrjtp
	 MXeX4Ks2wK+Kqi9W8uh8uHpA9JQiRnEKE9iP8FgF3UQ7JW37Er08LppbQo+soE4A09
	 0NrO+Xof4/TtewrbMzzR5yY1ugrBy7+BxOb7dYTOMVyrCRgCLDNs8q+QK1If7hAMpE
	 EON42cZjSGkVHUM9Y/wELwsCxgqiyYmefLNrxttbn8SVUDLUkLiZP1lXY6Ydr79n6v
	 842IJWsQCnmhKoyKzTlNWTYJUP1rFArFatGaX1hvEhq2diXKdXf9tK1jzr7GlDqIR+
	 gK6BvqvybKa0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C47E4C2BD09
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 00:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172031318276.10410.302261312620063800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4fc7215ee7dfe577a8aaffc08eb7068ddbca67fb190e521bb01f63b0ec30d53
Date: Sun, 07 Jul 2024 00:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720313182
