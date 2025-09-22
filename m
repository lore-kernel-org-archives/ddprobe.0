Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF5052FD1AB
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758544194; cv=none; b=M+N651E6b2k3ULM4auPBWKyQ5qihsJESLHg+qCEQprHG9/M3YS2QcCCKw6JJpNCeJwu7iQ3rNLii8lN1ZjziYCl1XoG1enQBy828FQLZuQTZKL66ik86l+mG416bZOucUN5i0EOmy5haLJJpo0yde39MNfawWn2bUQUQGVbyNV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758544194; c=relaxed/simple;
	bh=2KnCAPs0gLLptB4EEXtsiDfn3rkp3CcwIH/3Y37PgkY=;
	h=To:Subject:From:Message-Id:Date; b=ac7lhzKAv6bY9mzvWMtQeu/Vnva9pFiMurSC9+YbKDNqorkhbv/Xcrl321BxZ6ZqDax7+bpnLDXU3qw4QIk3q2N3uXfDMkfaB+mCpreocryb5sibNAlFwLp/vOO69ciD9kimqgBSpsQapsT5pevA8Pn8v8q0q6MSprLinswEICY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SGLwTHE2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SGLwTHE2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DECC113D0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758544193;
	bh=2KnCAPs0gLLptB4EEXtsiDfn3rkp3CcwIH/3Y37PgkY=;
	h=To:Subject:From:Date:From;
	b=SGLwTHE2r1emoGF8B2GJLHu2TGLJgXGuU1brWZTT0ZZygva6sb/suEx7nSSeteaY/
	 0Jg7GlZmiJ+u4lj6yZL9a+1gfxwia7WJHm63VsyWF03dPkcUUxhKiNTyu4lUc5oma6
	 K3ZJntu9no0GkoBgVN7l9uTEmpLdMrE11/HPLwqVgRC+hD/TMQZVBEyWi8p9RUFXCQ
	 jcOTnHnytuzlr89l75MWiiA+Qkmv7L70WnKRQ8vaKB1Pgz89oRhXmp2fKAEX3GOcwm
	 mcGMdzNn6axHacGhYKdlyBKUK2MZL0ORWTPSjwWyGRCkidakI0BBKe+drz2wlVSh9t
	 9IJvu9D8aphMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92991CAC5A7
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175854419358.27015.17698059782060423816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f1c33bb7b6e6a97ce3aa6bc7210bbadb0d13f7cc1158e01089d994aebf2fa6d
Date: Mon, 22 Sep 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758544193
