Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 514BC1E4AF
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 17:32:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765733574; cv=none; b=PepuTCIGDH6EWl+gCkj9h6OA9jTdZEd/daHFlNOA45Gj4h5V//oJTdh9jMBHvM2vhaww6Cybf48z9BaHddQwjDdhv+tfrXiz7oMXbhPTF3lV5kYRGUND45mZkfhlAjYpBmpPj1tcgY4XSXT3gteEArz743lB9jyUWPDV5fkGz1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765733574; c=relaxed/simple;
	bh=Jua+pAoXFlerBFhhNuPO388EBKTXNHXqfQ7OCkBTuws=;
	h=To:Subject:From:Message-Id:Date; b=J2HhxAm4iS/0TQIbR5m1P/Auil53OkI2VZfClvoIjERyUEDnWHeBRm8ywJb8pJhlxOPEodrD+pWseMnMXQx0Ifoh+0uqyhkYvFY0U5wFgXNpJe/oUZXTkHszsfxRgEkWYM20DH+htszv3Boz0BxXiNubX4Bnr8BJXQGbZUNAVK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=robwJOMq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="robwJOMq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D98E1C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 17:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765733573;
	bh=Jua+pAoXFlerBFhhNuPO388EBKTXNHXqfQ7OCkBTuws=;
	h=To:Subject:From:Date:From;
	b=robwJOMqvBGj7Sb5G4myBjfdZlYmgZPpizOskNcJckw/GC8KkDLUlSmItUURpPksz
	 b3LJRX9QngM+qFTSQZs4G0icOqOCuIuSSUyX7gH7OmnZf619Dirwi2j+XOH3GTGcTN
	 AGAvBofcNok7C61eIs/Kl/5y0gr3gHAQ9hjo1qmQFiN/arM/u43jhBVXNsLC7cq5bw
	 l23qlE5bDExFavgcetiiDXPMKgwnJ+zLg131So4ohmQCDXal5sLsl0/Kr6wULL4Nga
	 FZlNQA/oD8WR+swcQ+W8pzJgGzI0pn/pYGxTssS9F991J5UIxjRQAZ+qzYerml4OE8
	 ZN1rc1ypIynoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0390D5B16C
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 17:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176573357363.9587.18047984618012106138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6b25198bfd36e1efff546479128aca1e552cdb1ec2a8ef94876b90f45a241b3
Date: Sun, 14 Dec 2025 17:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765733573
