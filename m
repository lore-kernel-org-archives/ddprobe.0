Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 398631FCFFC
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 00:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770683034; cv=none; b=R5pI6ueRwCBmC4LT9D+v7bP/xvl5+5XdHp5uwt3Faf7OBJHlqTsnD3lE6mI3TuiGm3rxIuD5cz1aQONrjJ1mGVB+MF3e5Y4rSv6voKcZ+1XI1Supop5gPfnLbpv80afZgJhNjkpoML4yGSUFiXIPg9TFwxMT83g14FiR+xDwmeM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770683034; c=relaxed/simple;
	bh=iR18g8jHaWOGYPg9zJeOQfREzsRM78YEs3NXUiehwRo=;
	h=To:Subject:From:Message-Id:Date; b=kmvaR6IObI0aZprwudyHCnK4uDFmt1kHYX8z1jt1vRaDx4TThtzTGuzFOkbcw4sK1ZnvoPjRtMy0yAmhQfWTIuK3VNiAWVgxYSfBYUm5/z8+ZrYVuAZpCBudC6w2Ibrd3aZ/TWSrmCAP0PSPHbTb+Wdg6dmbdFpOi2kZzNoF09g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r7bPfCnT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r7bPfCnT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B87F3C116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 00:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770683033;
	bh=iR18g8jHaWOGYPg9zJeOQfREzsRM78YEs3NXUiehwRo=;
	h=To:Subject:From:Date:From;
	b=r7bPfCnTVlndeMDCsTksO49ep6SEXDTI9X6OWwHF8FBpsneS9+ysSZE1jvfgFuufj
	 EHBWe+y/GcE5oCIoZF81CAFSl4oSxuXIqbRs+52uTv5FbmNEm9wcank1IyEwWVwpXd
	 igvkWlQZGZac9maWMTbXbgNjgm8VaALzlddoxqySj+3u6Oed/I9/QY84pJjZhPG+w/
	 GrZJijOUUHKV/pyfQSI1w9xg6XcP+OlWMUPk3ufA2iT8gLqpOmsNoKfaV64Z12/7vm
	 7FS5tv1GxJtsE1Jf7PqyMXvCJyCHmZIL1mYVbZ+8MYoIjPem5yjObYJsFW9ZdflHBp
	 5QFZPg6nMN6hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FDBDE94622
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 00:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177068303360.18268.18104754721987104443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ede88b4aefdf051d64d6b6a819db0b2dffa0cecc2f0baddffbcf18a5c10e36d6
Date: Tue, 10 Feb 2026 00:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770683033
