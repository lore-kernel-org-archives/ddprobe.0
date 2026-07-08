Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F6E01E98EF
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 00:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783471114; cv=none; b=FaS5n8CxEvOU+mNe3zPDh1Ung9bCEvO9LHovimPTa1XuTQhv5EQNrxe6MkAkamBWMAt7N+69tKlzA5XINTvD22GdBoMFVYdP4OZL3zq7y3aZc38rtPGD989kJcqI12kPZHehHxZjrOQ7XU2C8K+TQAn6XhjHLywzk/jDlxpAEzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783471114; c=relaxed/simple;
	bh=DZNMPaMDJEklxJoUMe9+C4OpYfJaSHY1umnxiYVWOk0=;
	h=To:Subject:From:Message-Id:Date; b=phZu6V1ATLY2/olJN3iaZeZVXUYTgrn3oe00TPieT9h4AdLrJf9nlyEc3xxax4QlsUPdy3caF7ZyQgcyFcarl9bsJTlzPYe6m2pSMaanj9wC4AkDR42KZQrFl84jMQ7tIaehWjurFraNqW6Q2QRhu3Wm3hTcsh1yLMcxP3OdApc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F3UD4ZBj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F3UD4ZBj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA3DDC2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 00:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783471113;
	bh=DZNMPaMDJEklxJoUMe9+C4OpYfJaSHY1umnxiYVWOk0=;
	h=To:Subject:From:Date:From;
	b=F3UD4ZBjj1SHpufGmhBnQPMOUcIE4+zBsEgBk/Vq9VvuylMUztVn1pRXlmiJc3SmZ
	 cN5RQOuyT805TWKg0AUVhsnno2Me05wq2mu22BtgTounTwS7008n4giN2iQeAC3hm6
	 bUx/1cSghNzHRP2kDKY0M5jGP93HH/jIFWitPMikWwUrRHb+0iYpLDamLN5QIJC1v2
	 2ZVfuGz9sLDBoEPVoEEywasv1gyxNfecQRmqL8Cx1PZ4EqABarh06RQ2JB0xsc5A5e
	 Getp1LQR4b3Aj2EjcPBtZoG9fdN7K5WFZOesJxVQLJk2VI4l6t5QwwsLEuTtDG0zoF
	 gX1CAfXjY3YMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A824AC43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 00:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178347111368.9928.12760839508035112519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7e2787a9f4b7fb1aecef43199dd1dcbe130cf999ecf9e7ab2794bb614191319
Date: Wed, 08 Jul 2026 00:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783471113
