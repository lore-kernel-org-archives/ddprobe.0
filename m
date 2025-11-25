Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C60E315ECD7
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 17:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764093173; cv=none; b=PkeTmeYLRGGUkGN3DWuFY8xX0KlXRrquh1I33uCvv+LIKiVE//g74XKI+eqjxur1JpNHrLKabWbi1VPPPkV41zYZbBrFnUEHyez7KQlFmsjO6IKl0eozxRPfCWjJdZyb3FDE0/9oZyVoGh5V0snkklxsf7cyXmYjalXEj/TsY0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764093173; c=relaxed/simple;
	bh=feaeHGKukVuXmHS5P+LROvqI+yhfW6/scVm40Qxw3hU=;
	h=To:Subject:From:Message-Id:Date; b=reaIZew6ix5GTxxzA5JP4Jci1mqwEdyYd3/44kWSwTC+Uc4Fq2QDAtRXEz5nkHT32nbSiNCzXRo/0iL608PNTLR3dLMeb1q5iU1XCICPywl/FyabX4uOQyHa9kb1Q/cRViCfmpX4t8h6SSZtZv21/ZwDYQzQ8fX0QXea+5YzmMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=STGG4+D6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="STGG4+D6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BF1C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 17:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764093173;
	bh=feaeHGKukVuXmHS5P+LROvqI+yhfW6/scVm40Qxw3hU=;
	h=To:Subject:From:Date:From;
	b=STGG4+D6INlCwHCscxynRkD0pvwFSjYGqSpFyXaVnBWPMtFAaJQ3eZWq9xtnpGPcT
	 4cZPcoFlOIVRQtShvQiX6mWz2o/Isou9GnOaEADvQQtNEBYVvuIQVFAZmyjgJ7f0CD
	 k+fZ013tmsn62oXpI8k/lht0ZmouecthklTdxPF3RoO1CNSB3cc0OLOGBbh8LK5vZH
	 JmwrSXS7cNXT29GlFVJ7DAoseD8F3NnuGuDHpBDkuyEIZmRK5i0hIrgJUu0K8afXUJ
	 Hd40CGZMbVkjYsjcin1EtDFPIYBzdFaRUsa+oOImU1dE10mI+0AD5hTV22KXjj+cl+
	 Eb0bVrq40SoiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CA6D0EE00
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 17:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176409317358.28165.6380246055160342436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3c820caf19ee4cc208c8af92a37e7595a4ba423d658997cfd4c4fd5aadcb368
Date: Tue, 25 Nov 2025 17:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764093173
