Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 479A331F9AC
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 05:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782279994; cv=none; b=ZjlsUaoUrxcsNvR85p+glxNZZMO8Z7mqa9bLtSVIJg7DG91kTO0oyRw+fcI+tsOzHy1w1RfyCrrLsVBj20nHQ0cVRbDXMbkPz+60CQMU+XCWxTgmS2NNryUm2ZbFQSs23Ljza2UiLZamy0fY+wLBT7UilJt1/iY1Gx6mEbsvdUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782279994; c=relaxed/simple;
	bh=rfbBy1z15729J5fAxmGWXDLeAy0uc+0jp+wH3dhbcUM=;
	h=To:Subject:From:Message-Id:Date; b=Hg9Ml0iUqgIFUlSaCTPspWQVNN8lRsJ31551vSg3JOxQqb1LLxQKI8QZRWbOuwiHYCWxC7Dh4YbtXnDL+uSXcsfZkoZn/s+ZKmNNNYa36RNohL3HyzJ27Z/oO5Kn4ZUHPr3ypo0HoOq63NYOunpIaNUaTKpNMk8yy14kvxKvg6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WSemV02d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WSemV02d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2E6BC2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 05:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782279993;
	bh=rfbBy1z15729J5fAxmGWXDLeAy0uc+0jp+wH3dhbcUM=;
	h=To:Subject:From:Date:From;
	b=WSemV02dI6VaF79ojUkJhF9R0C2T5TYk1dFmzZ53h3jbA0hHJErWQf3C5BG2Stijr
	 2VvI9xIMzbVRl5ckjnj0Mib+MNbLu13zmk3PyELkvkZORRSUmqVyxeO1F0KyVkmUrK
	 WOT3XKEuM2kx3pglTpmnxHx6tvfQdLa3QqVa6G3WPLeNtoXPsTvfjvFl8ruiFnJQUb
	 Xo3MRZuE3+0nsPvWvU6DEhZ8Nfonr/3zjyh1Tz8XS8btL2/mIi4hcxf8zrZ/1tACLr
	 MqDGN7AuL4n+cYXvxAmG5U7VylsKnOPgQ4E6Rt5Mqao3wH0NqRLbv3DE5XujJ/OsPS
	 sEHmNuBgQCHlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE742CDB470
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 05:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178227999370.30401.12914765082919656921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4ac835cfb6f9b7fe744e2d7ab0b4fde374ae9e32419445bc0c10d7c8598b6a7
Date: Wed, 24 Jun 2026 05:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782279993
