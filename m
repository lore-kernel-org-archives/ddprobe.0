Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 677C2208994
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755656995; cv=none; b=l0g4UkN3d5Pa3QK3RjSUin9FSk8NsVqrJ2XoORFR+jgjI6CwmCSl5sJF4DmAf96NVJhpGjCnztUwasPsuea46d2m2GLOn9nNxoCaCaMfcP88KattkE259QrXIKm17l6b27SEVzsKNkxw4+Rz9IyIiaA0TobzvZ56QeWc4+uDJ20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755656995; c=relaxed/simple;
	bh=8XXcsXEvsa8Oaz1sjxFmzFEDHpt6ose/YrcA9pNqifg=;
	h=To:Subject:From:Message-Id:Date; b=UmmwkhoDYMQ+QwcgzjTnBO3eiMQCM9sFDq7tJbuDEi/bQd47QLtkTMGA7xiZSa2NMrxCXsATi6I928rHliU7Kc5qvkokYrYAo8g/G/wLzkItYqTK6oBihXcX6Oa0gFXhU3aARif9+aZ3y0YU4tXZ0Z7veznkuXkQeEL8vcelgSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=evrOpbon; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="evrOpbon"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D93C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755656993;
	bh=8XXcsXEvsa8Oaz1sjxFmzFEDHpt6ose/YrcA9pNqifg=;
	h=To:Subject:From:Date:From;
	b=evrOpbonYBQRig0Q3jpdXgBsSX6jxaAMiuPcw9F0dNBOLHbAgRGhaefW5DJYugnVJ
	 UI5nElX1rkn8v1fL4hZlv/RBSst1n78i5hqpprgAlu0N7K/SAt5FQxC60XXye6M1JJ
	 OVJL1FmkulXBnFz2P/FGecwFlLljaVy7eTxaVFqRQp6lrUYT6mEnveuDT7K0X8ATtT
	 qFQD1+utZNY6NBSYctEimEV0AwD7Qn0t3Jtbe+nhdnuQOt92Zb0LWdFSxEuZBgWL09
	 VdFa1+X100flpqus/G2Ti9GBXnyfbgqEs90izsB+OGuh1pyywrIDODouIuwHORpugf
	 DnIyNrSRjFeGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CD7CA0EEB
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175565699358.16076.7015610289986136256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39e78df4db336897aa4c0a9a4b4aafb3e9c4afb5687ca9fdbef8841c8d44fc69
Date: Wed, 20 Aug 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755656993
