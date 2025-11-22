Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1068336D4E6
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 08:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763800314; cv=none; b=HW8zyqZtPGcq80plk9V3WZ19Ilegdw+4f88xsggjdRr/FCHNAppLj/NUWiocUayBoquMx+28YF97vk/znV4FwtxnhyXD7eViXUwS6N2q2k643d67bLoXWqIVJZZR7j+I2wXyZmrdAxmuH0SVRxW7DN8roEvG8JFI4PciF4GxiHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763800314; c=relaxed/simple;
	bh=bs6nq1/dCOqP4/sQuXNaOtrJ2PGrRjaY5jyGPT2roBM=;
	h=To:Subject:From:Message-Id:Date; b=bI1aDjLeEJiARHTOWdnESbm/ZW3Jxp5SMRgpTTe3KesJnaKIrDJKG/MTve2IlBwgUQpAsfkT2pqSgLurSh5S/2V7nA5/Tb/GzX8Xiz20jRgo5t6n8rB5gUpaZmx/X477Z7r8U2hw/CZkJiTUe4QBWjOd5CSWXxBief+J1G7oGcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mMBDJq4L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mMBDJq4L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C1BC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 08:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763800313;
	bh=bs6nq1/dCOqP4/sQuXNaOtrJ2PGrRjaY5jyGPT2roBM=;
	h=To:Subject:From:Date:From;
	b=mMBDJq4L72u3O2jU6rx2ODgzjJUV4intBu4+CCVQgbPcGQUWlUxC3CLJbznmxuwGl
	 Ekzr7o9kJ0/R3XI2sM9XRQ2Yxn2UpNjtgooYsZQxolt1eZw3unXXq5oxdLuLPvQsMF
	 7sp1X1l+mkiU02YmEgsSPvLeiaOHX8RKuzc/SfexqZT9jXID3bRIjx8cfsk5/auj+B
	 QLUY2SGC2KESJFqOOvj/Grf2SqrD9AtOTQ8N7wyvMHhknVc7zZ0WodVgeElFmc8kLR
	 dEcSMwmRSL2alKxqsbVZ3AzUz3MIPj6QwyY7hrI8dfl71wDD84/XeZY7Oo8USywi0R
	 kXig2qZA64agw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94027CF64B1
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 08:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176380031358.2310.6700577635117602708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0905266309aa1b790d7ef9719c6e66a2bcb9c87c13f4402d4799d08e266f0abc
Date: Sat, 22 Nov 2025 08:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763800313
