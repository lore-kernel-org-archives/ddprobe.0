Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4959C17BD9
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732976154; cv=none; b=rL1pfkHOLynx73tbTUXZjVGESqJwA4h2B8QYES0QO0oG3tL96hDSwBOMb9AC4vRF4sOH/+9guPi0ZtcxPOrRedz9ToPL4ECmpWk4FrEVaToPmWZ51J+x1ZV+GLNWFhoEMX+mDkXfLLNS1pa62TwEXOD9qXNZDSsYbxFG7OjXqw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732976154; c=relaxed/simple;
	bh=0T/Ou2AvaYOh5ORq96sqGfkW4v7mQU8Dei3oTl+r5/Y=;
	h=To:Subject:From:Message-Id:Date; b=PYrBnXoUrNZREkQg6+X8Pgiq+/1eNmFx6KQER89iGdLBcMc0jy00xS+Gk/8liAaqTChDDBBiblR0c+1CdjZeSRPqc5SeFweWHv7XezMeqZA7DBNY/fSmTh3seCA0eqHPlsEuC/I5wWk0P5ZDQlq7rTt5Dnw91OorJDawDvGqGLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kBdriwZR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kBdriwZR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA5C8C4CECC
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732976153;
	bh=0T/Ou2AvaYOh5ORq96sqGfkW4v7mQU8Dei3oTl+r5/Y=;
	h=To:Subject:From:Date:From;
	b=kBdriwZRnsdrsORLu+L511kqQ9x4pi/BvBtMYcOoLJhMwSxPFyd/GmJmbk+jt30Yh
	 cU4/anYXuZIi5f6ZM0rHyCnaBUk/0/UXl61aJ+WO3nDJnEFvRMoj/4pkoWBg9q1CAP
	 YyB+MnQL4I5fuKg2gfSz7NAdGwXlLGt0AIhnInIo1uJP3mxq3Ig2hxDmTcxqdJjQhz
	 XF6+/Ldl2TzIZ4ons2dL+tjWd624WObeAZr8h0oCc4lU42SSNAuSqJJpszbqMCMMcY
	 DJARwV9OdUjYSmUZfOzzjAC5BylX4b5DcdKiztS+aEeevTsyBD8BFZ8VmyAHGLCRmJ
	 cL/SV5wP17TNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1DFDD73606
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173297615363.27197.7830146563827854098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa456369f4d2f74605ffb2b2b7860da8c97aa1e4b1ed9e8e85f8246cdc10e8f9
Date: Sat, 30 Nov 2024 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732976153
