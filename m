Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 581676D1B9
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 07:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718696363; cv=none; b=o9mGDV/bu67zVz/bbxaFRz/bxoBNg4S4tCheRsPsh9i7ImBhkE/gkByXMM2qR5d9lMee31WutL0pt9xoA3HaHpMlqTNBZem5M1l/umIMGlxwBakjWwBn/tYkuMSGUPqzEH55DYge/Stk6kvugmIWFQyscXc/0bSllBMfd+jM7EE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718696363; c=relaxed/simple;
	bh=jdVRcmgZxHNhzzYy0VYsgOzt6DR5mC+I8b+5shKPc30=;
	h=To:Subject:From:Message-Id:Date; b=BPEHZio+Kj0/wizXxLSeR0KYH56R3NgRmgFPK7MjBMTqq+tieDhxHDhizBHHLLMa0BDbMOuJjPRcQBzaahnXqGaB4GySIxbERC5YJlJ18P9MwYZgLthKqxC/TGr/KFppesJdTbc0qnzmT4piVb9Sy1DX8uKZJomVl/sVJ5Hw+kg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vFKpceDx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vFKpceDx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D69F2C4AF49
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 07:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718696362;
	bh=jdVRcmgZxHNhzzYy0VYsgOzt6DR5mC+I8b+5shKPc30=;
	h=To:Subject:From:Date:From;
	b=vFKpceDxVKnKGiVFsMECRb8Sa7h+IfbvleiB0ZbXw/Z9fso8BFb7s0fkVRC2ogaaO
	 s6jV8ZRudob5p3r0wyTfx0QAoEgYymKBUDWITHNtVP3k7o4f5Pi0dr4TYi3ULMYd+x
	 S9tcquq6ebtdfqAddX5kDEAQxYoatsMTEQ7CM5EXXOI8g0CM1rUeV9Nu2sz5wI6tPX
	 u4wfY3Zuhk0ZFUpSC+2YRrHMnSlxfBdAurYbQrh6hKwmz+Jbd/BiJZgnYESNEThj+C
	 uSYEyK/vOTTO6W47bId5aQBifBnJATubYGnni/Dms6XzAmgZHKLWZTyy9xvzOAUpcw
	 JKpbHCi41xmeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF270C27C4F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 07:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171869636277.28428.8275548133750371935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e106fcc4265f1163f885d2c12fe129f733f23bc48083a4033d0804c16f99910
Date: Tue, 18 Jun 2024 07:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718696362
