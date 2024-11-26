Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D5CC539A
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 07:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732605954; cv=none; b=M7a4rWL/hIVsluGNyrnBKltmEzlK/Qrz5ENvCXd8HAIeIIBbU15Kncvp0cIAAUrNF072IfyWn6U0Rx0PooYaiTBc40Z1WNE/ewzhd3OZCHkhEnHe84ZAiDjFLLKPbUjacHYU/lvNSoIUXOufAvyj21oJZD9kmWH4f2wQsrVnR9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732605954; c=relaxed/simple;
	bh=E0IZwXLqtnQGnLC/Jdax+6qYAU2exDGX29tiaLTtRgQ=;
	h=To:Subject:From:Message-Id:Date; b=IViAbnPc8lQ+PVlY+VQ9jCHcLF59o0yZp3pOhnWf2i4GcuLvI2h7Pcz33LsoydnDo1sVtyg55Zk6+BNPwOj/URJtJdKKy29RJyAgA5ejkhyh7Vzm8Be3fw07IkvOPZbHKIiCr7udZ1IxuSCFnqN8w9PGvAyelKyml/CBVckk/NE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fXBF7r9P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fXBF7r9P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A26B6C4CECF
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 07:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732605953;
	bh=E0IZwXLqtnQGnLC/Jdax+6qYAU2exDGX29tiaLTtRgQ=;
	h=To:Subject:From:Date:From;
	b=fXBF7r9Pxg5KiA0KE/+eh/dlR8NHZLMauNRolXZMbyRfDsubJK2T9+D8NWMBJNePt
	 yDQnxdg9kDX71PUFSn8hYy5Z8NsLvs0ZZf+AfHULTz78xA6DbV+siuE2BO/8A8IM9t
	 ILnZocmMiwAaPrx7uL3QIrWGK+BDmK2bg1isoOLvTWWfSYRrCSdWw95Sa1dQh6RF+h
	 DR2rQmLAm3O4FvyVJVZDLQOX1J1lRBNv50us1OypYjc9KlZ5+nuTZP/Iu/LtMXdVB9
	 Tqtvib/2yXcmC1RFiANnbfcfD1GmgQmt2ipetrrED+Xc6AnLSuP7MDU1YW7HCr6iP7
	 1RieViIF1l4/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910B2D5A6EA
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 07:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173260595358.3653.10994418860388216614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7593ce6d30550a9a5dd0cbd6f6e2a62ecc4f072f5f123051b1fd88bc9af6992f
Date: Tue, 26 Nov 2024 07:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732605953
