Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB4FE46522
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 15:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717948645; cv=none; b=rbVWK4yl3WO1uIfncl2EeavQCvmcXNCzD0w2mTE5Y40Hu0q4csBbkBJIlrQ5Tcr/1mcH4IhtrvdgKFivXLwsV3seQutdiFjh8/DmPTnJW4t5gWJVKdlFbqvdjCn3NCnLF3rCVyAVS2F6ciMlh6y+qjSE1PPJ99Ngr49JmQSxTmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717948645; c=relaxed/simple;
	bh=bpPC1f/LSrVwFgb9d9FIFkOwGw0D/sUejq+KlLJmBfo=;
	h=To:Subject:From:Message-Id:Date; b=C2hxxCVueeC9W5RYQrYiAG0HTghaP4MGgp0M1fBb74BBV+t7op1apaTjU4sW15PwQD2iTbsfLRwVZgRtoaMmC1JhpAgK5WoMtZFXwWJMse2id2x60WL8wM7lpTu2B9gbKb5e1FNUcnaWLmKfzYumwk5XEK5qvTEOkNHVszHs2bw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hkLXZ9LI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hkLXZ9LI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1DFAC2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 15:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717948642;
	bh=bpPC1f/LSrVwFgb9d9FIFkOwGw0D/sUejq+KlLJmBfo=;
	h=To:Subject:From:Date:From;
	b=hkLXZ9LIvfRvZU2XWn9/DQ4c5LVYU3kM7TXnXJQvIvm2kqCZAcF+wBylc4fggLyk+
	 NEsSwHPkTlOEjZyZSzmwXCEw0Q6y+JaDhoAwrtWK3Drx0ZGuyIGyW7e3EUJVX9hDoX
	 OEjjksh1L/jpdbGx9yOF5BvX59xZq0Yj2I1eGRpgeaW+X3LCkIUfHYOY4EWVYE9KO4
	 6H4LPj90RENa52mRCmzSsdBokQuMtsVqEh6smv+T3r4XOl4eocryrLoY6zni7D53E9
	 HuvWyl9g02dJDcuy3UtkhD2ibJYDUnEazF2OYaCylru9Etap+FbPgh+bUc2csCP2OT
	 5aYx9bPvOkxkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAC55C27C55
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 15:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171794864280.12409.2032867311070261613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53642dfe3060f526c67cd4ecb881300129b2901c1ff06725ea28bfbc1818f0aa
Date: Sun, 09 Jun 2024 15:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717948642
