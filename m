Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C15C2F1FC7
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 21:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784497114; cv=none; b=eBAPfdRUC474gle7aahYmV4nOHKfic3W1lkmZiRZcZ7zTjpsz2CVfIgThZOLQwMnpHN/+eJmruMyTdDsFn4ymvRwzpdpMJt2Fr7G1JcUzxSVRrgASxzi2omNdFz/uxNMqZEDCkT06WzEolAGBRQBCz4l3kdXOU5gJ4p7oWa9iF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784497114; c=relaxed/simple;
	bh=qGMEhv/6pJXo+Uu9kM8bMU2Mu+RpgXopfIdSFYkxHNs=;
	h=To:Subject:From:Message-Id:Date; b=IUTO9AFsL01Ss9yAaBVL4wG7D0dRgGfuq06xtvI3IhTcj9NBSQBvfqQl7J2FxGYRZeZgiuAJUMYMbk1hgbF4PrZC8fjkb1UYpdCb0XjDC037oMii1HZ93CWuR3M5dfL81N+TUyDRzSnPN7oxJrtU0K+g04849gCItSQsZQXrTQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HxfaZ6/A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HxfaZ6/A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D12D3C19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 21:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784497113;
	bh=qGMEhv/6pJXo+Uu9kM8bMU2Mu+RpgXopfIdSFYkxHNs=;
	h=To:Subject:From:Date:From;
	b=HxfaZ6/AaMxR400vkb0x2Z0hyWM0vtGHXOac7saWiv8nBbNAOlbacc7DVFbOYKWYZ
	 GAKc/SnJT1gAFtUypGEdL1saR4y/s74qq0L3EJbDxYpl6ZfaQ6fLfe8NmiCi6B/umr
	 IKPFJ9nRtsaYihv8YcKelyanbO9c4tO5Vy9cxxIicnKI6R2RhARG3nHjVTzszQQ4X6
	 lWUZB+5aj5zdF94BEiJKsykmdjr7zfHFLFOjELOgYn6Yfyz+po+Mn92yY+0kEJNm7q
	 FipFEmNxEXtgcY/mhrN268Tf4n08Z0gz0lhfNUy2UecBEcZ39PhePWljBVvPzL72aU
	 tTXYfiswqmCtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB699C4450A
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 21:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178449711368.9360.14998915604260675817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bed49e9a48039059fbcd0012b37f8dec28c082c5b57f4010ad401a06b31ea52
Date: Sun, 19 Jul 2026 21:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784497113
