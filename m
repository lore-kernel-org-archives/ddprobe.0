Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59A6B1EF1D
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 13:05:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717333523; cv=none; b=H+1mInvCD0pMiwVdw/hE/apgNq1Eh7xjNKBqd87Yf+pvT8JebK2zu2YgwaJXsxbOEGjCawLqpkXUAdW3OuDIJaxBcyYrQJv32GCxAzzXZW5rVI7OxB8k5AECpWN3HtP0o1J/rlRx/2scTtAzNPHmS4NVVvDG+EBXtB1zNRI5HdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717333523; c=relaxed/simple;
	bh=0YpKpYF3O9QO6EAeR7QVntVO3sBNHBkxTWgIl2BzK7c=;
	h=To:Subject:From:Message-Id:Date; b=p8+iz1hy8/hJsfLAOATtzirr3RnAFmNJ8iE7v4soH10TQ7mmMrOPEBgZVTiio6DmhoX2AjaN2hd+26+R8e1q1LLvNgu0oktuF7GeWc0x2gdiAhgBh7ZUzVrBWsLmilZ69w+kMMbPy1f3zZpBoRk6Xao4VJIpm3QPEjh1J9/4+0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eByDgZX4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eByDgZX4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF9C0C2BBFC
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 13:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717333522;
	bh=0YpKpYF3O9QO6EAeR7QVntVO3sBNHBkxTWgIl2BzK7c=;
	h=To:Subject:From:Date:From;
	b=eByDgZX46WRrVq5jbJEHaJaUKbsJMxC5w8yF16KccboCph0RKVG++NaelDItiIF2E
	 y1h64wYt3+mMDhmhlzqSJysm+kPZVmhnJ7wYFeo01MLIBAqdxIDa+V4U+XkkHslfot
	 KOoq8VvRHZP8wuEdt9JGwIsamOIGYPcp/6izO1XUZPnjU8u3xF+C0bnBcdsqWZ9KVW
	 1Qm+jo/vCQJ3sFloSk90IwKmxGL7516LFRUsfhFEMjWKkx/fXn4ijylLcUYWDB0S48
	 ri+txQOUsu3J80MC609A+LW7jUwyyF9dT6NYjFq21QcnVsVmv+3QJJ+NJiacXOBbUW
	 APBAOygIQBDDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDA24C25B74
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 13:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171733352275.24138.5397598746755064157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60c1cd81048222cd67ca4730546e65266c1b86f99884193b5ea6a7073b28ca29
Date: Sun, 02 Jun 2024 13:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717333522
