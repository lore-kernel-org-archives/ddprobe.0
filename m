Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 571915381A
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 18:06:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720375584; cv=none; b=aUzRfMVir7rtSyxC3+ADS1taH/AIEbfWMI41BjuJjYcP7b+FR8Phj/cMsYKpecmwMQNVzNlzWXJVXnycR6lD9SGVqV9Yvmssnw+czSpw9ppUgzuHN+HxHIv5Ik8oFT4Su0N38EUiWH/aJnCq2OVBnPO5fE8RgaMuJ9AG04cFNlk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720375584; c=relaxed/simple;
	bh=eJe7dTtPD4vICV6r1v3RXEt4SOeIwVe9pu4fBZZWrCM=;
	h=To:Subject:From:Message-Id:Date; b=bhqQpHJ1V/umWb0gR9x2HLyp3C0XobwvLzXZLI9Ppr82DjXUo06LwhgQj+0cB4hIJmUghVHvEbn5mipaC/aseJJ96G4I9Kb1i1n16PDzraqbgU8cFN0I8L8NnyYfzYSvTlarvicuvf4/swjsQ4JtAetIJeF3ngPTdQ0NxbmjOCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G9mcdWHv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G9mcdWHv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E40BAC3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 18:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720375583;
	bh=eJe7dTtPD4vICV6r1v3RXEt4SOeIwVe9pu4fBZZWrCM=;
	h=To:Subject:From:Date:From;
	b=G9mcdWHvOMupY5a/82tevasrYagaRUWmaQmTt3TjiWW261xNTFaTYiQju46bCOmu6
	 yIGRTWcgDNbaRmF7PYjffzUDdO74DVgz/0s7+nsTkdalDlZJb3VSwOKoDnYX3Kymua
	 KIIt74Orhp2yMPcsWQP4nGKllOi7Gn4t+IjoJ9kXB6jXfi3s/C3l8CPpXVbteMRUi3
	 LnbwBpswkpR7FPDmIHg/QCl+0h9z8hfv2i/wzE88uF66iJCYP5/nj354uLbBZsZew6
	 cGjOG5gsABXk1OSY6TELOPAfHU1zWKudB6jdJlE8GUrBb5D10a0uqIHXCalU0w5FxM
	 amz0QT+gf8eUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC687C3DA41
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 18:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172037558278.14946.7032127680983180057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2b8a1bf5caabd66875659b4afd70c869f1696996c40238e6e4c670c09466c39
Date: Sun, 07 Jul 2024 18:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720375582
