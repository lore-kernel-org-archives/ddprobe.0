Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 397FA442C
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744220394; cv=none; b=NcqIqdCnsuBcUkH3CKMGotDACtsfHhsQvXGCF8eWwRGMmfriZzdJfs3HUenGuPVrdNU2UfKas5fCCM0byzlaJhnEAGUyGRA1rtfrmVy9VlPIuMW3a27OtDWZlu49F2k3SVNknwYbl2xH0Xx1BJArDWFLz6hFzHd6Dup7j/0wjio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744220394; c=relaxed/simple;
	bh=FSen/p+LI1/J9xMV71kOBmbCVZh9NX3yDdLwems/KBY=;
	h=To:Subject:From:Message-Id:Date; b=uZMAKcMFP3YS8YLIFnoD6st2nODxBFC2FxfKSZEy+wHoVw+EFvg6HcAst3J1Yx5p1cfPRuL30sbh98GszVc59Nz9m9R5JRhVJRxyMSU1TTYNFOYn9HkWR9wum3QKOWq9DaxgebA0w/k9RZRZDIK2CCIKzJWHwYacBRgSptaKSlg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E3QUdDBL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E3QUdDBL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC7B5C4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744220393;
	bh=FSen/p+LI1/J9xMV71kOBmbCVZh9NX3yDdLwems/KBY=;
	h=To:Subject:From:Date:From;
	b=E3QUdDBLvvtKAg2/8JEZ5JDk4psS4gkP9uiLSJSghbru7Bz1QIeCVHT9/U+N5MxA0
	 XKzFgepCuRVH29b6uldGrBD4HJ2G0O1dTSA3OeLMoPsBsOg6C6nbY2qibem6VFUHHp
	 XEpuNdwTvI6ovIDOIHd43Cc6tvZWI/4VHPmZuwRFjSC9ncW7NsthPeTA7hm/jyrUgu
	 hArjW7P48UxQHZBucz5+VFHwn5TnGg92AufQgfBrTP84Mjh47LgtPuMi1BiQYoVIVH
	 hvlF5D73PmtKK8wFJPTUrPyaKVtKqu3oj4nZYq2TKTcaZ/IE5DQ3isrPDMxK3xiWrp
	 STQpHsuRYrK9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DC7C36002
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174422039359.31093.10489012448085347379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebd81d80e5569e32568367fda7f04be313230e5f1063a80bc6aeddf43e2902f6
Date: Wed, 09 Apr 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744220393
