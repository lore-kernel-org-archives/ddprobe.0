Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 941F1352C34
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 02:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779847354; cv=none; b=RUF7xNv1I9N1EnjwDH2qrKkQM7kIA+/AJTfuK/FCXECAZjn0QNZfJXLMm2QDrSkgIdULPb6DPxbtAwGxNkbeYKo6CO7CNGUAWg5LR/8xqJLHoQ/t+OQprbkvO/0S0MzPMzmClLNq6J1kEBVKsJZtPIyFY4TxBX3EFUwJMOCdTF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779847354; c=relaxed/simple;
	bh=UFa0a4CwK9KkBg/uH00ADU2MUweKwd+4wE8XESx6AoU=;
	h=To:Subject:From:Message-Id:Date; b=J91YDWwRRW4qL34IvCWiqJY9pp+ndYL6Eza1L8YKpK+qZCzf+RVcBNb2idA+pQjwTG8vjWP7Ue6Rtp5aCUnrNmP3uYAA4ASELqrbZst2ZdVQyzH4NQA5E7dLoNwf8mTYwaRnu4BmqKYmch2HrCziIm55OudDBT+zRX87wROmWB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R1rwEL3W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R1rwEL3W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD90DC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 02:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779847353;
	bh=UFa0a4CwK9KkBg/uH00ADU2MUweKwd+4wE8XESx6AoU=;
	h=To:Subject:From:Date:From;
	b=R1rwEL3W75r2Verjp4tvG/K2V0H/nD1hTSIwGumgQh57MVpyECV11QL6bcXLSbqu4
	 LKlInfcCGodg/Fj4VoG3S6l8Ro5LOFv3ffZ+WJq2Bv4q5O+ZX1zWgQJIPPiXiqf2Jo
	 Z2U2wiAc7UA4wXGQhZB4VWt0PRWqxXO33iJv3sruQhRDd2KJhWIyQD+2KPjTUnllhz
	 r+SCrZJLBLiW3QD3JpdyuGLlixgqC8mMOD+oy/C49q9vN7Yd2mooUuRm51VWmH2g7P
	 AFQTPLJG/vOWHQ3wg/yAnvuemiI/dmYPUxRhcSJMzJuD1pp/c0mOQZObG9QcOgQOiN
	 ud2pJ7t6BcI+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B02C7CD5BD2
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 02:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177984735371.6437.10055158375177259169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 185a3c994711fcfa7b2f8f858f5db6e1e956ce62db2eeb47cdf2c94e6a5e375a
Date: Wed, 27 May 2026 02:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779847353
