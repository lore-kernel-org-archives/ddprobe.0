Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 321469449
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721471754; cv=none; b=SnfUv3WFcEzecswJiosZrxF0dNQyEIC6n4my4FA69Q37UeecSOcI73kd1wcHkYT3pNA2Qamti6jEKRTdw03tOo8PZ1aezy0wcbS5f2K8crs+8HtL2122kFJDE5OsCHiwdt7bOPdMUY7a/Mg7FDIf6p+MMEjMBHqCChhd3Sq9CUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721471754; c=relaxed/simple;
	bh=+ZrBPdcdrHLtvzU78EBdv8Kih54LTlr4prtgWkNShtA=;
	h=To:Subject:From:Message-Id:Date; b=rDO9/CAE1E0vvmogt5tgY41DFpJrxIb1BOyJOUTSFk9w+rl1TFq0MATW+yWrYKgGVPb+/NqQCC0SqowXkTAHZ0mmDUcHcEjpwIzOoHymKrIyt7CnwYq3lFG6MJUFfuLmBU5nsiK/Y1uYTRaXuZCdFoCgecFPNdDZGuSpQ/1m7wc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DHY3kQf5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DHY3kQf5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C22B3C2BD10
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721471753;
	bh=+ZrBPdcdrHLtvzU78EBdv8Kih54LTlr4prtgWkNShtA=;
	h=To:Subject:From:Date:From;
	b=DHY3kQf5z2gOqMEcj533UvY3NHBaIDk9AUM3I/uUhrpqjEVlVhls83VnaVKXToCqy
	 r7Ikx99cy6th3Loxj92abSyoRMnHmpClbPiwYfnt8DuMkFDZEyRTgTiCTzpa4E6oge
	 4QDUXQfpa4VI1/9zpuCtHHxyZUmiQtvRjqbT8MAnbK2x4I7HjiT6qOU3snR2lyKkV2
	 LejfEK0iMw0bKqyLA8Yo9y7UcehW1kjp027i13I+tJcQTfBhLPscUSWAnsdsT1ct/z
	 gOV8PYB6xBcrA4/wJZ/lvTP0WNsw4B33z2kuqdyhPtLCOtqXIfC8eeBZJMGGRrZX9V
	 9h4jHVSfhRJww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AABA5C3DA49
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172147175368.4546.13367291010169102164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa4ca6dc5343a614d35c16f52f99df22d209936b1834c12e674189c37a5c2a40
Date: Sat, 20 Jul 2024 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721471753
