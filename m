Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6516F17D6
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 00:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784419714; cv=none; b=awi7lsmz82P+I272N6jU5CTAGFdMe/lIzOfbp78J5+M9Y1YRzuXs4g/2U1mNdxzhOuMPfQQdnubx6FZtt96LBE5BlMAg3Q6cYItidLouc7ajMms3+G6wB7+LdV6v+QmWLvQrBAmwjIg9SgrzpBK5YyUMFhbMQij15oAU08JX7ZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784419714; c=relaxed/simple;
	bh=QxbL6htJ+9dB4ocoO+gMXRuyWwr9uYnHUCkKqWwg3xg=;
	h=To:Subject:From:Message-Id:Date; b=X97PUeO+0yCDpgQX8tfUifUhDykByXaV7blDNzpSjBYcPDWtwzJUMS6llV1wNQSqaKtN7ixmuQwCMxUF1jjSinIQme4FXCBUPFrpyIVOgMqtlDd5ydR8DhFDLtWpoMXcFvywTHpVI2cqzvy9T458wwCMqZIT+wmdffQNLx70o6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IqwMKXY7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IqwMKXY7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D624FC2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 00:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784419713;
	bh=QxbL6htJ+9dB4ocoO+gMXRuyWwr9uYnHUCkKqWwg3xg=;
	h=To:Subject:From:Date:From;
	b=IqwMKXY7xKPp55ehUAyrgyz0c8yqoyiNYSjDgVawQEjLDYrC4jixnmQAB213CiAhz
	 pjwvgq8cYM6BzL7xWHIeDOHd7DffaV5Y6C+o9+R6Vkrc3JZtUzmf8L93wUsoRrGNHG
	 ef+NnAcuLzsyGb0dcouFmIPj/s3wnPq34dZCPizbZDp9eKXflyAppyAH6K4WnjPvkg
	 nII6yrvqvbuHqgt/kcqJyLe6Z2IZuny67XRyxoTZQAchpqSvHcak4lFsCxYCy5DWsk
	 nJTbWN9JUQ/X+F+NJmY9vLCVRbZlQQL/k6vtvuoJTVxWB+3u1hVbD7PQXdD30cbmIF
	 TAPAqNfGQkS4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF5AC44521
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 00:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178441971368.1674.3559959474693066161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed0d4f059ef4d7cf6a3f1e27c757a92d88281906776b5d0c628926e17f542c1d
Date: Sun, 19 Jul 2026 00:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784419713
