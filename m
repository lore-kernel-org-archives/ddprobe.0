Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2012B8287E
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 16:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765125774; cv=none; b=c2wUuL+0iyCyxBAIJQvELzg6ZX4ROJENArLb/oSUgfbl8+3ZBoijq4mUsWbrlIjLUX9ns6Q2ANubBSnmFpe7av7tVY6P2Z9TNIzcK54RZUgEuNnmsnvhLVlbQB8UxAKsTSoLyW0b2h5jFIMcSFgyg1G4ITb2+6o69orWiRfhcC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765125774; c=relaxed/simple;
	bh=CTM5l4V4yx8ybj67bNGGkoRvwnt/0Nx5nROsPRQ1jfk=;
	h=To:Subject:From:Message-Id:Date; b=I407hwV71fKlxFT1prmrvkU5iEcyGm1fN0KxqKU5KDSFi+mdoZ5TkTbFIixygXR2c3CbAUM5B/nUAf1vtEQWHY83uq2nM8vzxsoPfocKWP2KlDNeF7SOGgbv7JKEcDuqAmQuF4ohbtgbFTL7YYGPSgYvkJt2TAsz0KN3VxY5lcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sjdh8kSw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sjdh8kSw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9A4FC4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 16:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765125773;
	bh=CTM5l4V4yx8ybj67bNGGkoRvwnt/0Nx5nROsPRQ1jfk=;
	h=To:Subject:From:Date:From;
	b=Sjdh8kSwvReqysdBm3QJw4NUA4gX7Ojdu/ppDAj0Cfk3QkslBcnPKznl8jcPx8vtx
	 aClDAWkaIo/1Buzt44phe9DNZBoUT2EkqS2+eigvH5n8oOf+CJwiVF19kwIUJT1eYi
	 1OnWi3rhZPV3aPQbF8foyygEgsJ1JfCQYzpgsCFst0wVNqBi0NqDJ6G63WAmlExoR8
	 DrrsafckMMP1tJ+t883vXW+SbYLX6LqaO+uN/dsbPEZgioSz5c0BByd2luFPq0Bn+i
	 Aqsmrate3LVdWoZeVwyNCQszPusm0g2JXNy7WBeVf+xNauRB0/IdimI0omSUJenZbp
	 BG2ug/UOE6nCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 977A5D1CDC6
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 16:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176512577358.12595.10779117141624014629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35e0a0249309805e1950d221d954f178be876ad284fbceb4142f97ed0b3d20e2
Date: Sun, 07 Dec 2025 16:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765125773
